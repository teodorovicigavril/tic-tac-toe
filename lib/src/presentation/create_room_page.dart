import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/responsive/responsive.dart';

class CreateRoomPage extends StatefulWidget {
  const CreateRoomPage({Key? key}) : super(key: key);

  @override
  State<CreateRoomPage> createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  final TextEditingController _name = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _name.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
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
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: const InputDecoration(
                    fillColor: Color.fromRGBO(16, 13, 34, 1),
                    filled: true,
                    hintText: 'email@email.com',
                    errorStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  controller: _name,
                  textInputAction: TextInputAction.next,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email!';
                    }
                    return null;
                  },
                  onFieldSubmitted: (String value) {
                    // FocusScope.of(context).requestFocus(_passwordNode);
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
                child: ElevatedButton(
                  onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
