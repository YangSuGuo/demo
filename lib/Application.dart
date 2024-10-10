import 'package:demo_01/routes/app_pages.dart';
import 'package:demo_01/themes/app_theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late ColorScheme lightColorScheme;
  late ColorScheme darkColorScheme;

  @override
  Widget build(BuildContext context) {
    // 状态管理
    return ScreenUtilInit(
        // 屏幕适配
        designSize: const Size(750.0, 1334.0),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          // 动态主题颜色
          return DynamicColorBuilder(builder: ((ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
            lightColorScheme = lightDynamic?.harmonized() ?? AppTheme.defaultLightColorScheme;
            darkColorScheme = darkDynamic?.harmonized() ?? AppTheme.defaultLightColorScheme;
            return GetMaterialApp(
              // APP 配置
              title: "demo",
              // 主题
              themeMode: ThemeMode.system,
              theme: AppTheme.themeUtils(lightColorScheme),
              darkTheme: AppTheme.themeUtils(darkColorScheme),
              // 路由
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
              defaultTransition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              // 弹框提示
              navigatorObservers: [FlutterSmartDialog.observer],
              builder: FlutterSmartDialog.init(),
              debugShowCheckedModeBanner: false,
            );
          }));
        });
  }
}
