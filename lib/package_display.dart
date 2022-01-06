import 'package:flutter/material.dart';
import './model/packages.dart';

class PackageDisplay extends StatelessWidget {
  final Packages currentPackage;
  final MediaQueryData mediaQuery;
  void packageDescription (BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_){
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          border: Border.all(
            color: Color(0xFF386DC7),
            width: 5,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: mediaQuery.size.height*0.05),
              height: mediaQuery.size.height*0.07,
              width: mediaQuery.size.width*0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF386DC7),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(child: Text(currentPackage.name, style: TextStyle(fontFamily: 'Poppins', fontSize: 18),)),
            ),

            Container(
              margin: EdgeInsets.only(top: mediaQuery.size.height*0.02),
              height: mediaQuery.size.height*0.13,
              width: mediaQuery.size.width*0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF386DC7),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(child: Text(currentPackage.details, style: TextStyle(fontFamily: 'Poppins', fontSize: 18),)),
            ),

            Container(
              margin: EdgeInsets.only(top: mediaQuery.size.height*0.02),
              height: mediaQuery.size.height*0.07,
              width: mediaQuery.size.width*0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF386DC7),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.access_time, size: 28, color: Color(0xFF3D6D95),),
                        SizedBox(
                          width: mediaQuery.size.width*.03,
                        ),
                        Text(currentPackage.duration,style: TextStyle(fontFamily: 'Poppins', fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    height: mediaQuery.size.height*.07,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, size: 28,color: Color(0xFF3D6D95)),
                        SizedBox(
                          width: mediaQuery.size.width*.03,
                        ),
                        Text("PKR " + currentPackage.price , style: TextStyle(fontFamily: 'Poppins', fontSize: 18)),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: mediaQuery.size.height*0.02),
              height: mediaQuery.size.height*0.07,
              width: mediaQuery.size.width*0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(),
                  Text('Activation', style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),
                  Container(),
                  Text(currentPackage.activationCode, style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),
                  Container(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: mediaQuery.size.height*0.02),
              height: mediaQuery.size.height*0.07,
              width: mediaQuery.size.width*0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(),
                  Text('Deactivation', style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),
                  Container(),
                  Text(currentPackage.deactivationCode, style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      );
    },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25)
            )
        )
    );
  }
  PackageDisplay({this.currentPackage, this.mediaQuery});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: mediaQuery.size.height*0.02,
          horizontal: mediaQuery.size.height*0.03,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xFF386DC7),
            width: 5,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
                height: mediaQuery.size.height*.07,
                child: Center(child: Text(currentPackage.name, style: TextStyle(fontFamily: 'Poppins', fontSize: 18),)),
            ),
            Container(
              width: mediaQuery.size.height-0.06,
              height: mediaQuery.size.height*.2,
              decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xFF386DC7), width: 5,),
                bottom: BorderSide(color: Color(0xFF386DC7), width: 5,),
              )
              ),
              child: Center(child: Text(currentPackage.details, style: TextStyle(fontFamily: 'Poppins', fontSize: 18))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.access_time, size: 28, color: Color(0xFF3D6D95),),
                      SizedBox(
                        width: mediaQuery.size.width*.03,
                      ),
                      Text(currentPackage.duration,style: TextStyle(fontFamily: 'Poppins', fontSize: 18)),
                    ],
                  ),
                ),
                Container(
                  height: mediaQuery.size.height*.07,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.local_offer, size: 28,color: Color(0xFF3D6D95)),
                      SizedBox(
                        width: mediaQuery.size.width*.03,
                      ),
                      Text("PKR " + currentPackage.price , style: TextStyle(fontFamily: 'Poppins', fontSize: 18)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      onTap: (){
        packageDescription(context);
      },
    );
  }
}
