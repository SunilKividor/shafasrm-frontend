import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shafasrm_app/config/assets.gen.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';
import 'package:shafasrm_app/features/authentication/models/signup_req_model.dart';
import 'package:shafasrm_app/features/authentication/presentation/provider/auth_provider.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  Future<void> signUp() async {
    final signUpReq = SignupReqModel(
      name: nameController.text,
      password: passwordController.text,
      email: emailController.text,
    );
    await ref.read(authProvider.notifier).signup(signUpReq);
  }

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    final width = context.screenWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(height * .2),
              Text(
                'Create account',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(height * .03),

              _buildTextField(
                context,
                nameController,
                'Name',
                'Your name',
                false,
              ),
              Gap(18),
              _buildTextField(
                context,
                emailController,
                'Email',
                'Your SRM email',
                false,
              ),
              Gap(18),
              _buildTextField(
                context,
                passwordController,
                'Password',
                'Your password',
                true,
              ),

              Gap(height * .05),

              InkWell(
                onTap: signUp,
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
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    BuildContext context,
    TextEditingController controller,
    String label,
    String hintText,
    bool obscureText,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: GoogleFonts.poppins(color: Colors.black)),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black),
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            style: GoogleFonts.poppins(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(color: Colors.grey),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
