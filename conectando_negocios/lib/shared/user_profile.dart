import 'package:conectando_negocios/models/address.dart';
import 'package:conectando_negocios/models/business.dart';
import 'package:conectando_negocios/models/login.dart';
import 'package:conectando_negocios/models/personal.dart';
import 'package:conectando_negocios/models/revenue.dart';
import 'package:conectando_negocios/models/user_data_model.dart';

class UserProfile {
  static final UserProfile _singleton = new UserProfile._internal();
  UserProfile._internal();
  static UserProfile getInstance() => _singleton;

  Login login = Login();
  Address address = Address();
  Businness businness = Businness();
  Personal personal = Personal();
  Revenue revenue = Revenue();

  UserModel _userModel;

  void setUserModel() {
    _userModel = UserModel(
        login: this.login,
        address: this.address,
        businness: this.businness,
        revenue: this.revenue,
        personal: this.personal);
  }
}
