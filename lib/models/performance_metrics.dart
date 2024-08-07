class PerformanceMetrics {
  final double fps;
  final double memoryUsage;
  final double cpuUsage;
  final Duration startupTime;

  PerformanceMetrics({
    required this.fps,
    required this.memoryUsage,
    required this.cpuUsage,
    required this.startupTime,
  });
}
