import 'package:masakaja/import/import_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _TopupGameState();
}

class _TopupGameState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Container(
            color: kPrimaryWhiteColor,
            padding: EdgeInsets.symmetric(
              horizontal: size_width * 0.02,
            ),
            child: ListView(
              children: [
                Carousel(),
                Text("Mau Menu Apa Hari Ini?",
                    style: TextStyle(
                        fontSize: size_width * 0.045,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5)),
                Text("Pilih Metode Memasak Yang Disukai"),
                SizedBox(height: size_width * 0.015),
                MetodeMasak(),
                SeeMore(title: "Minuman"),
                HorizontalScroll(minuman: menuMinuman[0], bahanKulkas: menuKulkas[0], statusKulkas: false),
                SeeMore(title: "Manfaatkan Kulkasmu"),
                HorizontalScroll(minuman: menuMinuman[0], bahanKulkas: menuKulkas[0], statusKulkas: true),
              ],
            ),
          ),
        )),
    );
  }
}
