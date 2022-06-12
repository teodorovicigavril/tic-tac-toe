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

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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

    if (_email.text.isEmpty &&
        _password.text.isEmpty &&
        _username.text.isEmpty &&
        _store.state.photoUrls[_store.state.selectedProfilePhoto] == _store.state.user!.photoUrl) {
      _errorText = 'Nothing to update!';
    } else {
      _store.dispatch(
        UpdateProfile(
          email: _email.text,
          password: _password.text,
          username: _username.text,
          photoUrl: _store.state.photoUrls[_store.state.selectedProfilePhoto],
          onResult: _onResult,
        ),
      );
    }
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

    if (action is UpdateProfileSuccessful) {
      Navigator.pop(context);
      Navigator.pop(context);

      final SnackBar snackBar = SnackBar(
        backgroundColor: Colors.blueAccent.withOpacity(0.4),
        content: const Text(
          'Account Updated Successfully!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        duration: const Duration(seconds: 3),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(SetProfilePhoto(_store.state.photoUrls.indexOf(_store.state.user!.photoUrl)));
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = min(600, MediaQuery.of(context).size.width);
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Responsive(
          child: SingleChildScrollView(
            child: Form(
              child: UserContainer(
                builder: (BuildContext context, AppUser? user) {
                  return ProfilePhotosContainer(
                    builder: (BuildContext context, List<String> photoUrls) {
                      return Container(
                        margin: const EdgeInsets.only(left: 16, right: 16, top: 48),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              'Please enter the fields you want to update!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                shadows: <Shadow>[
                                  Shadow(
                                    blurRadius: 40,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
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
                            SizedBox(
                              height: height * .04,
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
                                decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.blue,
                                  ),
                                  fillColor: const Color.fromRGBO(16, 13, 34, 1),
                                  filled: true,
                                  hintText: 'email: ${user!.email}',
                                  errorStyle: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                controller: _email,
                                textInputAction: TextInputAction.next,
                                validator: (String? value) {
                                  if (value != null && value.isNotEmpty) {
                                    if (!EmailValidator.validate(value)) {
                                      return 'Please enter a valid email address!';
                                    }
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context).requestFocus(_passwordNode);
                                },
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
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
                                  if (value != null && value.isNotEmpty) {
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
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context).requestFocus(_confirmPasswordNode);
                                },
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
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
                                  if (value != null && value.isNotEmpty) {
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
                                  }

                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context).requestFocus(_usernameNode);
                                },
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
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
                                controller: _username,
                                focusNode: _usernameNode,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  fillColor: const Color.fromRGBO(16, 13, 34, 1),
                                  filled: true,
                                  hintText: 'username: ${user.username}',
                                  errorStyle: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                onFieldSubmitted: (String value) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
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
                            SizedBox(
                              height: height * .02,
                            ),
                            SelectedProfilePhotosContainer(
                              builder: (BuildContext context, int selectedProfilePhoto) {
                                if (photoUrls.isEmpty) {
                                  return const SizedBox();
                                }
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    UserContainer(
                                      builder: (BuildContext context, AppUser? user) {
                                        return Container(
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
                                        );
                                      },
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
                            SizedBox(
                              height: height * .04,
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
                                      minimumSize: Size(width * .35, 50),
                                    ),
                                    child: const Text(
                                      'Submit',
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
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(width * .35, 50),
                                    ),
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                          ],
                        ),
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
