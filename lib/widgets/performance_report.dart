import 'package:flutter/material.dart';
import '../models/performance_metrics.dart';

class PerformanceReport extends StatelessWidget {
  final PerformanceMetrics metrics;

  PerformanceReport({required this.metrics});

  List<Widget> _buildActionables() {
    List<Widget> actionables = [];

    if (metrics.fps < 60) {
      actionables.add(Text('Improve frame rate by optimizing widget build methods.'));
    }
    if (metrics.memoryUsage > 150) {
      actionables.add(Text('Reduce memory usage by disposing of unused objects.'));
    }
    if (metrics.cpuUsage > 20) {
      actionables.add(Text('Optimize CPU usage by reducing heavy computations in the main thread.'));
    }
    if (metrics.startupTime > Duration(seconds: 2)) {
      actionables.add(Text('Reduce app startup time by deferring non-critical work.'));
    }

    return actionables;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('FPS: ${metrics.fps}'),
        Text('Memory Usage: ${metrics.memoryUsage} MB'),
        Text('CPU Usage: ${metrics.cpuUsage} %'),
        Text('Startup Time: ${metrics.startupTime.inSeconds} seconds'),
        SizedBox(height: 20),
        Text('Actionables:', style: TextStyle(fontWeight: FontWeight.bold)),
        ..._buildActionables(),
      ],
    );
  }
}
