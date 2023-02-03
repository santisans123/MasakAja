import 'package:masakaja/import/import_main.dart';

class ListMenu extends StatelessWidget {
  const ListMenu(
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget back() => GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );

    return MaterialApp(

        home: Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              leading: back(),
              title: SearchBar(),
              actions: <Widget>[
                Row(
                  children: [
                    Text("Filter"),
                    IconButton(
                      constraints: BoxConstraints(),
                      padding: const EdgeInsets.all(0),
                      icon: Icon(Icons.filter_alt),
                      onPressed: () async {
                      },
                    ),
                  ],
                )
              ],
            ),
            body: Container(
                margin: EdgeInsets.only(top: size.height*0.013),
                child: ListView(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        CardMenu(
                          name: "Telur orak arik sosis",
                          image: "assets/makanan/telur_orakarik.jpeg",
                          price: "25.000",
                          bahan: "telur",
                        ),
                        CardMenu(
                          name: "Oseng Kacang Panjang",
                          image: "assets/makanan/oseng _kacangpanjang.jpeg",
                          price: "20.000",
                          bahan: "kacang panjang",
                        ),
                        CardMenu(
                          name: "Sayur Taoge Tahu",
                          image: "assets/makanan/taoge_tahu.jpeg",
                          price: "15.000",
                          bahan: "tahu",
                        ),
                        CardMenu(
                          name: "Fu Yung Hai",
                          image: "assets/makanan/fuyunghai.jpeg",
                          price: "25000",
                          bahan: "telur",
                        ),
                      ],
                    )
                  ],
                )
            )
        )
    );
  }
}