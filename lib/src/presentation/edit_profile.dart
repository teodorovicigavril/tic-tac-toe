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

      const SnackBar snackBar = SnackBar(
        content: Text('Account Updated Successfully!'),
        duration: Duration(seconds: 3),
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
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Edit Profile'),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: UserContainer(
              builder: (BuildContext context, AppUser? user) {
                return ProfilePhotosContainer(
                  builder: (BuildContext context, List<String> photoUrls) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: const Text(
                            'Please enter the fields you want to update!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          _errorText,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          decoration: InputDecoration(hintText: 'email: ${user!.email}'),
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
                        TextFormField(
                          controller: _password,
                          focusNode: _passwordNode,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: 'password',
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
                        TextFormField(
                          controller: _confirmPassword,
                          focusNode: _confirmPasswordNode,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: 'confirm password',
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
                        Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: TextFormField(
                            controller: _username,
                            focusNode: _usernameNode,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: 'username: ${user.username}',
                            ),
                            onFieldSubmitted: (String value) {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                          ),
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
                                      margin: const EdgeInsets.only(top: 32),
                                      height: 180,
                                      child: Image.network(photoUrls[selectedProfilePhoto]),
                                    );
                                  },
                                ),
                                Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
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
                                          color: Colors.black,
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
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () => _onNext(context),
                                child: const Text('Submit'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                ),
                                child: const Text('Cancel'),
                              ),
                            ],
                          ),
                        ),
                      ],
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
