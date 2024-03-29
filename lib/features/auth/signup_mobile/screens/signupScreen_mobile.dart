import 'package:delta_team/features/auth/login/login_mobile/loginmobile_body.dart';
import 'package:delta_team/features/auth/signup/widgets/textfields_signup_mobile.dart';
import 'package:delta_team/features/auth/signup/widgets/title_signup_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../signup/widgets/footer.dart';

class SignupScreenMobile extends StatelessWidget {
  const SignupScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: SvgPicture.asset("assets/images/navbar_logo.svg",
            semanticsLabel: 'Confirmation SVG'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(243, 243, 249, 1),
          child: Column(
            children: [
              const Center(child: TitleSignUpMobile()),
              const Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: TextFieldSignUp(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.notoSans(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreenMobile.routeName);
                    },
                    key: const Key("loginKey"),
                    child: Text(
                      'Log in',
                      style: GoogleFonts.notoSans(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 57.1,
              ),
              SvgPicture.asset("assets/images/footer_logo.svg",
                  semanticsLabel: 'Confirmation SVG'),
              const SizedBox(
                height: 23.1,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
