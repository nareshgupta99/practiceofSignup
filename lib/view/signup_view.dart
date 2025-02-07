import 'package:flutter/material.dart';

class SignupView extends StatefulWidget{
  const SignupView({super.key})

  @override
  State<StatefulWidget> createState()=>SignupState();
}


class SignupState extends State<SignupView>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        
        appBar: AppBar(
          title: Text("Swiggy"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: TextField(
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
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                        padding: EdgeInsets.only(right: 5),
                          child: TextField(
                            decoration: InputDecoration(icon: Icon(Icons.call), label: Text("Phone "), fillColor: Colors.black12, filled: true, labelStyle: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                                                decoration: InputDecoration(
                              label: Text("Area"),
                              fillColor: Colors.black12,
                              filled: true,
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                                              ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: TextField(
                    decoration: InputDecoration(label: Text("Address"), icon: Icon(Icons.maps_home_work), fillColor: Colors.black12, filled: true),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40,bottom: 16),
                  child: TextField(
                    decoration: InputDecoration(label: Text("City"), fillColor: Colors.black12, filled: true, labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5,left: 40,bottom: 16),
                        child: TextField(
                          decoration: InputDecoration(label: Text("State"), fillColor: Colors.black12, filled: true, labelStyle: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5,bottom: 16),
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
                    decoration: InputDecoration(
                      label: Text("Email"),
                      fillColor: Colors.black12,
                      filled: true,icon: Icon(Icons.email)
                    ),
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
                )
              ],
            ),
          ),
        ),
      );
  }
}