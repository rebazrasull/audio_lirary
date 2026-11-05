import 'package:audio_library/features/login/wighet/social_icon.dart';
import 'package:audio_library/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true; // Fixed default value to obscure passwords

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      context.go(RouteNames.bottomv);
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Logging in....')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // Prevents overflow when keyboard appears
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo / Image Header
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32.0), // Fixed from BorderRadiusGeometry
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkIAH6-gqRFvT7qRSFu1ZlOHsA2D0ZdLzCm_qa42-CEc9oIybqiEdZtw&s=10',
                        height: 150.0, // Reduced slightly to fit better on mobile screens
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Email Section
                const Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'username123@gmail.com',
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),

                // Password Section
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // TODO: Implement forgot password navigation
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),

                // Login Button
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(220.0, 48.0),
                      backgroundColor: Colors.deepOrange[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: _handleLogin,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),

                // Divider Or Login With
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.grey, endIndent: 12.0),
                    ),
                    Text(
                      'Or Login With',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    Expanded(
                      child: Divider(color: Colors.grey, indent: 12.0),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),

                // Social Icons Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIconButton(
                      icon: Icons.facebook,
                      color: Colors.blue,
                      isCustom: false,
                      text: 'Facebook',
                    ),
                    SizedBox(width: 20.0),
                    SocialIconButton(
                      icon: Icons.g_mobiledata,
                      color: Colors.red,
                      isCustom: false,
                      text: 'Google',
                    ),
                    SizedBox(width: 20.0),
                    SocialIconButton(
                      icon: Icons.chat_bubble,
                      color: Colors.lightBlue,
                      isCustom: false,
                      text: 'Twitter',
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),

                // Sign Up Prompt
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't Have Any Account? ",
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        // TODO: Navigate to Sign Up screen
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.deepOrange[200],
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}