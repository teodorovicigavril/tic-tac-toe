class Room{
    constructor(roomId, numberOfRounds, currentRound, players, isJoin, turn) {
        this.roomId=roomId;
        this.occupancy=2;
        this.numberOfRounds=numberOfRounds;
        this.currentRound=currentRound;
        this.players=players;
        this.isJoin=isJoin;
        this.turn=turn;
        this.playerOnePoints=0;
        this.playerTwoPoints=0;
    }
}

module.exports=Room;