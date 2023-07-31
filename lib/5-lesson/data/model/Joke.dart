class Joke {
  Joke({this.userId, this.id, this.title, this.body});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  int? userId;
  int? id;
  String? title;
  String? body;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}