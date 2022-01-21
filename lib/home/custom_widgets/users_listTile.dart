// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hoxton/home/model/user_model.dart';

class UsersListTile extends StatelessWidget {
  final User? user;
  const UsersListTile({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(user?.name ?? ""),
          Text("United Kingdom"),
        ],
      ),
      trailing: IntrinsicWidth(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("8000 AED"),
                Text("11 Aug 2021"),
              ],
            ),
            Transform.scale(
                scale: 0.74, child: const Icon(Icons.hourglass_bottom))
          ],
        ),
      ),
    );
  }
}
