import 'package:flutter/material.dart';
import 'package:internshipapp/webview.dart';
import 'package:internshipapp/no_internet.dart';
import 'package:internshipapp/check_connectivity.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(home());


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}


class _homeState extends State<home> {

  bool isInternet,isPermitted=false;
  CheckConnectivity instance=CheckConnectivity();

  void amIconnected() async{
    isInternet=await instance.is_connected();
//    print(isInternet);
  }

  //--------------------GRANTED PERMISSION BUT CANT ACCESS MICROPHONE from webview--------------------------
  void getPermissions() async{

    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
      Permission.microphone,
      Permission.speech,
    ].request();

    print("----------->>>>>>-------------YE WALA!$statuses[Permission.microphone]");

    var pe=await Permission.contacts.request().isGranted;

    if (pe) {
      isPermitted=true;
    }

    print("--------------->IDHAR!$isPermitted");
  }
  //-------------------------------------------------------------------------------------------------

  @override
  void initState(){
    amIconnected();
    getPermissions();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: isInternet?'/':'/no_internet',
      routes: {
        '/no_internet':(context) =>NoInternet() ,
        '/':(context) =>webView(),
      },
    );
  }


}

