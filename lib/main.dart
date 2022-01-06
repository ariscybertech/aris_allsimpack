import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './model/packages.dart';
import './packages_screen.dart';

void main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sim Packages',
      home: MyHomePage(),
      routes: {
        PackagesScreen.route: (ctx) => PackagesScreen(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget {

  void bottomModalSheet (BuildContext ctx, String network, MediaQueryData mediaQuery)
  {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: mediaQuery.size.width*.25,
                      height: mediaQuery.size.height*.15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF386DC7),
                              width: 5
                          ),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: <Widget>[
                            Expanded( flex: 3,child: Icon(Icons.data_usage, color: Color(0xFF3D6D95), size: mediaQuery.size.width*.17,)),
                            Expanded( flex: 1,child: Text('Internet', style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                        Navigator.of(ctx).pushNamed(
                        PackagesScreen.route,
                          arguments: {
                            'Network' : network,
                            'Type' : PackageType.Data,
                          }
                        );
                    },
                  ),
                  SizedBox(
                    width: mediaQuery.size.width*.2,
                  ),
                  InkWell(
                    child: Container(
                      width: mediaQuery.size.width*.25,
                      height: mediaQuery.size.height*.15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF386DC7),
                              width: 5
                          ),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: <Widget>[
                            Expanded( flex: 3,child: Icon(Icons.phone, color: Color(0xFF3D6D95), size: mediaQuery.size.width*.17,)),
                            Expanded( flex: 1,child: Text('Call', style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(ctx).pushNamed(
                          PackagesScreen.route,
                          arguments: {
                            'Network' : network,
                            'Type' : PackageType.Call,
                          }
                      );
                    },
                  )
                ],
              ),
              SizedBox(
                height: mediaQuery.size.height*.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: mediaQuery.size.width*.25,
                      height: mediaQuery.size.height*.15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF386DC7),
                              width: 5
                          ),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: <Widget>[
                            Expanded( flex: 3,child: Icon(Icons.chat, color: Color(0xFF3D6D95), size: mediaQuery.size.width*.17,)),
                            Expanded( flex: 1,child: Text('SMS', style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(ctx).pushNamed(
                          PackagesScreen.route,
                          arguments: {
                            'Network' : network,
                            'Type' : PackageType.SMS,
                          }
                      );
                    },
                  ),
                  SizedBox(
                    width: mediaQuery.size.width*.2,
                  ),
                  InkWell(
                    child: Container(
                      width: mediaQuery.size.width*.25,
                      height: mediaQuery.size.height*.15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF386DC7),
                              width: 5
                          ),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: <Widget>[
                            Expanded( flex: 3,child: Icon(Icons.phone_iphone, color: Color(0xFF3D6D95), size: mediaQuery.size.width*.17,)),
                            Expanded( flex: 1,child: Text('Super', style: TextStyle(fontFamily: 'Poppins', fontSize: 18),),),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(ctx).pushNamed(
                          PackagesScreen.route,
                          arguments: {
                            'Network' : network,
                            'Type' : PackageType.Hybrid,
                          }
                      );
                    },
                  ),
                ],
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
    
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFF386DC7),
      body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFF386DC7),
                width: 5
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: mediaQuery.size.width*0.8,
                  margin: EdgeInsets.only(
                      top: mediaQuery.size.height*0.08,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFF386DC7),
                        width: 5
                    ),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child:Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Text("All Sim Package - 2020", style: TextStyle(fontFamily: 'Poppins', fontSize: 22),),
                        Text("BY", style: TextStyle(fontFamily: 'Poppins', fontSize: 25),),
                        Text("Aashar Wahla", style: TextStyle(fontFamily: 'Poppins', fontSize: 25),),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width*0.8,
                  margin: EdgeInsets.only(
                    top: mediaQuery.size.height*0.08,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              width: mediaQuery.size.width*.25,
                              height: mediaQuery.size.height*.15,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF386DC7),
                                      width: 5
                                  ),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('assets/images/ufone.png'),
                              ),
                            ),
                            onTap: (){
                              bottomModalSheet(context, 'Ufone', mediaQuery);
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: mediaQuery.size.width*.25,
                              height: mediaQuery.size.height*.15,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF386DC7),
                                      width: 5
                                  ),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('assets/images/jazz.png'),
                              ),
                            ),
                            onTap: (){
                              bottomModalSheet(context, 'Jazz', mediaQuery);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaQuery.size.height * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              width: mediaQuery.size.width*.25,
                              height: mediaQuery.size.height*.15,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF386DC7),
                                      width: 5
                                  ),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('assets/images/telenor.png'),
                              ),
                            ),
                            onTap: (){
                              bottomModalSheet(context, 'Telenor', mediaQuery);
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: mediaQuery.size.width*.25,
                              height: mediaQuery.size.height*.15,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF386DC7),
                                      width: 5
                                  ),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset('assets/images/Zong.png'),
                              ),
                            ),
                            onTap: (){
                              bottomModalSheet(context, 'Zong', mediaQuery);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
