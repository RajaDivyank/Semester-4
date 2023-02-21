class UserModel{
  late int _UserID;
  late String _Username;
  late int _Age;
  late String _City;

  //region GET & SET DATA
  int get UserID => _UserID;
  set UserID(int UserID) {
    _UserID = UserID;
  }

  String get Username => _Username;
  set Username(String Username) {
    _Username = Username;
  }

  int get Age => _Age;
  set Age(int Age) {
    _Age = Age;
  }

  String get City => _City;
  set City(String City) {
    _City = City;
  }
}