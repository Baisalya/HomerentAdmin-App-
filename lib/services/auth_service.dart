import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homerentpro/constraints/global_variables.dart';

import '../constraints/error_handling.dart';
import '../constraints/utill.dart';
import '../model/user.dart';
import 'package:http/http.dart'as http;
class AuthService{
  void signUpUser(
  {
    required BuildContext  context,
  required String email,
  required String password,
  required String name,
})async{
    try{
   User user=User(
     sId:'',
     firstname:'',
     lastname:'',
     password:password,
     isAdmin: true,
     username:'',
   );
   http.Response res=await http.post(
     Uri.parse('$uri/api/auth/register'),
     body:user.toJson(),
     headers: <String,String>{
       'Content-Type':'application/json; charset=UTF-8'
     }
   );
   print(res.statusCode);
   httpErrorHandel(
       response:res,
       context:context,
       onSuccess: (){
         showSnackBar(context,'Account Created!Login with credintial');
       });
  } catch(e){}

  }
}