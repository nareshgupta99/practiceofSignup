import 'package:flutter/material.dart';
import 'package:sign_up/view/otp_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignupState();
  }
}

class SignupState extends State<SignupView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void signUp() {
    print("name: " + nameController.text);
    print("email: " + emailController.text);
    // Navigator.push(context, MaterialPageRoute(builder: (context) => OtpView()));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OtpView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swiggy"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Name"),
                    icon: Icon(Icons.person),
                    fillColor: Colors.black12,
                    filled: true,
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 70,
                    child: TextField(
                      decoration: InputDecoration(icon: Icon(Icons.call), label: Text("Phone "), fillColor: Colors.black12, filled: true, labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: SizedBox(
                      height: 70,
                      child: TextField(
                        decoration: InputDecoration(
                            label: Text("Area"),
                            fillColor: Colors.black12,
                            filled: true,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: SizedBox(
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(label: Text("Address"), icon: Icon(Icons.maps_home_work), fillColor: Colors.black12, filled: true),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, bottom: 16),
                child: TextField(
                  decoration: InputDecoration(label: Text("City"), fillColor: Colors.black12, filled: true, labelStyle: TextStyle(color: Colors.black)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 5, left: 40, bottom: 16),
                      child: TextField(
                        decoration: InputDecoration(label: Text("State"), fillColor: Colors.black12, filled: true, labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, bottom: 16),
                      child: TextField(
                        decoration: InputDecoration(label: Text("Zip"), fillColor: Colors.black12, filled: true, labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(label: Text("Email"), fillColor: Colors.black12, filled: true, icon: Icon(Icons.email)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text("Birthday"),
                  suffix: Icon(Icons.calendar_month),
                  fillColor: Colors.black12,
                  filled: true,
                  icon: Icon(Icons.cake),
                ),
              ),
              ElevatedButton(onPressed: signUp, child: Text("Signup"))
            ],
          ),
        ),
      ),
    );
  }
}
