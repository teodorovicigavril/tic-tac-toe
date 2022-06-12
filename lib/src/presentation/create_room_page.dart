import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/number_of_rounds_container.dart';
import 'package:tic_tac_toe/src/containers/player_order_for_online_container.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/resources/socket_methods.dart';
import 'package:tic_tac_toe/src/responsive/responsive.dart';

class CreateRoomPage extends StatefulWidget {
  const CreateRoomPage({Key? key}) : super(key: key);

  @override
  State<CreateRoomPage> createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods.createRoomSuccessListener(context);
    StoreProvider.of<AppState>(context, listen: false).dispatch(const SetNumberOfRounds(1));
    StoreProvider.of<AppState>(context, listen: false).dispatch(const SetPlayerOrderForOnline('you first'));
  }

  @override
  void dispose() {
    super.dispose();
    _socketMethods.stopCreateRoomSuccesListener();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Responsive(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(
                top: 56,
                left: 32,
                right: 32,
              ),
              child: UserContainer(
                builder: (BuildContext context, AppUser? user) {
                  return NumberOfRoundsContainer(
                    builder: (BuildContext context, int numberOfRounds) {
                      return PlayerOrderForOnlineContainer(
                        builder: (BuildContext context, String playerOrder) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Create Room',
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
                                height: _size.height * 0.08,
                              ),
                              const Center(
                                child: Text(
                                  'Choose number of rounds',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 40,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: _size.height * 0.02,
                              ),
                              RadioListTile<int?>(
                                activeColor: Colors.blue,
                                title: const Text(
                                  '1 round',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 10,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                value: 1,
                                groupValue: numberOfRounds,
                                onChanged: (int? value) {
                                  setState(() {
                                    StoreProvider.of<AppState>(context).dispatch(SetNumberOfRounds(value!));
                                  });
                                },
                              ),
                              RadioListTile<int?>(
                                activeColor: Colors.blue,
                                title: const Text(
                                  '3 rounds',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 10,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                value: 3,
                                groupValue: numberOfRounds,
                                onChanged: (int? value) {
                                  setState(() {
                                    StoreProvider.of<AppState>(context).dispatch(SetNumberOfRounds(value!));
                                  });
                                },
                              ),
                              RadioListTile<int?>(
                                activeColor: Colors.blue,
                                title: const Text(
                                  '5 rounds',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 10,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                value: 5,
                                groupValue: numberOfRounds,
                                onChanged: (int? value) {
                                  setState(() {
                                    StoreProvider.of<AppState>(context).dispatch(SetNumberOfRounds(value!));
                                  });
                                },
                              ),
                              SizedBox(
                                height: _size.height * 0.08,
                              ),
                              const Center(
                                child: Text(
                                  'Choose player order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 40,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: _size.height * 0.02,
                              ),
                              RadioListTile<String?>(
                                activeColor: Colors.blue,
                                title: const Text(
                                  'you first',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 10,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                value: 'you first',
                                groupValue: playerOrder,
                                onChanged: (String? value) {
                                  setState(() {
                                    StoreProvider.of<AppState>(context).dispatch(SetPlayerOrderForOnline(value!));
                                  });
                                },
                              ),
                              RadioListTile<String?>(
                                activeColor: Colors.blue,
                                title: const Text(
                                  'random order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 10,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                value: 'random order',
                                groupValue: playerOrder,
                                onChanged: (String? value) {
                                  setState(() {
                                    StoreProvider.of<AppState>(context).dispatch(SetPlayerOrderForOnline(value!));
                                  });
                                },
                              ),
                              RadioListTile<String?>(
                                activeColor: Colors.blue,
                                title: const Text(
                                  'opponent first',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 10,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                value: 'opponent first',
                                groupValue: playerOrder,
                                onChanged: (String? value) {
                                  setState(() {
                                    StoreProvider.of<AppState>(context).dispatch(SetPlayerOrderForOnline(value!));
                                  });
                                },
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
                                child: ElevatedButton(
                                  onPressed: () => _socketMethods.createRoom(user!, numberOfRounds, playerOrder),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(
                                      MediaQuery.of(context).size.width,
                                      50,
                                    ),
                                  ),
                                  child: const Text(
                                    'Create',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: _size.height * 0.06,
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
