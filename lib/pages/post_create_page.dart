import 'package:flutter/material.dart';

import '../constant/dimens.dart';

class PostCreatePage extends StatelessWidget {
  const PostCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Post Creating "), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.post_add),
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                  child: Image.asset(
                "images/actor1.png",
                fit: BoxFit.fill,
              )),
              title: const TextField(
                autofocus: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    style: BorderStyle.none,
                    color: Colors.transparent,
                  )),
                  focusColor: Colors.transparent,
                  hintText: " What's on your mind? ",
                ),
              ),
              trailing: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(kSP30x)),
                ),
                child: const Icon(Icons.image_outlined),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Image.asset("images/nature.png", fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}
