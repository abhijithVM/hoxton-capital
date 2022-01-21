import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoxton/home/blocs/bloc/user_bloc.dart';
import 'package:hoxton/home/custom_widgets/input_decoration.dart';
import 'package:hoxton/home/custom_widgets/users_listTile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    BlocProvider.of<UserBloc>(context).add(GetUserListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTitleCard(),
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state is UserSuccess) {
                    return Column(
                      children: List.generate(
                        state.userList.length,
                        (index) => UsersListTile(
                          user: state.userList[index],
                        ),
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleCard() => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
          color: Color(0xFF171D3C),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hola Michael",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      customTextStyle(
                          label: "Te tenemos excelentes noticias para ti"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                          )),
                      const CircleAvatar(
                        child: Image(
                            image: AssetImage("assets/images/dummy_prfl.png")),
                      )
                    ],
                  ),
                ],
              ),
              customTextStyle(label: '\$56,271.68'),
              RichText(
                  text: const TextSpan(
                      text: "+\$9,736   ",
                      style: TextStyle(color: Colors.white),
                      children: [
                    TextSpan(
                        text: "   ↑↑ 2.3%",
                        style: TextStyle(color: Color(0xFF3CD942)))
                  ])),
              customTextStyle(label: 'Account balance', color: Colors.white54),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cutomsaleCard("12", "Following"),
                    const VerticalDivider(color: Colors.white),
                    cutomsaleCard("36", "Transactions"),
                    const VerticalDivider(color: Colors.white),
                    cutomsaleCard("4", "Bills"),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
