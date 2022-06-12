import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/responsive/responsive.dart';

class WaitingLobby extends StatefulWidget {
  const WaitingLobby({Key? key}) : super(key: key);

  @override
  State<WaitingLobby> createState() => _WaitingLobbyState();
}

class _WaitingLobbyState extends State<WaitingLobby> {
  late TextEditingController _roomIDController;

  @override
  void initState() {
    super.initState();
    _roomIDController = TextEditingController(
      text: StoreProvider.of<AppState>(context, listen: false).state.room['roomId'] as String,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                JumpingText(
                  'Waiting for player to join...',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 40,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .06),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .1, right: MediaQuery.of(context).size.width * .1),
                  child: const Text(
                    'Below is the room ID.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .1,
                      right: MediaQuery.of(context).size.width * .1,
                      bottom: MediaQuery.of(context).size.height * .02),
                  child: const Text(
                    'Share it with a friend and enjoy!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
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
                    controller: _roomIDController,
                    readOnly: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: const Color.fromRGBO(16, 13, 34, 1),
                      filled: true,
                      suffixIcon: IconButton(
                        color: Colors.blue,
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: _roomIDController.text));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.blueAccent.withOpacity(0.4),
                              content: const Text(
                                'Room ID copied to Clipboard!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              duration: const Duration(seconds: 3),
                            ),
                          );
                        },
                        icon: const Icon(Icons.copy),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
