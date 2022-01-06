import 'package:flutter/material.dart';
import './data/packagesData.dart';
import './package_display.dart';

class PackagesScreen extends StatelessWidget {

  static final route = '/packages_screen';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final network = routeArgs['Network'];
    print(network);
    final type = routeArgs['Type'];
    final packagesList = packagesData.where((package) {
      return package.network == network && package.type == type;
    });
    return Scaffold(
      backgroundColor: Color(0xFF386DC7),
      body: Container(
        height: mediaQuery.size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xFF386DC7),
            width: 5,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: mediaQuery.size.height*.03,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.arrow_back, color: Color(0xFF386DC7), size: mediaQuery.size.width*.1,),
                  ],
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: mediaQuery.size.height*.04,
              ),
              SingleChildScrollView(
                child: Column(
                  children : packagesList.map((index) {
                    return PackageDisplay(currentPackage: index, mediaQuery: mediaQuery,);
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
