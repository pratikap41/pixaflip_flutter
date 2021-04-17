
class Pdf{
  String _url, _name, _description;
  bool _isFav = false;

  bool get isFav => _isFav;

  set isFav(bool value) {
    _isFav = value;
  }

  Pdf(this._url, this._name, this._description, this._isFav);

  get description => _description;

  set description(value) {
    _description = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  @override
  String toString() {
    return '$name $isFav';
  }
}
