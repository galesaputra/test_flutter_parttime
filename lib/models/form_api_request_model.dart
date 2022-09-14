class FormApiRequest {
  String? name;
  String? address;
  String? phone;
  String? id;

  FormApiRequest({this.name, this.address, this.phone, this.id});

  FormApiRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['id'] = this.id;
    return data;
  }
}