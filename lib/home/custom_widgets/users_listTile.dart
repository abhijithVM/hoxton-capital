// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hoxton/home/model/user_model.dart';

class UsersListTile extends StatelessWidget {
  final User? user;
  const UsersListTile({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child:
              const Icon(Icons.person_outline_outlined, color: Colors.white)),
      title: Text(user?.name ?? ""),
      subtitle: Text(user?.address?.city ?? ""),
      trailing: IntrinsicWidth(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("8000 AED", style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            Transform.scale(
                scale: 0.74,
                child: const Icon(
                  Icons.verified_outlined,
                  color: Colors.green,
                ))
          ],
        ),
      ),
    );
  }
}
