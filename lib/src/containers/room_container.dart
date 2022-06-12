import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tic_tac_toe/src/models/index.dart';

class RoomContainer extends StatelessWidget {
  const RoomContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, dynamic>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, dynamic>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.room,
    );
  }
}
