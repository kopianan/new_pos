import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/product_data_model.dart';

class ProductCartItem extends StatelessWidget {
  const ProductCartItem({
    Key? key,
    this.onDelete,
    required this.onAdd,
    required this.onDecrease,
    required this.item,
  });

  final ProductDataModel item;
  final Function? onDelete;
  final Function onDecrease;
  final Function onAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          fit: StackFit.loose,
          children: [
            ListTile(
              title: Text(
                item.itemName!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      onDecrease();
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.remove),
                      backgroundColor: Colors.blueGrey,
                      radius: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      item.totalBuy.toString(),
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      onAdd();
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.add),
                      backgroundColor: Colors.blueGrey,
                      radius: 12,
                    ),
                  ),
                ],
              ),
              subtitle: Text("Stok : " + item.qty!),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    NumberFormat.currency(symbol: "Rp.", decimalDigits: 0)
                        .format(double.parse(item.itemPrice!) * item.totalBuy),
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Positioned(
              width: 80,
              height: 20,
              top: 0,
              right: 0,
              child: InkWell(
                onTap: () {
                  onDelete!();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Hapus",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(
          height: 0,
          thickness: 1,
        )
      ],
    );
  }
}
