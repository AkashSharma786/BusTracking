import 'package:flutter/material.dart';





class Login extends StatefulWidget {
  const Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailState = TextEditingController();
  TextEditingController passwordState = TextEditingController();
  
  bool isEmptyPassword = false, isEmptyEmail = true;

 
  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            Image.asset('assets/images/busLogo.png',
            width: 100,),
      
            const SizedBox(height: 60,
            width: 40,),

            const Text("Wel Come",),

             Padding(
              padding:const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 20.0),
            child: Column(

              children: [
                TextFormField(
                  controller: emailState,
                  
                decoration :InputDecoration(
                
                  hintText: "Enter Email",
                  label: const  Text("Email"),
                  errorText: isEmptyEmail ? "Email Required" : null,
                )
                
                ),

                TextFormField(
                  controller: passwordState,
                  
                  decoration:  InputDecoration(
                    hintText: "Enter Password",
                    label: const Text("Password"),
                    errorText: isEmptyPassword? "Password Required": null,
                  ),
                  

                ),

               ElevatedButton(
                onPressed: (){
                  setState(() {
                    passwordState.text.isEmpty ? isEmptyPassword = true : isEmptyPassword = false;
                  });

                  setState(() {
                    emailState.text.isEmpty ? isEmptyEmail = true : isEmptyEmail = false;
                  });
                  
            
                },
                 child:const Text("This is Button"))
              ],
            ),)

           
           
          

          ],)
        ),

        
        );
  }

}