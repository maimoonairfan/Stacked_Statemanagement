import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/App/app.locator.dart';
import 'package:stacked_counterapp/App/app.router.dart';
import 'package:stacked_counterapp/service/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationservice = locator<NavigationService>();
  final counterservice = locator<CounterService>();

  addcounter() {
    counterservice.addCountervalue();
    rebuildUi();
  }

  navigateToHome() {
    navigationservice.navigateToHomeView();
  }
}
