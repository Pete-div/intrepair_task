import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrapair_task/screen/dashboadd/dashboard.dart';
import 'package:intrapair_task/utilis/color.dart';
import 'package:intrapair_task/widget/base_button.dart';

import '../widget/custom_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visiblePassword = false;
  void togglePasswordVisibility() {
    setState(() {
      visiblePassword = !visiblePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 105, left: 45, right: 45),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Image.asset(
                "assets/images/logo_2.png",
                height: 40,
              ),
              SizedBox(
                height: 17,
              ),
              Center(
                child: Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: AppColors.dark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 61,
              ),
              CustomTextField(
                hasBorder: true,
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email Address",
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                hasBorder: true,

                maxLines: 1,
                obscureText: visiblePassword,
                keyboardType: TextInputType.text,
                // validator: context.validatePassword,
                suffixIcon: InkWell(
                  onTap: togglePasswordVisibility,
                  child: Icon(
                    visiblePassword ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.primaryColor,
                  ),
                ),
                hintText: "Password",

                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              BaseButton(
                bgColor: AppColors.primaryColor,
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DashboardScreen()));
                },
                text: "Log in",
              ),
              SizedBox(
                height: 208,
              ),
              Text(
                "Or Continue using",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Image.asset("assets/images/google-icon 1.png"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      ' Sign up',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
