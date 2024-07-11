import 'dart:async';

import 'package:avalon_fire/services/snackbar_service.dart';
import 'package:avalon_fire/utils/navigation/pages.dart';
import 'package:avalon_fire/utils/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'design/theme/app_theme.dart';
import 'locale/locale.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  Get.put(
    SnackbarService(),
  );

  runApp(
    const AvalonFireApp(),
  );
}

class AvalonFireApp extends StatelessWidget {
  const AvalonFireApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        child: GetMaterialApp(
          title: 'Avalon fire',
          theme: avalonFireTheme,
          transitionDuration: const Duration(milliseconds: 300),

          /// Translation
          locale: Localization.locale,
          translations: Localization(),

          /// Routes
          getPages: pages,
          initialRoute: AvalonFireRoutes.homeScreen,
          //initialBinding: HomeScreenBinding(),
        ),
      );
}
