import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final FocusNode _passwordNode = FocusNode();

  String _errorText = '';

  void _onNext(BuildContext context) {
    if (!Form.of(context)!.validate()) {
      return;
    }
    StoreProvider.of<AppState>(context)
        .dispatch(Login(email: _email.text, password: _password.text, onResult: _onResult));
  }

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;

      if (error is FirebaseAuthException) {
        if (error.code == 'user-not-found') {
          _errorText = "This account doesn't exists!";
        } else {
          _errorText = error.message!;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16, top: 48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Log In',
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
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      _errorText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 40,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     const Text('Login with: '),
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width * 0.05,
                    //     ),
                    //     IconButton(
                    //       onPressed: () {
                    //         StoreProvider.of<AppState>(context).dispatch(const LoginWithGoogleStart());
                    //       },
                    //       icon: const Icon(Icons.facebook),
                    //     ),
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width * 0.05,
                    //     ),
                    //     IconButton(
                    //       onPressed: () {},
                    //       icon: const Icon(Icons.facebook),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
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
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                          fillColor: Color.fromRGBO(16, 13, 34, 1),
                          filled: true,
                          hintText: 'email@email.com',
                          errorStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        controller: _email,
                        textInputAction: TextInputAction.next,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email!';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context).requestFocus(_passwordNode);
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
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
                        controller: _password,
                        focusNode: _passwordNode,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.key,
                            color: Colors.blue,
                          ),
                          fillColor: Color.fromRGBO(16, 13, 34, 1),
                          filled: true,
                          hintText: 'password',
                          errorStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password!';
                          }

                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          _onNext(context);
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () => _onNext(context),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                MediaQuery.of(context).size.width * 0.35,
                                50,
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/signUp');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                MediaQuery.of(context).size.width * 0.35,
                                50,
                              ),
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
