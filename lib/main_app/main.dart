import 'package:flutter/material.dart';
import '../app_state/state_repository.dart';
import '../navigation/locator.dart';
import 'dev_junction_app.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  setup();

  Future<String> initialRoute() async {

    StateRepository repo = locator<StateRepository>();

    return await repo.getInitialRoute();
  }

  runApp(DevJunctionApp(
    initialRoute: await initialRoute(),
  ));
}



