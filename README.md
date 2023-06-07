This package provides a `Shipbook` class which can log your message to shipbook server.

For example, you can use `Shipbook` in your libraries like this:

```dart
// import.dart
import 'package:shipbook/shipbook.dart';

/// init shipbook
  @override
  void initState() {
    super.initState();

    Shipbook.start(
        'SHIPBOOK_APP_ID', 'SHIPBOOK_TOKEN');
  }
```

...and usage:

```dart
// main.dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Log.i('tag', 'message');
            },
            child: const Text('Log'),
          ),
        ),
      ),
    );
  }
```