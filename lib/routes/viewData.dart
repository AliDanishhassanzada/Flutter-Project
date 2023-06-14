import 'package:flutter/material.dart';
import 'package:app/routes/dataBase.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  List<Map<String, dynamic>> _persons = [];
  bool _isloading = true;
  void _get() async {
    final data = await SQLHelper.getItem();
    setState(() {
      _persons = data;
      _isloading = false;
      
    });
      }
      @override
  void initState() {
    
    super.initState();
    _get();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Colors.grey,
        appBar: AppBar(
          
          backgroundColor: Colors.blueGrey,
          title: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0), 
            child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),  
              child:
                  Row(children: [
                  SizedBox(width:0),
                  Text("نمبر تذکره",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width:60,),
                  Text("نام پدر ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  SizedBox(width: 70,),
                  Text("نام ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                ],
            ),
            ),
          ),
          centerTitle: true,
          elevation: 0,),
          body: new Directionality(textDirection: TextDirection.rtl, child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0), 
            child: SafeArea(
              child:  ListView.builder(
                    itemCount: _persons.length,
                    itemBuilder: (context, index) => Row(children: [
                        SizedBox(width: 50),
                        Text(_persons[index]["name"]),
                        SizedBox(width:70,),
                        Text(_persons[index]["f_name"]),
                        SizedBox(width: 90,),
                        Text(_persons[index]['id_card']),
                        // SizedBox(width: 0,),
                      ],)
                  )    
      ) ) ),
       );
  }
}





