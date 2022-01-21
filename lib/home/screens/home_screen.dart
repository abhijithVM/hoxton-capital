import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoxton/home/blocs/bloc/user_bloc.dart';
import 'package:hoxton/home/custom_widgets/custom_chart.dart';
import 'package:hoxton/home/custom_widgets/input_decoration.dart';
import 'package:hoxton/home/custom_widgets/user_list.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleCard(),
              customGapSize(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "PERFORMANCE CHART",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              customGapSize(height: 8),
              SizedBox(height: 120, child: salesChart(context)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "TOP USERS FROM YOUR COMMUNITY",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state is UserSuccess) {
                    return SizedBox(
                      height: 110,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.userList.length,
                          itemBuilder: (context, i) => const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: UserScrollableList(),
                              )),
                    );
                  }
                  return Container();
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "RECENT TRANSACTIONS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
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
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16)),
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
              customGapSize(),
              customTextStyle(label: '\$56,271.68', fontSize: 20),
              customGapSize(height: 4),
              RichText(
                  text: const TextSpan(
                      text: "+\$9,736   ",
                      style: TextStyle(color: Colors.white),
                      children: [
                    TextSpan(
                        text: "   ↑↑ 2.3%",
                        style: TextStyle(color: Color(0xFF3CD942)))
                  ])),
              customGapSize(),
              customTextStyle(label: 'Account balance', color: Colors.white54),
              customGapSize(),
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
