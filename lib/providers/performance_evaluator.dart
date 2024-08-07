import 'package:flutter/foundation.dart';
import '../models/performance_metrics.dart';

class PerformanceEvaluator extends ChangeNotifier {
  PerformanceMetrics? _metrics;

  PerformanceMetrics? get metrics => _metrics;

  void evaluatePerformance() {
    // Simulate gathering of metrics
    _metrics = PerformanceMetrics(
      fps: 60.0,
      memoryUsage: 100.0,
      cpuUsage: 10.0,
      startupTime: Duration(seconds: 2),
    );
    notifyListeners();
  }
}
