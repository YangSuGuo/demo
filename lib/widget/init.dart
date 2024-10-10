import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Init extends StatefulWidget {
  const Init({super.key, required this.child});

  final Widget child;

  @override
  State<Init> createState() => _InitState();
}

class _InitState extends State<Init> {
  late final AppLifecycleListener _appLifecycleListener;

  @override
  void initState() {
    super.initState();

    /// App 生命周期
    _appLifecycleListener = AppLifecycleListener(
      onResume: () => print('App Resume'),
      onInactive: () => print('App Inactive'),
      onHide: () => print('App Hide'),
      onShow: () => print('App Show'),
      onPause: () => print('App Pause'),
      onRestart: () => print('App Restart'),
      onDetach: () => print('App Detach'),
    );
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();
    super.dispose();
  }

  /// 是否深色模式
  bool isDarkMode(BuildContext context) {
    Theme.of(context);
    return View.of(context).platformDispatcher.platformBrightness == Brightness.dark;
  }

  @override
  Widget build(BuildContext context) {
    /// 沉浸状态栏
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      isDarkMode(context)
          ? SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarColor: Colors.transparent)
          : SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Colors.transparent,
            ),
    );
    return widget.child;
  }
}
