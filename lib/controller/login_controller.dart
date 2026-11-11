import 'dart:convert';

import 'package:my_first_flutter_project/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController{

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  // method hit API
  void login() async{
    if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
      Get.snackbar("error", "username dan password harus terisi");
    }else{

      try {
        
        isLoading.value = true; // sebagai tanda di page nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username" : txtUsername.text.toString(),
          "password" : txtPassword.text.toString()
        });

        isLoading.value = false;
        if(response.statusCode == 200){
          // kita ambil jsonnya message pindah tampilan ke main menu
          // contoh json yang paling sederhana, next pertemuan json yang kompleks
          loginModel.value = loginModelFromJson(response.body);
          
          if(loginModel.value?.status == true){
            Get.snackbar("berhasil", loginModel.value!.message.toString());
            // pindah ke main menu
            // get.off karena login nya di close
            // carilah satu free api (sport db) yang return nya adalah json array
            // di push ke git jam 10.30 
          }else{
            Get.snackbar("gagal", loginModel.value!.message.toString());
          }

        }else{
          Get.snackbar("gagal", "cek internet connection");
        }



      } catch (e) {
        Get.snackbar("gagal", e.toString());
        print("error nya "+e.toString());
      }

    }
  }

  
}