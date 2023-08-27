import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreDetailCommentView extends StatefulWidget {
  const StoreDetailCommentView({super.key});

  @override
  _StoreDetailCommentViewState createState() =>
      _StoreDetailCommentViewState();
}

class _StoreDetailCommentViewState
    extends State<StoreDetailCommentView> {
  List<String> comments = ['s', 'asdas', 'asdasd', 'askdasdl', 'kmdqqlöw', 'kasdöasl'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: comments.map((comment) {
                  return ListTile(
                    title: Text(comment),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Yorumunuzu buraya yazın',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (comment) {
                if (comment.isNotEmpty) {
                  setState(() {
                    comments.add(comment);
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
