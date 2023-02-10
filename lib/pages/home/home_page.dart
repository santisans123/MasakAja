import 'package:masakaja/import/import_main.dart';
import 'package:masakaja/pages/home/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _TopupGameState();
}

class _TopupGameState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Container(
            color: kPrimaryWhiteColor,
            child: ListView(
              children: [
                Carousel(),
                CardMetodeMasak(),
                BoxSinglescroll(
                    title: "Minuman",
                    optionKulkas: false
                ),
                BoxSinglescroll(
                    title: "Kulkasmu",
                    optionKulkas: true
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
