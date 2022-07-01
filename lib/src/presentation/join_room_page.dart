import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/resources/socket_methods.dart';
import 'package:tic_tac_toe/src/responsive/responsive.dart';

class JoinRoomPage extends StatefulWidget {
  const JoinRoomPage({Key? key}) : super(key: key);

  @override
  State<JoinRoomPage> createState() => _JoinRoomPageState();
}

class _JoinRoomPageState extends State<JoinRoomPage> {
  final TextEditingController _gameId = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  void _onNext(BuildContext context, AppUser user, String roomId) {
    if (!Form.of(context)!.validate()) {
      return;
    }
    _socketMethods.joinRoom(user, roomId);
  }

  @override
  void initState() {
    super.initState();
    _socketMethods
      ..joinRoomSuccessListener(context)
      ..errorOccurredListener(context)
      ..updatePlayersStateListener(context);
  }

  @override
  void dispose() {
    super.dispose();
    _socketMethods
      ..stopJoinRoomSuccessListener()
      ..stopErrorOccurredListener()
      ..stopUpdatePlayersStateListener();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        child: Responsive(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: UserContainer(
              builder: (BuildContext context, AppUser? user) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Join Room',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 40,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.04,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        autofocus: true,
                        decoration: const InputDecoration(
                          fillColor: Color.fromRGBO(16, 13, 34, 1),
                          filled: true,
                          hintText: 'Enter game ID',
                          errorStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        controller: _gameId,
                        textInputAction: TextInputAction.done,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter game ID!';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          _onNext(context, user!, _gameId.text);
                        },
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.04,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Builder(
                        builder: (BuildContext context) {
                          return ElevatedButton(
                            onPressed: () => _onNext(context, user!, _gameId.text),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                MediaQuery.of(context).size.width,
                                50,
                              ),
                            ),
                            child: const Text(
                              'Join',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
