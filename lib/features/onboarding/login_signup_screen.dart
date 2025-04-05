import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/core/routes/router.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  final phrases = ["SRM’s Rizz Zone!", "Vibes Locked In!", "SRM Bae Hunt!"];

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Scaffold(
      backgroundColor: Color(0xff3D7A4D),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: "123",
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height * .05),
                  child: Text(
                    'Shafa',
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: height *.4,
                color: Colors.black,
              ),

              Column(
                children: [
                  InkWell(
                    onTap: () {
                      LogInScreenRoute().pushReplacement(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: height * .06,
                      padding: EdgeInsets.symmetric(vertical: 4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffE0F5B7),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(45, 0, 0, 0),
                            blurRadius: 3,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      SignUpScreenRoute().pushReplacement(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: height * .06,
                      padding: EdgeInsets.symmetric(vertical: 4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffFEFEFF),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(45, 0, 0, 0),
                            blurRadius: 3,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: Text(
                        'Create account',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  Gap(height *.05),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
