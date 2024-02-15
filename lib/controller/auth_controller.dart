import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:machine_test/api/api_key.dart';
import 'package:machine_test/model/user_model.dart';


/// This is the API functionality used to post the login request to the backend
class AuthController {
///Creating an instance of dio package to pass the API URL
  final Dio _dio;
  AuthController(this._dio);

///Calls the future function for post data 
  Future<void> postData(UserModel apiModel) async {
    try {
/// Using the crypto library we hash the password in the string format to SHA256 format for the encryption
      String hashedPassword =
          sha256.convert(utf8.encode(apiModel.password)).toString();
///Converted password and username fetched from model class passes along with the grant_type in form data
      FormData formData = FormData.fromMap({
        'username': apiModel.username,
        'password': hashedPassword,
        'grant_type': 'password',
      });
///In the dio options we pass the Authorization token 
      _dio.options.headers['Authorization'] = basicAuth;
///Stores the response after calling the postdata API
      Response response = await _dio.post(apiEndpoint, data: formData);
      if (response.statusCode == 200) {
        log('login successfull');
        
      }
    } catch (e) {
      log('Error  occured in logging:$e');
      rethrow;
    }
  }
}
