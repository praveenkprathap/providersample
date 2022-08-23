class Hit {
  String? created;
  List<String?>? tags;
  HighLightResult? highlightResult;
}

class HighLightResult {
  List<Title?> title = [];
  HighLightResult.fromJson(Map<String, dynamic> json) {
    json['title'].forEach((e) {
      title.add(Title.fromJson(e));
    });
  }
}

class Title {
  String? value;
  String? matchLevel;

  Title({this.value, this.matchLevel});

  Title.fromJson(Map<String, String> json)
      : value = json['value'],
        matchLevel = json['matchLevel'];
}
