'use strict';

const express = require('express');
const http = require('http');
const crypto = require('crypto');
const config = require('./config');

const app = express();

const server = http.createServer(app);
const Room = require('./models/room');
const io = require('socket.io')(server);

const firebase = require('./db');
const firestore = firebase.firestore();

app.use(express.json());

io.on('connection', (socket) => {
    console.log('connected!');
    socket.on('createRoom', async ({user, numberOfRounds, playerOrder}) => {
        try {
            let turn;
            if (playerOrder === 'you first') {
                turn = 1;
            } else if (playerOrder === 'opponent first') {
                turn = 2;
            } else {
                turn = Math.floor(Math.random() * 2) + 1;
            }

            let room = new Room();
            const roomId = crypto.randomBytes(3).toString('hex').toUpperCase();
            room.roomId = roomId;
            room.numberOfRounds = numberOfRounds;
            room.currentRound = 1;
            room.players = [user];
            room.isJoin = true;
            room.turn = turn;

            await firestore.collection('rooms').doc(`${room.roomId}`).set(JSON.parse(JSON.stringify(room)));
            console.log('Room created successfully');

            socket.join(roomId);

            io.to(roomId).emit('createRoomSuccess', room);
        } catch (e) {
            console.log(e.message);
        }
    });

    socket.on('joinRoom', async ({user, roomId}) => {
        try {
            // if (!roomId.match(/^[0-9a-fA-F]{24}$/)) {
            //     socket.emit('errorOccurred', 'Please enter a valid room ID!');
            //     return;
            // }
            let doc = await firestore.collection('rooms').doc(`${roomId}`).get();
            let room = new Room(
                doc.id,
                doc.data().currentRound,
                doc.data().numberOfRounds,
                doc.data().players,
                doc.data().isJoin,
                doc.data().turn,
            );

            if (room.isJoin) {
                socket.join(roomId);
                room.players.push(user);
                room.isJoin = false;

                await firestore.collection('rooms').doc(`${room.roomId}`).set(JSON.parse(JSON.stringify(room)));
                console.log('User added to room!');

                io.to(roomId).emit('joinRoomSuccess', room);
                io.to(roomId).emit('updatePlayers', room.players);
                io.to(roomId).emit('updateRoom', room);
            } else {
                socket.emit('errorOccurred', 'The game is in progress, try again later!');
            }
        } catch (error) {
            console.log(error.message);
        }
    });

    socket.on('tap', async ({index, roomId, pieceOwner, pieceSize}) => {
        try {
            let doc = await firestore.collection('rooms').doc(`${roomId}`).get();
            let room = new Room(
                doc.id,
                doc.data().currentRound,
                doc.data().numberOfRounds,
                doc.data().players,
                doc.data().isJoin,
                doc.data().turn,
            );

            if (room.turn === 1) {
                room.turn = 2;
            } else {
                room.turn = 1;
            }

            await firestore.collection("rooms").doc(`${roomId}`).update(
                {"turn": room.turn});

            io.to(roomId).emit('tapped', {
                index,
                room,
                pieceOwner,
                pieceSize,
            });

        } catch (error) {
            console.log(error.message);
        }
    });

    socket.on('readyForNextRound', async({user, roomId}) => {
        try {
            let doc = await firestore.collection('rooms').doc(`${roomId}`).get();
            let room = new Room(
                doc.id,
                doc.data().currentRound,
                doc.data().numberOfRounds,
                doc.data().players,
                doc.data().isJoin,
                doc.data().turn,
            );

            io.to(roomId).emit('setReadyForUser', {
                user,
                room,
            });
        } catch (error) {
            console.log(error.message);
        }
    });
});


server.listen(parseInt(config.port), '0.0.0.0', () => {
    console.log(
        `Server is listening on port: ${config.port}`
    );
});