import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/containers/room_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoomContainer(
      builder: (BuildContext context, Map<String, dynamic> room) {
        final List<dynamic> dynamicPlayers = room['players'] as List<dynamic>;
        final List<AppUser> players = dynamicPlayers.map<AppUser>((final dynamic user) => AppUser.fromJson(user as Map<String, dynamic>)).toList();
        final AppUser playerOne = players[0];
        print('playerONEE: $playerOne');
        final AppUser playerTwo = players[1];
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    playerOne.username,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${room['playerOnePoints']}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    playerTwo.username,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${room['playerTwoPoints']}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
