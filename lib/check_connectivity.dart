import 'package:connectivity/connectivity.dart';

class CheckConnectivity{

  Future<bool> is_connected() async{
    var connectivityResult = await(Connectivity().checkConnectivity());
    if ((connectivityResult == ConnectivityResult.mobile) || (connectivityResult == ConnectivityResult.wifi)) {
      return Future.value(true);
    }
    else{
      return Future.value(false);
    }
  }
}
