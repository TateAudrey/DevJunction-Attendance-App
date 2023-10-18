import 'package:get_it/get_it.dart';
import '../app_state/state_repository.dart';

GetIt locator = GetIt.instance;


void setup() {

  //Repositories
  locator.registerLazySingleton(() => StateRepository());

}