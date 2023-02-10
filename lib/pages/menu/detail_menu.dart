import 'dart:io';
import 'package:masakaja/pages/menu/components/buttombar_detail_menu.dart';
import 'package:share_plus/share_plus.dart';
import 'package:masakaja/import/import_main.dart';

class DetailMenu extends StatefulWidget {
  const DetailMenu({
    Key? key,
    required this.imgPath,
    required this.name,
    required this.price,
    required this.bahan,
  }) : super(key: key);

  final String imgPath;
  final String name;
  final String price;
  final String bahan;

  @override
  State<DetailMenu> createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final deskripsiController = TextEditingController();
    deskripsiController.text = "${widget.name}\n"
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
        "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

    void _share(BuildContext context) async {
      if (widget.imgPath != null) {
        ByteData imagebyte = await rootBundle.load('${widget.imgPath}');
        final temp = await getTemporaryDirectory();
        final path = '${temp.path}/image1.jpg';
        File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
        await Share.shareFiles([path],
            text:
            'Dapatkan ${widget.name} Rp${widget.price} di aplikasi kami di link:');
        Share.shareXFiles([XFile('${widget.imgPath}')], text: 'Dapatkan ${widget.name} Rp${widget.price} di https://');
      } else {
        await Share.share(
          'Dapatkan ${widget.name} Rp${widget.price} di aplikasi kami di link:',
        );
      }
    }

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
                  IconButton(
                    constraints: BoxConstraints(),
                    padding: const EdgeInsets.all(0),
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () async {},
                  ),
                  IconButton(
                      constraints: BoxConstraints(),
                      padding: const EdgeInsets.all(0),
                      icon: Icon(Icons.share),
                      onPressed: () {
                        _share(context);
                      }),
                  SizedBox(width: size.width * 0.02)
                ],
              )
            ],
          ),
          body: Container(
              color: kPrimaryWhiteColor,
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.imgPath),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Divider(
                    color: kPrimaryLightWhiteColor,
                    thickness: 1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: kPrimaryWhiteColor,
                          padding: EdgeInsets.only(
                            left: size.width * 0.015,
                          ),
                          child: Text(widget.name,
                              style: TextStyle(
                                  color: kPrimaryBlackColor,
                                  fontSize: size.width * 0.05,
                                  letterSpacing: 0.5)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.width * 0.01),
                          color: kPrimaryWhiteColor,
                          padding: EdgeInsets.only(
                            left: size.width * 0.015,
                          ),
                          child: Text("Budget: Rp${widget.price}",
                              style: TextStyle(
                                color: kPrimaryJinggaColor,
                                fontSize: size.width * 0.05,
                              )),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02,
                                    vertical: size.width * 0.015),
                                child: Text("Bahan Utama ${widget.bahan}",
                                    style: TextStyle(fontSize: size.width * 0.04))),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.015),
                              child: LikeButton(),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.015),
                                child: IconButton(
                                  constraints: BoxConstraints(),
                                  padding: const EdgeInsets.all(0),
                                  icon: Icon(Icons.share),
                                  onPressed: () {
                                    _share(context);
                                  },
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: kPrimaryLightWhiteColor,
                    thickness: 8,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.01,
                    ),
                    child: Row(
                      children: [
                        Text("List Budget",
                            style: TextStyle(
                              fontSize: size.width * 0.035,
                            )),
                        Spacer(),
                        Icon(
                          Icons.chevron_right,
                          size: MediaQuery.of(context).size.width * 0.07,
                          color: kPrimaryGreyColor,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: kPrimaryLightGreyColor,
                    thickness: 1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                    ),
                    child: Row(
                      children: [
                        Text("Bahan - Bahan",
                            style: TextStyle(
                              fontSize: size.width * 0.045,
                            )),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Get.snackbar('Copy', 'Berhasil Menyalin Deskripsi');
                            Clipboard.setData(
                                ClipboardData(text: deskripsiController.text));
                          },
                          icon: Icon(
                            Icons.copy,
                            size: MediaQuery.of(context).size.width * 0.055,
                            color: kPrimaryGreyColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.width * 0.01,
                      ),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color:
                                  kPrimaryDarkGreyColor), //style for all textspan
                              children: [
                                // TextSpan(
                                //     text: "Deskripsi \n",
                                //     style: TextStyle(
                                //       fontSize: size.width * 0.035,
                                //       color: kPrimaryBlackColor,
                                //     )),
                                WidgetSpan(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      bottom: size.width * 0.055,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                    text: deskripsiController.text,
                                    style: TextStyle(
                                      fontSize: size.width * 0.03,
                                    )),
                              ])))
                ],
              )
          ),
          bottomNavigationBar: BottombarDetailMenu(
            link: () {

            },
          ),
        ),
    );
  }
}
