import 'package:homerentpro/constraints/global_variables.dart';

import '../model/user.dart';
import 'package:http/http.dart'as http;
class AuthService{
  void signUpUser(
  {
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
   http.post(Uri.parse('$uri/api/auth/register'));
  } catch(e){}

  }
}