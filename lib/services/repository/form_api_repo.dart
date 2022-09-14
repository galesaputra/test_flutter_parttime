import 'package:test_parttime/models/form_api_request_model.dart';
import 'package:test_parttime/models/form_api_response_model.dart';
import 'package:test_parttime/services/network/base_repo.dart';
import 'package:test_parttime/services/network/base_result.dart';

class FormApiRepo extends BaseRepo {
  Future<FormApiResponse> requestFormApi(FormApiRequest body) async {
    BaseResult response = await post(
      'https://63209030e3bdd81d8efd4b27.mockapi.io/post',
      body: body,
    );
    print('response$response');
    switch (response.status) {
      case ResponseStatus.Success:
        return FormApiResponse.fromJson(response.data);
      default:
        return FormApiResponse(msg: 'fail');
    }
  }
}
