// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:logger/logger.dart';

/// Use instances of logger to send log messages to the [LogPrinter].
final logger = Logger(
  filter: ProductionFilter(),
  level: kDebugMode ? Level.verbose : Level.nothing,
);
