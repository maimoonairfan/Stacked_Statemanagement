

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_counterapp/service/counter_service.dart';
import 'package:stacked_counterapp/views/counterview.dart';
import 'package:stacked_counterapp/views/homeview.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView,initial: true),
  MaterialRoute(page: HomeView)
],dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService)

])
class App{}