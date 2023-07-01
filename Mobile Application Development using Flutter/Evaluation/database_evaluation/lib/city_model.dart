class CityModel {
  int? _CityId;
  String? _CityName;

  String? get CityName => _CityName;
  set CityName(String? value) {
    _CityName = value;
  }

  int? get CityId => _CityId;
  set CityId(int? value) {
    _CityId = value;
  }
}