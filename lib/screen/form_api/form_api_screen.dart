import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_parttime/state/form_api_state.dart';
import 'package:test_parttime/utils/color.dart';
import 'package:test_parttime/widget/atoms/text_widget.dart';
import 'package:test_parttime/widget/molecules/app_bar_widget.dart';
import 'package:test_parttime/widget/molecules/input_text_widget.dart';
import 'package:test_parttime/widget/molecules/primary_button_widget.dart';

class FormApiScreen extends StatelessWidget {
  FormApiScreen({Key? key}) : super(key: key);
  final FormApiState _control = Get.put(FormApiState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: CAppBar(
          title: 'Form API',
          action: Container(),
          leading: Container(),
          color: CColor.red,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Form(
          key: _control.form,
          child: Column(
            children: [
              CText(
                'Data Diri',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 40,
              ),
              CInputText(
                  textEditingController: _control.name,
                  hintText: 'Isi Nama Anda'),
              const SizedBox(
                height: 20,
              ),
              CInputText(
                  textEditingController: _control.address,
                  hintText: 'Isi Alamat Anda'),
              const SizedBox(
                height: 20,
              ),
              CInputText(
                textEditingController: _control.phone,
                hintText: 'Isi No Telp Anda',
                keyboardType: TextInputType.number,
              ),
              Expanded(child: Container()),
              PrimaryButton(
                text: 'Daftar',
                onTap: () => _control.requestFormApi(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
