import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'common/colors.dart' as colors;

void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: colors.white,
      body: Center(
          child: Wrap(
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "lib/assets/logo.svg",
              width: 40,
              height: 40,
            ),
          ),
          Text(
            "오늘 1일 1커밋 했나?!",
            style: TextStyle(
              fontSize: 14,
              color: colors.baseBlack,
            ),
          ),
          FractionallySizedBox(
            widthFactor: 1,
            child: Column(
              children: [
                Container(
                  color: colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Wrap(children: [
                      SvgPicture.asset("lib/assets/github.svg"),
                      Text(
                        "Github로 로그인",
                        style: TextStyle(color: colors.white),
                      )
                    ]),
                  ),
                ),
                Wrap(
                  children: [
                    SvgPicture.asset("lib/assets/apple.svg"),
                    Text("Apple로 로그인")
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
