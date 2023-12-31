import 'package:dev_junction_attendance_app/screens/sign_in/sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dev_junction_attendance_app/app_state/state_constants.dart';
import 'package:dev_junction_attendance_app/screens/welcome_screen/welcome_screen.dart';

// This class, StateRepository, manages the application's state-related data
// and preferences using the SharedPreferences library.

class StateRepository {

  // A Future instance for accessing the SharedPreferences.
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  // Sets the 'kDidLogin' key to 'true' in SharedPreferences to indicate a user has logged in.
  void setDidLogin() {
    prefs.then((value) => value.setBool(kDidLogin, true));
  }

  // Retrieves the initial route for the application, based on the 'kDidLogin' key value.
  Future<String> getInitialRoute() async {

    String initialRoute = WelcomeScreen.routeName;

    await prefs.then((value) {

      bool? didLogin = value.getBool(kDidLogin);

      if (didLogin ?? false) {
         initialRoute =  SignIn.routeName;
      } else {

      }
    }).onError((error, stackTrace) {
      initialRoute = WelcomeScreen.routeName;
    });

    return initialRoute;
  }

}
