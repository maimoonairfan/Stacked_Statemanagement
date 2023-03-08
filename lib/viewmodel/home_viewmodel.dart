import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/App/app.locator.dart';
import 'package:stacked_counterapp/service/counter_service.dart';

class HomeViewModel extends BaseViewModel{
  final counterservice = locator<CounterService>();
}