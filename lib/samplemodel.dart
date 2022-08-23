class SampleModel {
  String? name;
  int? age;
  String? mobile;

  SampleModel({
    this.name,
    this.age,
    this.mobile,
  });

  SampleModel.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        age = json['age'] as int?,
        mobile = json['mobile'] as String?;

  Map<String, dynamic> toJson() => {"name": name, "age": age, "mobile": mobile};
}
