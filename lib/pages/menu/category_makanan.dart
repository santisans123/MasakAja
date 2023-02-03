import 'package:masakaja/import/import_main.dart';

class CategoryMakanan extends StatefulWidget {
  const CategoryMakanan({Key? key}) : super(key: key);

  @override
  State<CategoryMakanan> createState() => _TopupGameState();
}

class _TopupGameState extends State<CategoryMakanan> {
  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            // leading: GestureDetector(
            //   onTap: () {
            //
            //   },
            //   child: Column(
            //     children: [
            //       Container(
            //         padding: EdgeInsets.only(top: 15),
            //         child: Icon(Icons.arrow_back, color: kPrimaryWhiteColor),
            //       ),
            //     ],
            //   ),
            // ),
            title: Center(child: Text("Aneka Makanan")),
          ),
          body: Container(
                  color: kPrimaryWhiteColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: size_width * 0.03,
                  ),
                  child: Stack(
                    children: [
                      ListView(
                        padding: EdgeInsets.only(
                          top: size_width * 0.025,
                        ),
                        children: [
                          Container(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/makanan/ide_masak.jpg',
                              alignment: Alignment.topCenter,
                              height: size_width * 0.45,
                              fit: BoxFit.fill,
                            ),
                          )),
                          SizedBox(height: size_width * 0.015),
                          Text("Mau Menu Apa Hari Ini?",
                              style: TextStyle(
                                  fontSize: size_width * 0.045,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5)),
                          Text("Pilih Metode Memasak Yang Disukai"),
                          SizedBox(height: size_width * 0.015),
                          Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              CardCategory(image: "assets/makanan/tumis.jpg", text: "Tumis Sayur"),
                              CardCategory(image: "assets/makanan/goreng.jpg", text: "Olahan Goreng"),
                              CardCategory(image: "assets/makanan/sop.jpg", text: "Kuah"),
                              CardCategory(image: "assets/makanan/kukus.jpg", text: "Kukus"),
                              CardCategory(image: "assets/makanan/rebus.jpg", text: "Rebus"),
                              CardCategory(image: "assets/makanan/bakar.jpg", text: "Bakar")
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
          ),
        ),
      ),
    );
  }
}
