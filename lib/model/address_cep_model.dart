class AddressCepModel {
  String cep;
  String state;
  String city;
  String neighborhood;
  String street;

  AddressCepModel({this.cep, this.state, this.city, this.neighborhood, this.street});

  AddressCepModel.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    state = json['state'];
    city = json['city'];
    neighborhood = json['neighborhood'];
    street = json['street'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['state'] = this.state;
    data['city'] = this.city;
    data['neighborhood'] = this.neighborhood;
    data['street'] = this.street;
    return data;
  }
}
