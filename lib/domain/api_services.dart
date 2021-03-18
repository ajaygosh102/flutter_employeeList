import 'package:dio/dio.dart';
import 'package:floges_flutter_app/config/server_addresses.dart';

class ApiServices {
  Dio dio = new Dio();

  ///login
  Future<dynamic> getLogin({Map<String, String> params}) async {
    try {
      var response = await dio.post(
        ServerAddresses.login,
        data: params,
      );
      print('login response------------$response');
      return response;
    } catch (e) {
      return e;
    }
  }

  ///employee list
  Future<dynamic> getEmployeeList({Map<String, String> params}) async {
    try {
      var response = await dio.get(
        '${ServerAddresses.employeeList + params['page']}',
      );
      print('getEmployeeList response------------$response');
      return response;
    } catch (e) {
      return e;
    }
  }
}
