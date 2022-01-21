import 'package:flutter/material.dart';
import 'package:hoxton/home/model/user_model.dart';

class UserScrollableList extends StatelessWidget {
  final User? user;
  const UserScrollableList({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: const Image(
                image: AssetImage(
                    "assets/images/male.png"), // since there is no image of user
              ),
            ),
            Text(
              user?.name ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 9,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ));
  }
}
