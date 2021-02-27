import 'package:demo_getit/services/product_list_controller.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setUpGetIt() {
  getIt.registerLazySingleton(() => ProductListController());
}
