import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/performance_evaluator.dart';
import 'screens/performance_report_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PerformanceEvaluator(),
      child: PerformanceReportApp(),
    ),
  );
}

class PerformanceReportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PerformanceReportScreen(),
    );
  }
}
