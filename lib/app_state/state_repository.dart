import 'package:shared_preferences/shared_preferences.dart';
import 'package:dev_junction_attendance_app/app_state/state_constants.dart';
import 'package:dev_junction_attendance_app/screens/welcome_screen/welcome_screen.dart';

class StateRepository {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  void setDidLogin() {
    prefs.then((value) => value.setBool(kDidLogin, true));
  }

  Future<String> getInitialRoute() async {

    String initialRoute = WelcomeScreen.routeName;

    await prefs.then((value) {

      bool? didLogin = value.getBool(kDidLogin);

      if (didLogin ?? false) {
        // initialRoute =  Classname.routeName;
      } else {

      }
    }).onError((error, stackTrace) {
      initialRoute = WelcomeScreen.routeName;
    });

    return initialRoute;
  }

}
