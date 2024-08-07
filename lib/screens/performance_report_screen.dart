import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/performance_evaluator.dart';
import '../widgets/performance_report.dart';

class PerformanceReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final evaluator = Provider.of<PerformanceEvaluator>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Performance Report'),
      ),
      body: Center(
        child: evaluator.metrics == null
            ? ElevatedButton(
                onPressed: () => evaluator.evaluatePerformance(),
                child: Text('Evaluate Performance'),
              )
            : PerformanceReport(metrics: evaluator.metrics!),
      ),
    );
  }
}
