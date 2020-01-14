class CategoryModel {
  int id;
  String name;
  String keywords;
  String desc;
  int pid;
  String iconUrl;
  String picUrl;
  String level;
  int sortOrder;
  String addTime;
  String updateTime;
  bool deleted;

  // 构造函数
  CategoryModel({
    this.id,
    this.name,
    this.keywords,
    this.desc,
    this.pid,
    this.iconUrl,
    this.picUrl,
    this.level,
    this.sortOrder,
    this.addTime,
    this.updateTime,
    this.deleted
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    keywords = json['keywords'];
    desc = json['desc'];
    pid = json['pid'];
    iconUrl = json['iconUrl'];
    picUrl = json['picUrl'];
    level = json['level'];
    sortOrder = json['sortOrder'];
    addTime = json['addTime'];
    updateTime = json['updateTime'];
    deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['keywords'] = this.keywords;
    data['desc'] = this.desc;
    data['pid'] = this.pid;
    data['iconUrl'] = this.iconUrl;
    data['picUrl'] = this.picUrl;
    data['level'] = this.level;
    data['sortOrder'] = this.sortOrder;
    data['addTime'] = this.addTime;
    data['updateTime'] = this.updateTime;
    data['deleted'] = this.deleted;
    return data;
  }
}