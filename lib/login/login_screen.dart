import 'package:audio_library/login/wighet/social_icon.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
   bool _obscurepassword =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              '',
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.image_not_supported);
              },
              ),
          ),
            SizedBox(
              height: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Email',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11.0
                  ),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'username123@gmail.com',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 14.0
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                      )
                    ),      
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Password',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.0
                  ),
                  child: TextField(
                    controller: _passwordController,
                  obscureText: _obscurepassword,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                     contentPadding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 14.0
                      ),
                      
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(
                          _obscurepassword ? 
                          Icons.visibility :
                          Icons.visibility_off
                          ),
                          onTap: () {
                            setState(() {
                            _obscurepassword =! _obscurepassword;

                          }
                        );
                      },
                     )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11.0,
                    vertical: 8.0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Text(
                          'Forgot Password?',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                          ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(
                        Size(320, 42.0),
                        ),
                        backgroundColor:  WidgetStateProperty.all(
                          Colors.deepOrange[200]
                        )

                    ),
                    onPressed: () {
                      
                    },
                     child: Text(
                      'Login',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                      )
                     ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 21.0
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 12.0,
                          color: Colors.grey,
                          endIndent: 12.0,
                        
                        ),
                      ),
                        Text(
                    'Or Login With'
                   ),
                   Expanded(
                     child: Divider(
                      indent: 12.0,
                       color: Colors.grey,
                       endIndent: 12.0,
                  ),
                   )
                    ],
                  ),
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                       SocialIconButton(icon: Icons.facebook, color: Colors.blue,isCustom:false,),
                       SizedBox(width: 20.0,),
                       SocialIconButton(icon: Icons.g_mobiledata, color: Colors.red,isCustom: false,),
                        SizedBox(width: 20.0,),
                        SocialIconButton(icon: Icons.chat_bubble, color: Colors.lightBlue,isCustom: false,)

                   ],
                ),
                SizedBox(
                  height: 26.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have Any Account? ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0
                      ),
                      ),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Text(
                          'Sign Up',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color:   Colors.deepOrange[200],
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                      )

                  ],
                )
              ],     
            ),
        ],
      ),
    );
  }
}