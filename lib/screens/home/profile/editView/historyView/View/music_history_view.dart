import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicHistoryScreen extends StatelessWidget {
  final List<String> _musicHistory = [
    'Song 1 - Artist 1',
    'Song 2 - Artist 2',
    'Song 3 - Artist 3',
    'Song 4 - Artist 4',
    'Song 5 - Artist 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music History'),
      ),
      body: ListView.builder(
        itemCount: _musicHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_musicHistory[index]),
          );
        },
      ),
    );
  }
}