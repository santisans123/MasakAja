import 'package:masakaja/import/import_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
