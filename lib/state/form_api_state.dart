import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:test_parttime/models/form_api_request_model.dart';
import 'package:test_parttime/models/form_api_response_model.dart';
import 'package:test_parttime/services/repository/form_api_repo.dart';

class FormApiState extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();

  final form = GlobalKey<FormState>();

  final RxBool _isLoading = false.obs;
  RxBool get isLoading => _isLoading;

  final FormApiRepo _repo = FormApiRepo();

  Future<void> requestFormApi() async {
    if (form.currentState!.validate()) {
      // show loading
      _isLoading.value = true;
      FormApiResponse formApiResp = await _repo.requestFormApi(
        FormApiRequest(
          address: address.text,
          name: name.text,
          phone: phone.text,
        ),
      );
      // dismiss loading
      _isLoading.value = false;
      if (formApiResp.msg?.isEmpty ?? true) {
        Fluttertoast.showToast(
            msg: 'Berhasil tambah data, id anda adalah ${formApiResp.id}');
      } else {
        Fluttertoast.showToast(msg: 'Gagal tambah data');
      }
    }
  }
}
