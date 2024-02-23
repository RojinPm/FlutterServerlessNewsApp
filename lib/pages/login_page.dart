import 'package:flutter/material.dart';
import 'package:flutter_serverless_news/components/my_button.dart';
import 'package:flutter_serverless_news/components/my_textfield.dart';
import 'package:flutter_serverless_news/components/square_tile.dart';

class LoginPage extends StatelessWidget {
    LoginPage({super.key});

   final usernameController = TextEditingController();
   final passwordController = TextEditingController();
 
   void signUserIn(){


   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Colors.grey[300],
    body:  SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            
             children: [
                 
              SizedBox(height: 50),
            
                Icon(
                Icons.lock,
                size: 100,
               ),
            
              SizedBox(height: 50),
              
              Text('Welcome Back to NewsCore',
                
                style: TextStyle(
        
                  color:Color.fromARGB(255, 78, 77, 77),
                  fontSize: 16
                ),
              
              ),
            
                const SizedBox(height: 25),
        
                  MyTextField(
                    controller: usernameController, 
                  hintText: "Username", 
                  obscureText: false
                  ),
                   const SizedBox(height: 10),
                    MyTextField(
                    controller: passwordController, 
                  hintText: "Password", 
                  obscureText: false
                  ),
                   
                    const SizedBox(height: 10),
           
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forgot Password', 
                             style: TextStyle(color: Colors.grey[600]),
                             
                            ),
                          ],
                        ),
                      ),
                 const SizedBox(height: 10),
        
        
                 MyButton(
                  onTap: signUserIn,
                 ),
                
                  const SizedBox(height: 50),
              
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: Row(
                     children: [
                       Expanded(
                         child: Divider(
                          thickness: 0.5,
                          color:Colors.grey[400]
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                         child: Text(
                          
                          'Or Continue with',
                          style:TextStyle(color: Colors.grey[700])
                         
                         
                         ),
                       ),
                       Expanded(
                         child: Divider(
                          thickness: 0.5,
                          color:Colors.grey[400]
                         ),
                       ),
                     ],
                   ),
                 ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
        
                       SquareTile(imagePath: 'lib/images/google.png'),
                       
                         const SizedBox(width: 25),
                        SquareTile(imagePath: 'lib/images/apple.png'),
                     
                    ],
                  ),
        
             const SizedBox(height: 50),
             ],
            
          ),
        ),
      ),
    ),


    );
  }
}