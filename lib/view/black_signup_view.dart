import 'package:flutter/material.dart';

class BlackSignupView extends StatelessWidget {
  const BlackSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              
              SizedBox(height: 60, child: Text(style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900), "Log in to Scale")),
              Text(
                "Email",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 80,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(hintText: "hello@gmail.com", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Text(
                "Password",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(hintText: "Your Password", suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye)), border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.w600),
                  )),
              Row(
                children:[ Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(),
                    child: Text("Login")
                  ),
                  
                )],
              ),
              SizedBox(
                height: 30,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.45,
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                        indent:18,
                        height: 10,
                      ),
                    ),
                    SizedBox(
                      
                      child: Text(style: TextStyle(color: Colors.white),"OR")),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                        height: 10,
                        
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                child: Row(
                  children: [
                    Icon(Icons.apple, color: Colors.black, size: 25),
                    Expanded(child: Center(child: Text("Continue With Apple")))
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.mail,color: Colors.black,size: 25),
                    Expanded(child: Center(child: Text("Continue With Google")))
                    ],
                  ))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
