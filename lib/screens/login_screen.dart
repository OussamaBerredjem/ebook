
import 'package:ebook/screens/accuel_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ebook/screens/home_screeen.dart';
import 'package:ebook/screens/signup_screen.dart';
import 'package:social_login_buttons/social_login_buttons.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginCoachScreen createState() => _LoginCoachScreen();
}

class _LoginCoachScreen extends State<LoginScreen> {
  bool _isObscure3 = true;
  //bool visible = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late String email;
  late String password;

  bool _isLoading = false;


  _loginUsers2() async {
    setState(() {
      _isLoading = true;
    });
    if (_formkey.currentState!.validate()) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context)=>AccuelScreen()));

    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        elevation: 0,
        toolbarHeight: 100,


        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Welcome back !",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 36,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          padding:const EdgeInsets.only(bottom: 20),
                          child: Center(
                            child: Text(
                              "Entrez votre e-mail et mot de passe pour continue",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              prefixIconColor: Colors.black54,

                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Email',
                              enabled: true,
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 12.0),
                              border:  OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder:  OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email cannot be empty";
                              }
                              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return ("Please enter a valid email");
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: _isObscure3,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Colors.black54,
                              suffixIcon: IconButton(
                                  icon: Icon(_isObscure3
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure3 = !_isObscure3;
                                    });
                                  }),
                              filled: true,
                              hintText: 'Password',
                              enabled: true,
                              fillColor: Colors.white,
                              border:  OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder:  OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 12.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onChanged: (value) {
                              password = value;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'password must not be empty ';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                       const SizedBox(
                          height: 5,
                        ),
                        //forget mot de passe
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Mot de passe oublié ?',
                                style: TextStyle(
                                    color: Color.fromRGBO(36, 36, 36, 0.5)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            _loginUsers2();
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: _isLoading
                                  ? const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                                  : const Text(
                                "S'identifier",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  "ou continuer avec ",
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ),

                        //facebook
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SocialLoginButton(
                            backgroundColor: Colors.blueAccent,
                            height: 50,
                            text: '    Sign up avec Facebook',
                            borderRadius: 20,
                            fontSize: 17,
                            buttonType: SocialLoginButtonType.generalLogin,
                            imageWidth: 25,
                            imagePath: "assets/icons/fecbook.png",
                            onPressed: () {},
                          ),
                        ),

                        //google
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SocialLoginButton(
                            backgroundColor: Colors.white,
                            height: 50,
                            text: '    Sign up avec Google',
                            textColor: Colors.black,
                            borderRadius: 20,
                            fontSize: 17,
                            buttonType: SocialLoginButtonType.generalLogin,
                            imageWidth: 25,
                            imagePath: "assets/icons/google_icon.png",
                            onPressed: () {},
                          ),
                        ),

                        //signup
                        SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vous n\'avez pas de compte ?',
                              style: TextStyle(color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>SignupScreen()));
                              },
                              child: Text(
                                ' Sign Up ',
                                style: TextStyle(
                                  color: Color.fromRGBO(233, 61, 73, 0.8),
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
            ),
          ],
        ),
      ),
    );
  }
}