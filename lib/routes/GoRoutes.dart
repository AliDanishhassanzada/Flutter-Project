import 'package:flutter/material.dart';
import 'package:app/routes/dataBase.dart';


class GoRoutes extends StatefulWidget {
  const GoRoutes({super.key});

  @override
  State<GoRoutes> createState() => _GoRoutesState();
}

class _GoRoutesState extends State<GoRoutes> {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(" صفحه مسیر"),
          centerTitle: true,
          elevation: 0,
          ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(100,10,100,0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/form");
                    },
                    child: Text('فورم ثبت نام'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                ),
                
              ),
            ),
            Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(100,10,100,0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/viewData");
                    },
                    child: Text('نمایش اطلاعات'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                ),
              ),
            ),
            Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(100,10,100,0),
                  child: ElevatedButton(
                    onPressed: () {
                     try{
                       SQLHelper.deleteitem();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar
                      (content: Text("تمام اطلاعات موفقانه پاک شد.")));
                     }catch(err){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar
                      (content: Text("پاک کردن اطلاعات به مشکل مواجه شده.")));
                     }  
                    },
                    child: Text('پاک کردن اطلاعات'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                ),
              ),
            ),
            Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(100,10,100,0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/about");
                    },
                    child: Text('درباره برنامه'),
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