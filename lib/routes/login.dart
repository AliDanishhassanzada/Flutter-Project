import 'dart:convert';

import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  String note = "خوش آمدید \nبه برنامه ثبت اطلاعات";
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("ثبت اطلاعات"),
          centerTitle: true,
          elevation: 0,
          ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(note,
                 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,
                fontFamily: 'MyFont',
                color: Colors.white,
                fontWeight:FontWeight.bold),
                
                ),
                ),
              SizedBox(height: 20,),
              Container(                
                decoration: BoxDecoration(          
                borderRadius: BorderRadius.circular(30.0),    
                color: Colors.blueGrey,
                ),
                  margin: EdgeInsets.fromLTRB(20,0,20,0),
                  child: new Directionality(textDirection:TextDirection.rtl,
                    child: new TextFormField(
                      controller: _name,
                     
                      obscureText: false,
                      style: TextStyle(color: Colors.white,
                      fontSize: 20),
                      decoration: InputDecoration(
                      
                      icon: new Icon(Icons.person_outline,
                      color: Colors.white,   
                      ),      
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:BorderSide( width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  hintText: 'نام کارمند',
                  contentPadding: EdgeInsets.fromLTRB(15.0,15.0,-5.0,15.0),
                  hintStyle: TextStyle(color: Colors.white,
                  fontSize: 20,
                  
                  )
                  ),
                   )
                   ,
                  ), 
                  
                  ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    
                    
                    color: Colors.blueGrey,                  
                    ),                   
                    margin: EdgeInsets.all(20),
                  child: new Directionality(textDirection:TextDirection.rtl,
                    child: new TextFormField(
                      controller: _password,
                    obscureText: true,
                    style: TextStyle(color: Colors.white,
                    fontSize: 20),
                    decoration: InputDecoration(
                      icon: new Icon(Icons.lock_open,                  
                      color: Colors.white,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:BorderSide( width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  hintText: 'کود کارمند',
                  contentPadding: EdgeInsets.fromLTRB(15.0,15.0,-5.0,15.0),
                  hintStyle: TextStyle(color: Colors.white,
                  fontSize: 20,
                  )
                  ),
                   ),
                  ),
                  ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(150,0,150,0),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_name.text == "root" && _password.text == "12345") {
                          _name.text="";   
                          _password.text="";  
                         Navigator.pushNamed(context, "/GoRutes");

                        
                        }else if((_name.text.length==0 || _name == null ) || (_password.text.length==0 ||_password == null)){
                          setState(() {
                            note = "نباید نام کارمند یا \nکود کارمند را خالی بگذارید."; 
                            _name.text="";   
                            _password.text="";   
                          });
                        }
                        else{
                          setState(() {
                            note = "نام کارمند یا\n کود کارمند اشتباه است.";
                            _name.text="";   
                            _password.text="";  
                          });
                        }
                        
                      },
                      
                    child: Text('ورود'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                ),
              ),
            ),
          ]),
          ),
          ),
    );
  }
}