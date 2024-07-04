import 'package:logger/logger.dart';

Logger getLogger() => Logger(printer: AppLoggerPrinter(), level: Level.debug);

class AppLoggerPrinter extends LogPrinter {
  

  AppLoggerPrinter();

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.defaultLevelColors[event.level] ?? const AnsiColor.none();
    final emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    final message = event.message;
    return [color('$emoji: $message')];
  }
}