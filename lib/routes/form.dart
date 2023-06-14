
import 'package:flutter/material.dart';
import 'package:app/routes/dataBase.dart';

class DataForm extends StatefulWidget {
  const DataForm({super.key});

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  
  TextEditingController _name = TextEditingController();
  TextEditingController _f_name = TextEditingController();
  TextEditingController _job = TextEditingController();
  TextEditingController _salary = TextEditingController();
  TextEditingController _many_family = TextEditingController();
  TextEditingController _id_card = TextEditingController();
  TextEditingController _zoon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp( 
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("فورم ثبت نام"),
          centerTitle: true,
          elevation: 0,
          ),
        body: new Directionality(textDirection: TextDirection.rtl,
         child: SingleChildScrollView(
           child: Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Column(children: [
            Text("نام"),
            Container(    
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.blueGrey,
              ),
              child:TextFormField(  
                controller: _name,  
              style: TextStyle(
                height: 0.5,
              color: Colors.white,
              fontSize: 20,
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),      
            ),
            ), ),
             Text("نام پدر",),
            Container(    
               margin: EdgeInsets.fromLTRB(0, 0, 0, 10),

              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.blueGrey,
              ),
              child:TextFormField( 
                controller:_f_name,   
              style: TextStyle(
                height: 0.5,
              color: Colors.white,
              fontSize: 20,
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),      
            ),
            ), ),
            Text("شغل"),
            Container(    
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.blueGrey,
              ),
              child:TextFormField(   
                controller: _job, 
              style: TextStyle(
                height: 0.5,
              color: Colors.white,
              fontSize: 20,
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),      
            ),
            ), ),
            Text("میزان درآمد"),
            Container(    
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.blueGrey,
              ),
              child:TextFormField(  
                controller: _salary,  
              style: TextStyle(
                height: 0.5,
              color: Colors.white,
              fontSize: 20,
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),      
            ),
            ),
             ),
             Text("تعداد اعضای فامیل"),
            Container(    
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.blueGrey,
              ),
              child:TextFormField(
                controller: _many_family,    
              style: TextStyle(
                height: 0.5,
              color: Colors.white,
              fontSize: 20,
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),      
            ),
            ), ),
            Text("نمبر تذکره"),
            Container(    
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.blueGrey,
              ),
              child:TextFormField(  
                controller: _id_card,  
              style: TextStyle(
                height: 0.5,
              color: Colors.white,
              fontSize: 20,
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),      
            ),
            ), ),
            Text("ناحیه"),
            Container(    
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.blueGrey,
              ),
              child:TextFormField(   
                controller: _zoon, 
              style: TextStyle(
                height: 0.5,
              color: Colors.white,
              fontSize: 20,
              ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),  
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),      
              ),      
            ),
            ), ), 
            Container(
                width: double.infinity,
                height: 50,  
                margin: EdgeInsets.fromLTRB(100,10,100,0),
                child: ElevatedButton(onPressed: (){
                  SQLHelper.createItem(_name.text, _f_name.text, _job.text, _salary.text, _many_family.text, _id_card.text, _zoon.text);
                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar
                    (content: Text("اطلاعات ذخیره شد.")));
                  _name.text="";
                  _f_name.text="";
                  _job.text="";
                  _salary.text="";
                  _many_family.text="";
                  _id_card.text="";
                  _zoon.text="";
                 
                  
                }, 
                child: Text("ذخیره"),
                style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                ),),
            )
             
           ],),),
         ))
          ),
    ));;
  }
}