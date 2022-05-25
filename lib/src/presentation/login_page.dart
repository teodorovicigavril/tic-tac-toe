import 'package:email_validator/email_validator.dart';
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
          _errorText = "This account don't exists!";
        } else {
          _errorText = error.message!;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Login page'),
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: UserContainer(
            builder: (BuildContext context, AppUser? user) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      _errorText,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      decoration: const InputDecoration(hintText: 'email@email.com'),
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
                    TextFormField(
                      controller: _password,
                      focusNode: _passwordNode,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        hintText: 'password',
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
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () => _onNext(context),
                            child: const Text('Login'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/signUp');
                            },
                            child: const Text('Sign Up'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
