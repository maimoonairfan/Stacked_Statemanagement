import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/viewmodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(viewModel.counterservice.counter.toString()),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      viewModel.addcounter();
                    },
                    child: Text("Add Counter Value")),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToHome();
                    },
                    child: Text("Navigate to Home"))
              ],
            ),
          ),
        );
      },
    );
  }
}
