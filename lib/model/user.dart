import 'dart:convert';
class user {
  String? sId;
  String? username;
  String? email;
  String? password;
  bool? isAdmin;
  List<Null>? houses;
  List<void>? wishlist;
  String? firstname;
  String? lastname;
  int? phoneno;

  user(
      {this.sId,
        this.username,
        this.email,
        this.password,
        this.isAdmin,
        this.houses,
        this.wishlist,
        this.firstname,
        this.lastname,
        this.phoneno});

  user.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    isAdmin = json['isAdmin'];
    /*if (json['houses'] != null) {
      houses = <Null>[];
      json['houses'].forEach((v) {
        houses!.add(Null.fromJson(v));
      });
    }
    if (json['wishlist'] != null) {
      wishlist = <Null>[];
      json['wishlist'].forEach((v) {
        wishlist!.add(new Null.fromJson(v));
      });
    }*/
    firstname = json['firstname'];
    lastname = json['lastname'];
    phoneno = json['phoneno'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['isAdmin'] = this.isAdmin;
  /*  if (this.houses != null) {
      data['houses'] = this.houses!.map((v) => v.toJson()).toList();
    }
    if (this.wishlist != null) {
      data['wishlist'] = this.wishlist!.map((v) => v.toJson()).toList();
    } */
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['phoneno'] = this.phoneno;
    return data;
  }
}