import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_parttime/screen/list_api/widget/card_widget.dart';
import 'package:test_parttime/state/list_api_state.dart';
import 'package:test_parttime/utils/color.dart';
import 'package:test_parttime/widget/molecules/app_bar_widget.dart';

class ListApiScreen extends StatelessWidget {
  ListApiScreen({Key? key}) : super(key: key);

  final ListApiState _control = Get.put(ListApiState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: CAppBar(
          title: 'List API',
          action: Container(),
          leading: Container(),
          color: CColor.red,
        ),
      ),
      body: Obx(
        () => _control.isLoading.value
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              )
            : ListView.separated(
                separatorBuilder: (BuildContext context, int index) => const SizedBox(
                  height: 10,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: _control.data.value.results?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return CardWidget(
                    title: _control.data.value.results?[index].title,
                    imageUrl: _control.data.value.results?[index].posterPath,
                  );
                },
              ),
      ),
    );
  }
}
