class UserListModel {
  int? page;
  int? perPage;
  int? total;
  int? totalPage;
  List<Data>? data;
  Support? support;

  UserListModel(
      {this.page,
      this.perPage,
      this.total,
      this.totalPage,
      this.data,
      this.support});

  UserListModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPage = json['total_pages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    support =
        json['support'] != null ? new Support.fromJson(json['support']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = page;
    data['per_page'] = perPage;
    data['total'] = total;
    data['total_pages'] = totalPage;
    if (this.data != null) {
      data['data'] = this.data!.map((e) => e.toJson()).toList();
    }
    if (this.data != null) {
      data['support'] = this.support!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;
  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;

    return data;
  }
}

class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

  Support.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = url;
    data['text'] = text;

    return data;
  }
}
