class MyHistories {
  int? id;
  String? date;
  String? amount;
  String? type;
  String? source;
  String? note;
  String? createdAt;
  String? updatedAt;

  MyHistories(
      {this.id,
      this.date,
      this.amount,
      this.type,
      this.source,
      this.note,
      this.createdAt,
      this.updatedAt});

  MyHistories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    amount = json['amount'];
    type = json['type'];
    source = json['source'];
    note = json['note'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['amount'] = amount;
    data['type'] = type;
    data['source'] = source;
    data['note'] = note;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
