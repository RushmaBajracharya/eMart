import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: appbarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              children: List.generate(
                  20,
                  (index) => Card(
                        child: ListTile(
                          onTap: () {},
                          leading: Image.asset(imgProduct,
                              width: 100, height: 100, fit: BoxFit.cover),
                          title:
                              boldText(text: "Product title", color: fontGrey),
                          subtitle: normalText(text: "\$40.0", color: darkGrey),
                          trailing: VxPopupMenu(
                            arrowSize: 0.0,
                            child: Icon(Icons.more_vert_rounded),
                            menuBuilder: () => Column(
                              children: List.generate(
                                popupMenuIcons.length,
                                (index) => Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Icon(popupMenuIcons[index]),
                                        10.widthBox,
                                        normalText(
                                            text: popupMenuTitles[index],
                                            color: darkGrey)
                                      ],
                                    ).onTap(() {})),
                              ),
                            ).box.white.rounded.width(200).make(),
                            clickType: VxClickType.singleClick,
                          ),
                        ),
                      ))),
        ),
      ),
    );
  }
}
