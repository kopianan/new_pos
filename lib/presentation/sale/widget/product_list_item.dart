import 'package:flutter/material.dart';
import 'package:pos/domain/product_data_model.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({
    Key? key,
    this.onTap,
    required this.item,
  });

  final ProductDataModel item;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () {
            onTap!();
          },
          title: Text(
            item.itemName!,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(item.itemCode!),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Rp." + item.itmPriceFmt!,
                style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),
              ),
              Text("Stok : " + double.parse(item.qty!).toStringAsFixed(0)),
            ],
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
        )
      ],
    );
  }
}
