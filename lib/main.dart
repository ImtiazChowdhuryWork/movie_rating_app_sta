import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:movie_rating_application/bindings/controllers_bindings.dart';
import 'package:movie_rating_application/helper/di.dart';
import 'package:movie_rating_application/helper/helper_methods.dart';
import 'package:movie_rating_application/loading_screen.dart';
import 'package:movie_rating_application/routes/routes.dart';
import 'package:movie_rating_application/utils/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await GetStorage.init();
  await diSetup();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    // setInitialLanguagePreference(); // Ensure language preferences are set
    return LayoutBuilder(
      builder: (context, constraints) {
        return UtilScreenMobile();
      },
    );
  }
}

class UtilScreenMobile extends StatelessWidget {
  const UtilScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(375, 812),
      designSize: const Size(440, 956),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, _) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            // home: WorkCompletedDetailsScreen(),
            debugShowCheckedModeBanner: false,

            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },

            // initialRoute: Routes.welcomeScreen,
            // initialRoute: Routes.selectHeightScreenWidget,
            //initialRoute: Routes.navigationScreen,
            getPages: Routes.appRoutes,
            initialBinding: ControllerBindings(),
            home: Loading(),
            // home: SelectHeightScreenWidget(),
          ),
        );
      },
    );
  }
}
