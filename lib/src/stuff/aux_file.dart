// onTap: () async {
//   final Store<AppState> store = StoreProvider.of<AppState>(context);
//   if (piece.item1 != -1 &&
//       ((table[index].item1 == 2 && table[index].item2 < piece.item2) ||
//           table[index].item1 == -1)) {
//     StoreProvider.of<AppState>(context).dispatch(SetPieceToTable(piece, index));
//
//     // todo: this is a hack, what we have bellow should be in the reducer
//     List<Tuple2<int, int>> table = store.state.table;
//
//     StoreProvider.of<AppState>(context)
//         .dispatch(const SetSelectedPiece(Tuple2<int, int>(-1, -1)));
//
//     StoreProvider.of<AppState>(context)
//         .dispatch(SetAvailablePlayerOnePiece(piece: piece.item2, remove: true));
//
//     if (evaluate(table) == -10) {
//       await showDialog<Widget>(
//         context: context,
//         builder: (BuildContext context) {
//           return const AlertDialog(
//             title: Center(child: Text('You won!')),
//           );
//         },
//       );
//       if (!mounted) {
//         return;
//       }
//       StoreProvider.of<AppState>(context)
//           .dispatch(const SetGameStatus(status: false));
//       return;
//     }
//
//     for (int i = 0; i < playerOnePieces.length; i++) {
//       if (!isMovesLeft(table, playerOnePieces[i], 2) && playerOnePieces[i] > 0) {
//         StoreProvider.of<AppState>(context).dispatch(
//           SetAvailablePlayerOnePiece(piece: playerOnePieces[i], remove: false),
//         );
//       }
//     }
//
//     for (int i = 0; i < playerTwoPieces.length; i++) {
//       if (!isMovesLeft(table, playerTwoPieces[i], 1) && playerTwoPieces[i] > 0) {
//         StoreProvider.of<AppState>(context).dispatch(
//           SetAvailablePlayerTwoPiece(piece: playerTwoPieces[i], remove: false),
//         );
//       }
//     }
//
//     if (checkTie(store.state.availablePlayerOnePieces, store.state.availablePlayerTwoPieces)) {
//       await showDialog<Widget>(
//         context: context,
//         builder: (BuildContext context) {
//           return const AlertDialog(
//             title: Center(child: Text('Tie!')),
//           );
//         },
//       );
//       if (!mounted) {
//         return;
//       }
//       StoreProvider.of<AppState>(context)
//           .dispatch(const SetGameStatus(status: false));
//       return;
//     }
//
//     await Future<void>.delayed(const Duration(milliseconds: 700));
//     final Tuple2<int, int> move = findBestMove(
//       List<Tuple2<int, int>>.from(table),
//       List<int>.from(playerTwoPieces),
//     );
//
//     if (!mounted) {
//       return;
//     }
//     if (move.item1 != -1) {
//       StoreProvider.of<AppState>(context).dispatch(
//         SetPieceToTable(Tuple2<int, int>(2, move.item2), move.item1),
//       );
//       StoreProvider.of<AppState>(context).dispatch(
//         SetAvailablePlayerTwoPiece(piece: move.item2, remove: true),
//       );
//     }
//
//     table = store.state.table;
//
//     for (int i = 0; i < playerOnePieces.length; i++) {
//       if (!isMovesLeft(table, playerOnePieces[i], 2) && playerOnePieces[i] > 0) {
//         StoreProvider.of<AppState>(context).dispatch(
//           SetAvailablePlayerOnePiece(piece: playerOnePieces[i], remove: false),
//         );
//       }
//     }
//
//     for (int i = 0; i < playerTwoPieces.length; i++) {
//       if (!isMovesLeft(table, playerTwoPieces[i], 1) && playerTwoPieces[i] > 0) {
//         StoreProvider.of<AppState>(context).dispatch(
//           SetAvailablePlayerOnePiece(piece: playerTwoPieces[i], remove: false),
//         );
//       }
//     }
//
//     if (evaluate(table) == 10) {
//       await showDialog<Widget>(
//         context: context,
//         builder: (BuildContext context) {
//           return const AlertDialog(
//             title: Center(child: Text('You lose!')),
//           );
//         },
//       );
//       if (!mounted) {
//         return;
//       }
//       StoreProvider.of<AppState>(context)
//           .dispatch(const SetGameStatus(status: false));
//       return;
//     }
//
//     if (checkTie(playerOnePieces, playerTwoPieces)) {
//       await showDialog<Widget>(
//         context: context,
//         builder: (BuildContext context) {
//           return const AlertDialog(
//             title: Center(child: Text('Tie!')),
//           );
//         },
//       );
//       if (!mounted) {
//         return;
//       }
//       StoreProvider.of<AppState>(context)
//           .dispatch(const SetGameStatus(status: false));
//       return;
//     }
//   }
// },

// -----------------------------

// Stream<AppAction> _setPieceToTable(Stream<SetPieceToTable> actions, EpicStore<AppState> store) {
//   return actions.flatMap((SetPieceToTable action) async* {
//   final List<Tuple2<int, int>> table = store.state.table;
//   yield const SetSelectedPiece(Tuple2<int, int>(-1, -1));
//
//   yield SetAvailablePlayerOnePiece(piece.item2);
//
//   final Tuple2<int, int> move = findBestMove(
//     List<Tuple2<int, int>>.from(table),
//     List<int>.from(playerTwoPieces),
//   );
//
//   print(table);
//   yield SetPieceToTable(Tuple2<int, int>(2, move.item2), move.item1);
//   yield SetAvailablePlayerTwoPiece(move.item2);
// });
