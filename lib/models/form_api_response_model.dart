class FormApiResponse {
  String? name;
  String? address;
  String? phone;
  String? id;
  String? msg;

  FormApiResponse({this.name, this.address, this.phone, this.id, this.msg});

  FormApiResponse.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    id = json['id'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['id'] = this.id;
    data['msg'] = this.msg;
    return data;
  }
}