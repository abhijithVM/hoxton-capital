import 'package:flutter/material.dart';
import 'package:hoxton/home/custom_widgets/input_decoration.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTitleCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleCard() => Container(
        decoration: const BoxDecoration(color: Color(0xFF171D3C)),
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
                      text: "+\$9,736",
                      style: TextStyle(color: Colors.white),
                      children: [
                    TextSpan(
                        text: "2.3%",
                        style: TextStyle(color: Color(0xFF3CD942)))
                  ])),
            ],
          ),
        ),
      );
}
