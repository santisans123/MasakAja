import 'package:masakaja/import/import_main.dart';

class CardMenu extends StatelessWidget {
  CardMenu({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.bahan,
  }) : super(key: key);

  final String image;
  final String name;
  final String price;
  final String bahan;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          Get.to(DetailMenu(
            bahan: bahan,
            name: name,
            price: price,
            imgPath: image,
          ));
        },
        child: Container(
            width: size.width *0.43,
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.02,
              vertical: size.width * 0.013,
            ),
            decoration: BoxDecoration(
                color: kPrimaryWhiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0,0),
                      blurRadius: 8
                  )
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryWhiteColor,
                  ),
                  width: size.width,
                  height: size.width * 0.35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(image,
                        fit: BoxFit.fill),
                  )
                ),
                SizedBox(height: size.height * 0.005),
                Container(
                  color: kPrimaryWhiteColor,
                  padding: EdgeInsets.only(
                    left: size.width * 0.015,
                  ),
                  child: Text(name, style: TextStyle(
                    color: kPrimaryBlackColor,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.bold
                  )),
                ),
                Container(
                  color: kPrimaryWhiteColor,
                  padding: EdgeInsets.only(
                    left: size.width * 0.015,
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: 'Budget: ',
                      children: <InlineSpan>[
                        TextSpan(
                          text: "Rp$price",
                          style: TextStyle( color: kPrimaryJinggaColor,
                            fontSize: size.width * 0.041,
                            fontWeight: FontWeight.bold,),
                        )
                      ]
                    )
                  ),
                ),
                SizedBox(height: size.height * 0.005),
                Container(
                  width: size.width * 0.415,
                  padding: EdgeInsets.only(
                    left: size.width * 0.015,
                    bottom: size.width * 0.015,
                  ),
                  child: Text("Bahan Utama $bahan", style: TextStyle(
                          fontSize: size.width*0.035
                      ),
                  ),
                )
              ],
            )
        )
    );
  }
}