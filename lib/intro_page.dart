import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellow_sun_login_register_flutter_ui/login_page.dart';
import 'package:yellow_sun_login_register_flutter_ui/register_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFF9),
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 80),
              child: Column(
                children: [
                  Text(
                    'Hello and Welcome :)',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff312C6A)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '" We are Your Favorite UI Designer "',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: const Color(0xffA6A6A6)),
                  ),
                  const SizedBox(
                    height: 122,
                  ),
                  Image.network(
                    'https://cdn.pixabay.com/photo/2019/09/09/05/13/deer-4462630_1280.png',
                    width: 311,
                    height: 267,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                      width: 261,
                      height: 49,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFEF60),
                          borderRadius: BorderRadius.circular(30)),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const LoginPage()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Sign In Here',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff312C6A)),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hey, Don’t Have Account ? ',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: const Color(0xff312C6A))),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const RegisterPage()));
                        },
                        child: Text('Sign Up Here',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: const Color(0xff312C6A),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
