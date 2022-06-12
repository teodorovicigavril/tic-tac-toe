import 'dart:math';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/actions/index.dart';
import 'package:tic_tac_toe/src/containers/profile_photos_container.dart';
import 'package:tic_tac_toe/src/containers/selected_profile_photo_container.dart';
import 'package:tic_tac_toe/src/containers/user_container.dart';
import 'package:tic_tac_toe/src/models/index.dart';
import 'package:tic_tac_toe/src/responsive/responsive.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late Store<AppState> _store;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _confirmPasswordNode = FocusNode();
  final FocusNode _usernameNode = FocusNode();

  String _errorText = '';

  void _onNext(BuildContext context) {
    if (!Form.of(context)!.validate()) {
      return;
    }

    _store.dispatch(
      CreateUser(
        email: _email.text,
        password: _password.text,
        username: _username.text,
        photoUrl: _store.state.photoUrls[_store.state.selectedProfilePhoto],
        onResult: _onResult,
      ),
    );
  }

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;

      if (error is FirebaseAuthException) {
        if (error.code == 'email-already-in-use') {
          _errorText = 'The email address is already in use by another account!';
        }
      } else {
        _errorText = error.toString();
      }
    }

    if (action is CreateUserSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
    }
  }

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false)
      ..dispatch(const GetProfilePhotos(alreadyLoggedIn: false))
      ..dispatch(const SetProfilePhoto(0));
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = min(600, MediaQuery.of(context).size.width);
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Responsive(
          child: Form(
            child: ProfilePhotosContainer(
              builder: (BuildContext context, List<String> photoUrls) {
                return UserContainer(
                  builder: (BuildContext context, AppUser? user) {
                    return SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.only(left: 16, right: 16, top: 48),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Sign Up',
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
                            SizedBox(height: height * 0.04),
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
                            SizedBox(height: height * 0.04),
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
                                  } else if (!EmailValidator.validate(value)) {
                                    return 'Please enter a valid email address!';
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context).requestFocus(_passwordNode);
                                },
                              ),
                            ),
                            SizedBox(height: height * 0.04),
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
                                textInputAction: TextInputAction.next,
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
                                  if (!value.contains(RegExp('[A-Z]'))) {
                                    return 'Password should contains at least one UpperCase letter!';
                                  }
                                  if (!value.contains(RegExp('[0-9]'))) {
                                    return 'Password should contains at least one digit!';
                                  }
                                  if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                                    return 'Password should contains at least one special character!';
                                  }
                                  if (value.length < 6) {
                                    return 'Password should contains at least 6 characters!';
                                  }

                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context).requestFocus(_confirmPasswordNode);
                                },
                              ),
                            ),
                            SizedBox(height: height * 0.04),
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
                                controller: _confirmPassword,
                                focusNode: _confirmPasswordNode,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.key,
                                    color: Colors.blue,
                                  ),
                                  fillColor: Color.fromRGBO(16, 13, 34, 1),
                                  filled: true,
                                  hintText: 'confirm password',
                                  errorStyle: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password!';
                                  }
                                  if (!value.contains(RegExp('[A-Z]'))) {
                                    return 'Password should contains at least one UpperCase letter!';
                                  }
                                  if (!value.contains(RegExp('[0-9]'))) {
                                    return 'Password should contains at least one digit!';
                                  }
                                  if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                                    return 'Password should contains at least one special character!';
                                  }
                                  if (value.length < 6) {
                                    return 'Password should contains at least 6 characters!';
                                  }
                                  if (value != _password.text) {
                                    return 'Password not matching!';
                                  }

                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context).requestFocus(_usernameNode);
                                },
                              ),
                            ),
                            SizedBox(height: height * 0.04),
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
                                controller: _username,
                                focusNode: _usernameNode,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.done,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  fillColor: Color.fromRGBO(16, 13, 34, 1),
                                  filled: true,
                                  hintText: 'username',
                                  errorStyle: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a username!';
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            const Text(
                              'Choose your avatar',
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
                            SizedBox(height: height * 0.02),
                            SelectedProfilePhotosContainer(
                              builder: (BuildContext context, int selectedProfilePhoto) {
                                if (photoUrls.isEmpty) {
                                  return const SizedBox();
                                }
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      height: 180,
                                      decoration: const BoxDecoration(
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Image.network(photoUrls[selectedProfilePhoto]),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: width * .3, right: width * .3, top: 16),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            IconButton(
                                              onPressed: () {
                                                if (selectedProfilePhoto != 0) {
                                                  _store.dispatch(SetProfilePhoto(selectedProfilePhoto - 1));
                                                } else {
                                                  _store.dispatch(SetProfilePhoto(photoUrls.length - 1));
                                                }
                                              },
                                              icon: const Icon(
                                                Icons.arrow_left,
                                                color: Colors.blue,
                                                size: 32,
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                if (selectedProfilePhoto != photoUrls.length - 1) {
                                                  _store.dispatch(SetProfilePhoto(selectedProfilePhoto + 1));
                                                } else {
                                                  _store.dispatch(const SetProfilePhoto(0));
                                                }
                                              },
                                              icon: const Icon(
                                                Icons.arrow_right,
                                                color: Colors.blue,
                                                size: 32,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            SizedBox(height: height * 0.04),
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
                                      minimumSize: Size(width * 0.35, 50),
                                    ),
                                    child: const Text(
                                      'Sign Up',
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
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(width * 0.35, 50),
                                    ),
                                    child: const Text(
                                      'Log In',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.04),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
