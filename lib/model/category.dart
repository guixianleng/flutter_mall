class CategoryDataModel {
  int _errno;
  List<CategoryModel> _data;
  String _errmsg;

  CategoryDataModel({int errno, List<CategoryModel> data, String errmsg}) {
    this._errno = errno;
    this._data = data;
    this._errmsg = errmsg;
  }

  int get errno => _errno;
  set errno(int errno) => _errno = errno;
  List<CategoryModel> get data => _data;
  set data(List<CategoryModel> data) => _data = data;
  String get errmsg => _errmsg;
  set errmsg(String errmsg) => _errmsg = errmsg;

  CategoryDataModel.fromJson(Map<String, dynamic> json) {
    _errno = json['errno'];
    if (json['data'] != null) {
      _data = new List<CategoryModel>();
      json['data'].forEach((v) {
        _data.add(new CategoryModel.fromJson(v));
      });
    }
    _errmsg = json['errmsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errno'] = this._errno;
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    data['errmsg'] = this._errmsg;
    return data;
  }
}

class CategoryModel {
  int _id;
  String _name;
  String _keywords;
  String _desc;
  int _pid;
  String _iconUrl;
  String _picUrl;
  String _level;
  int _sortOrder;
  String _addTime;
  String _updateTime;
  bool _deleted;

  CategoryModel (
    {int id,
    String name,
    String keywords,
    String desc,
    int pid,
    String iconUrl,
    String picUrl,
    String level,
    int sortOrder,
    String addTime,
    String updateTime,
    bool deleted}) {
    this._id = id;
    this._name = name;
    this._keywords = keywords;
    this._desc = desc;
    this._pid = pid;
    this._iconUrl = iconUrl;
    this._picUrl = picUrl;
    this._level = level;
    this._sortOrder = sortOrder;
    this._addTime = addTime;
    this._updateTime = updateTime;
    this._deleted = deleted;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get keywords => _keywords;
  set keywords(String keywords) => _keywords = keywords;
  String get desc => _desc;
  set desc(String desc) => _desc = desc;
  int get pid => _pid;
  set pid(int pid) => _pid = pid;
  String get iconUrl => _iconUrl;
  set iconUrl(String iconUrl) => _iconUrl = iconUrl;
  String get picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  String get level => _level;
  set level(String level) => _level = level;
  int get sortOrder => _sortOrder;
  set sortOrder(int sortOrder) => _sortOrder = sortOrder;
  String get addTime => _addTime;
  set addTime(String addTime) => _addTime = addTime;
  String get updateTime => _updateTime;
  set updateTime(String updateTime) => _updateTime = updateTime;
  bool get deleted => _deleted;
  set deleted(bool deleted) => _deleted = deleted;

  CategoryModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _keywords = json['keywords'];
    _desc = json['desc'];
    _pid = json['pid'];
    _iconUrl = json['iconUrl'];
    _picUrl = json['picUrl'];
    _level = json['level'];
    _sortOrder = json['sortOrder'];
    _addTime = json['addTime'];
    _updateTime = json['updateTime'];
    _deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['keywords'] = this._keywords;
    data['desc'] = this._desc;
    data['pid'] = this._pid;
    data['iconUrl'] = this._iconUrl;
    data['picUrl'] = this._picUrl;
    data['level'] = this._level;
    data['sortOrder'] = this._sortOrder;
    data['addTime'] = this._addTime;
    data['updateTime'] = this._updateTime;
    data['deleted'] = this._deleted;
    return data;
  }
}