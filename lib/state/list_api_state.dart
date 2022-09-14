import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:test_parttime/models/list_api_response_model.dart';
import 'package:test_parttime/services/repository/list_api_repo.dart';

class ListApiState extends GetxController {
  final ListApiRepo _repo = ListApiRepo();

  final Rx<ListApiResponse> _data = ListApiResponse().obs;
  Rx<ListApiResponse> get data => _data;

  final RxBool _isLoading = false.obs;
  RxBool get isLoading => _isLoading;

  @override
  void onReady() {
    requestListApi();
    super.onReady();
  }

  Future<void> requestListApi() async {
    // show loading
    _isLoading.value = true;
    ListApiResponse listApiResp = await _repo.requestListApi();
    if (listApiResp.totalResults! > 0) {
      _data.value = listApiResp;
    } else {
      Fluttertoast.showToast(msg: 'Data Kosong');
    }
    // dismiss loading
    _isLoading.value = false;
  }
}
