class BaseParams {
  static const Map<String, dynamic> masterSetting = {
    "keyword": "",
    "page": "",
    "limit": "",
    "is_active": "",
    "set_group": "",
    "sort": "",
    "order": "",
  };

  static const Map<String, dynamic> masterCategory = {
    "keyword": "",
    "page": "",
    "limit": "",
    "offset": "",
    "sort": "",
    "order": "",
  };

  static const Map<String, dynamic> questionnare = {
    "type":"",
    "is_active": true
  };

  static const Map<String, dynamic> questionnareResult = {
    "type":""
  };

  static const Map<String, dynamic> notificationHistory ={
    "page" : "1",
    "limit" : "10",
    "offset" : "",
    "sort" : "",
    "order" : "asc",
  };

  static const Map<String, dynamic> memberShipPoint = {
    "sort": "desc"
  };

  static const Map<String, dynamic> paramsTopics = {
    "cat_code": "",
    "order": "topics.id",
    "sort": "desc",
    "page": "",
  };

  static const Map<String, dynamic> paramsAnalytic= {
    "month" : 6
  };

}
