import 'dart:convert';

import 'package:base_architecture/core/models/user.dart';
import 'package:http/http.dart' as http;

class Api {
    static const urlBase = '';
    http.Client client = new http.Client();

    Future<User> getCredentials(String email, String password) async {
        
        var response = await client.get('$urlBase/Login?email=$email');
        var map = json.decode(response.body); 

        if(map['message'] == 'OK') {
            return User.fromJson(map['content']);
        } else {
            return null;
        }
    }
}