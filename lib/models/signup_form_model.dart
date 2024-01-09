class SignUpFormModel {
  String? name;
  String? email;
  String? password;
  String? pin;
  String? profilePicture;
  String? ktp;

  SignUpFormModel({
    this.name,
    this.email,
    this.password,
    this.profilePicture,
    this.ktp,
    this.pin,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "profile_picture": profilePicture,
        "ktp": ktp,
        "pin": pin,
      };

  SignUpFormModel copyWith({
    String? pin,
    String? profilePicture,
    String? ktp,
  }) =>
      SignUpFormModel(
        name: name,
        email: email,
        password: password,
        pin: pin ?? this.pin,
        profilePicture: profilePicture ?? this.profilePicture,
        ktp: ktp ?? this.ktp,
      );
}
