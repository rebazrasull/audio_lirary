import 'package:audio_library/features/login/wighet/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement your authentication logic here
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Logging in ....')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo / Image Header
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 32.0
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(32.0),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkIAH6-gqRFvT7qRSFu1ZlOHsA2D0ZdLzCm_qa42-CEc9oIybqiEdZtw&s=10',
                    height: 200.0,
                    ),
                  ),
                ),
              ),
              
        
              // Email Section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: const Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               SizedBox(
                height: 8.0,
                ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0
                ),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'username123@gmail.com',
                    contentPadding: EdgeInsets.symmetric(
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
              ),
               SizedBox(
                height: 26.0
                ),
        
              // Password Section
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0
                ),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               SizedBox(
                height: 8.0
                ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 14.0
                ),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
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
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      child: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 8.0
                ),
        
              // Forgot Password
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 12.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
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
                  ],
                ),
              ),
               SizedBox(
                height: 24.0,
                ),
        
              // Login Button
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all(
                       Size(220.0, 42.0),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      Colors.deepOrange[200],
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
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
               SizedBox(
                height: 24.0
                ),
        
              // Divider Or Login With
              Row(
                children: [
                   Expanded(
                    child: Divider(
                      color: Colors.grey,
                      indent: 12.0,
                      endIndent: 12.0,
                    )
                      ),
                  Text(
                    'Or Login With',
                    style: TextStyle(
                      color: Colors.grey[600]
                      ),
                  ),
                 Expanded(
                  child: Divider(
                    color: Colors.grey,
                    indent: 12.0,
                    endIndent: 12.0,
                  )
                    ),
                ],
              ),
               SizedBox(
                height: 24.0,
                ),
        
              // Social Icons Row
              Row(
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
               SizedBox(
                height: 24.0,
                ),
        
              // Sign Up Prompt
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    "Don't Have Any Account? ",
                    style: TextStyle(
                      color: Colors.grey,
                       fontSize: 15.0
                       ),
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
    );
  }
}