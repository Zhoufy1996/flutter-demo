class Novel {
  final String title;
  final String content;
  final String lastReadText;
  final String path;

  Novel(this.title, this.content, this.lastReadText, this.path);

  Novel.fromJson(Map<String, dynamic> json)
      : title = json["title"] ?? "",
        content = json['content'] ?? "",
        lastReadText = json["lastReadText"] ?? "",
        path = json['path'] ?? "";

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'content': content,
        'lastReadText': lastReadText,
        'path': path,
      };
}
