import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hereitis_app/screens/commit.dart';
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
        body: Stack(
          children: [
            Center(
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
                SizedBox(
                  height: 40,
                ),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: Wrap(
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      SocialLogin(
                        socialType: "github",
                      ),
                      SocialLogin(
                        socialType: "apple",
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image(
                image: AssetImage("lib/assets/backImg.png"),
              ),
            )
          ],
        ));
  }
}

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key, this.socialType});

  final socialType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Commit()))
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: colors.black,
            ),
            color: socialType == "github" ? colors.black : colors.white,
            borderRadius: BorderRadius.circular(150)),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Wrap(spacing: 60, children: [
            SvgPicture.asset("lib/assets/$socialType.svg"),
            Text(
              "$socialType로 로그인",
              style: TextStyle(
                  color: socialType == "github" ? colors.white : colors.black),
            ),
            SizedBox()
          ]),
        ),
      ),
    );
  }
}
