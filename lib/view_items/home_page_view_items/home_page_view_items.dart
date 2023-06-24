import 'package:flutter/material.dart';
import '../../widgets/easy_text.dart';

class NewFeedItemView extends StatelessWidget {
  const NewFeedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFcacccc),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
                child: Image.asset(
              "images/actor1.png",
              fit: BoxFit.fill,
            )),
            title: const EasyText(text: "Actor"),
            subtitle: Text("${DateTime.now()}"),
          ),
          Container(
            color: Colors.blueGrey,
            child: Image.asset("images/actor1.png"),
          ),
        ],
      ),
    );
  }
}
