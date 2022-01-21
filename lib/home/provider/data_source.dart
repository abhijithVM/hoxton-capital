import 'package:dio/dio.dart';
import 'package:hoxton/home/model/user_model.dart';

class UserDatSource {
  Dio client = Dio();

  Future<List<User>> getUserList() async {
    List<User> userList = [];

    final response = await client.get(
      "https://jsonplaceholder.typicode.com/users",
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    for (var element in (response.data as List)) {
      userList.add(User.fromJson(element));
    }
    return userList;
  }
}
