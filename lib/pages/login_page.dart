
import 'package:flutter/material.dart';
import 'package:sign_in_up/components/my_button.dart';
import 'package:sign_in_up/images/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController= TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn(){}
  void signUserUp(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 /*     appBar: AppBar(
        title: const Text("TheBigFunApp"),
        backgroundColor: Colors.red,
      ),*/
      
      
      backgroundColor: Colors.deepPurpleAccent.shade200,

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //const SizedBox(height: 50,), //le da espaciado
/*              const Icon(
                Icons.lock,
                size: 100,
              ),*/
              const SizedBox(height: 50,),

              Container(
                width: 180,
                //height: 100,
                child: ClipOval(child: Image.asset('lib/images/TheBigFun.png'),)
              ),



              //CircleAvatar(backgroundImage: Image.asset('lib/images/TheBigFun.png') ,),

              const SizedBox(height: 50,),


              //   USER TEXT BOX
              MyTextField(
                controller: userNameController,
                hintText: "User Name",
                obscureText: false,
              ),

              const SizedBox(height: 20,),

              //   PASSWORD TEXT BOX
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(height: 20,),


              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    text: "Sign In",
                    onTap: signUserIn,
                  ),
                  MyButton(
                    text: "Sign Up",
                    onTap: signUserUp,
                  ),
                ],
              ),



              const SizedBox(height: 20,),

              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),

                  Text(' Or continue with ',style: TextStyle(color: Colors.white),),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
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