import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  // layout hints https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Align(
              child: ElevatedButton(
                  key: const Key('ColorButton'),
                  onPressed: () {
                    // here we create the event
                  },
                  child: const Text('Change color (create event)')),
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                // here we are listening for changes on the isRed variable that is on the
                // state manager
                child: Container(
                    key: const Key('ColorContainer'),
                    color: Colors.blue,
                    child: const Center(
                        child: Text(
                            'This container will change color depending on the App state')))),
          )
        ],
      ),
    );
  }
}
