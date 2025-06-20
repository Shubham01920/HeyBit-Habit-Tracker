import 'package:flutter/material.dart';
import 'package:habit_tracker/constant/app_color.dart';
import 'package:habit_tracker/constant/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   bool _obscurePassword = true;
   
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 90),
              
              // App title
              Center(
                child: Text(
                  "HeyBit",
                  style: AppTextStyles.appTitle(),
                ),
              ),
              SizedBox(height: 20),
              
              // Welcome title
              Center(
                child: Text(
                  'Welcome to HeyBit',
                  style: AppTextStyles.welcomeTitle(),
                ),
              ),

              // Subtitle
              Center(
                child: Text(
                  "Smarter tracking for a healthier you.",
                  style: AppTextStyles.subtitle(),
                ),
              ),
              SizedBox(height: 40),
              
              // Form fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Name",
                      style: AppTextStyles.labelBold(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      bottom: 20,
                      top: 8,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColors.inputBackground,
                        filled: true,
                        hintText: "Enter your name",
                        hintStyle: AppTextStyles.hintText(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  
                  // Password field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Password",
                      style: AppTextStyles.labelBold(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: AppColors.inputBackground,
                        filled: true,
                        hintText: "Enter the password",
                        hintStyle: AppTextStyles.hintText(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscurePassword 
                                        ? Icons.visibility_off_outlined 
                                        : Icons.visibility_outlined,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  
                  // Forgot password link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25, top: 8),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: AppTextStyles.linkText(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  
                  // Login button
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.dividerDark,
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: AppTextStyles.buttonText(),
                      ),
                    ),
                  ),
                  SizedBox(height: 65),
                  
                  // Divider with "Or continue with"
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColors.dividerColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Or continue with",
                            style: AppTextStyles.bodyBold(),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColors.dividerColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  
                  // Social login buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            // Google
                          },
                          child: Image.asset(
                            "assets/icons/icons8-google-48.png",
                            height: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/icons8-apple-50.png",
                            height: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Facebook
                          },
                          child: Image.asset(
                            "assets/icons/icons8-facebook-48.png",
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  
                  // Create account link
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Create account Now?",
                        style: AppTextStyles.bodyRegular(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}