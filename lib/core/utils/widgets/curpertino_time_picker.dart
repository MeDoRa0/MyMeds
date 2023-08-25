import 'package:flutter/cupertino.dart';

void main() => runApp(const TimerPickerApp());

class TimerPickerApp extends StatelessWidget {
  const TimerPickerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: TimerPickerExample(),
    );
  }
}

class TimerPickerExample extends StatefulWidget {
  const TimerPickerExample({Key? key}) : super(key: key);

  @override
  State<TimerPickerExample> createState() => _TimerPickerExampleState();
}

class _TimerPickerExampleState extends State<TimerPickerExample> {
  Duration duration = const Duration(hours: 1, minutes: 23);

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoTimerPicker Sample'),
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 22.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                onPressed: () => _showDialog(
                  CupertinoTimerPicker(
                    mode: CupertinoTimerPickerMode.hm,
                    initialTimerDuration: duration,
                    onTimerDurationChanged: (Duration newDuration) {
                      setState(() => duration = newDuration);
                    },
                  ),
                ),
                child: const Text('Show CupertinoTimerPicker',
                    style: TextStyle(fontSize: 20)),
              ),
              Text('$duration'),
            ],
          ),
        ),
      ),
    );
  }
}
