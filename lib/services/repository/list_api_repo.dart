import 'package:test_parttime/models/list_api_response_model.dart';
import 'package:test_parttime/services/network/base_repo.dart';
import 'package:test_parttime/services/network/base_result.dart';

class ListApiRepo extends BaseRepo {
  Future<ListApiResponse> requestListApi() async {
    BaseResult response = await get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=d296ca75e77481fb4bed199075ea7901');
    switch (response.status) {
      case ResponseStatus.Success:
        return ListApiResponse.fromJson(response.data);
      default:
        return ListApiResponse();
    }
  }
}
