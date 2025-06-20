import 'package:flutter/material.dart';
import 'package:habit_tracker/constant/app_color.dart';
import 'package:habit_tracker/constant/app_text_styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Background decorative elements
              Stack(
                children: [
                  // Top decorative circles
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 30,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 50,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    right: 50,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  
                  // Main content
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        const SizedBox(height: 80),
                        Center(child: Text("HeyBit", style: AppTextStyles.appTitle())),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            'Welcome to HeyBit',
                            style: AppTextStyles.welcomeTitle(),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Smarter tracking for a healthier you.",
                            style: AppTextStyles.subtitle(),
                          ),
                        ),
                        const SizedBox(height: 40),
                        
                        // Form fields
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name field
                            Text("Name", style: AppTextStyles.labelBold()),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: InputDecoration(
                                fillColor: AppColors.inputBackground,
                                filled: true,
                                hintText: "Enter your name",
                                hintStyle: AppTextStyles.hintText(),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            
                            // Email field
                            Text("Email", style: AppTextStyles.labelBold()),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: InputDecoration(
                                fillColor: AppColors.inputBackground,
                                filled: true,
                                hintText: "Enter your email",
                                hintStyle: AppTextStyles.hintText(),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            
                            // Password field
                            Text("Password", style: AppTextStyles.labelBold()),
                            const SizedBox(height: 8),
                            TextFormField(
                              obscureText: _obscurePassword,
                              decoration: InputDecoration(
                                fillColor: AppColors.inputBackground,
                                filled: true,
                                hintText: "Create password",
                                hintStyle: AppTextStyles.hintText(),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
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
                            const SizedBox(height: 15),
                            
                            // Remember me checkbox
                            Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = value ?? false;
                                    });
                                  },
                                  activeColor: AppColors.primary,
                                  fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                                    if (states.contains(MaterialState.selected)) {
                                      return AppColors.primary;
                                    }
                                    return Colors.white;
                                  }),
                                  side: BorderSide.none,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                Text(
                                  "Remember me",
                                  style: AppTextStyles.bodyRegular(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            
                            // Sign Up button
                            Container(
                              width: double.infinity,
                              height: 56,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.dividerColor,
                                    blurRadius: 3,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text("Sign Up", style: AppTextStyles.buttonText()),
                              ),
                            ),
                            const SizedBox(height: 40),
                            
                            // Divider with "Or continue with"
                            Row(
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
                            const SizedBox(height: 30),
                            
                            // Social login buttons
                            Row(
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
                            const SizedBox(height: 35),
                            
                            // Login link
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: AppTextStyles.bodyRegular(),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to login
                                  },
                                  child: Text(
                                    "Login",
                                    style: AppTextStyles.bodyRegular()?.copyWith(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}