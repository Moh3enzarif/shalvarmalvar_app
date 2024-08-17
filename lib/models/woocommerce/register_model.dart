class CustomerModel {
  String? firstname;
  String? lastname;
  String? email;
  String? password;

  CustomerModel({this.firstname, this.lastname, this.email, this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json.addAll({
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'password': password
    });
    return json;
  }
}
