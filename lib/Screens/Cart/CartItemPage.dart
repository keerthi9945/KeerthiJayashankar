import 'package:flutter/material.dart';
import 'package:e_com_app/Screens/cement.dart';

class CartItemPage extends StatefulWidget {
  final CementProduct cementProduct;
  final VoidCallback removeItem;

  const CartItemPage({
    Key? key,
    required this.cementProduct,
    required this.removeItem,
  }) : super(key: key);

  @override
  _CartItemPageState createState() => _CartItemPageState();
}

class _CartItemPageState extends State<CartItemPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Checkbox(
                  value: _isChecked,
                  activeColor: Color(0xFF001F3F),
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
              ),
              Container(
                height: 125,
                width: 318, // Set width for the image container
                decoration: BoxDecoration(
                  color: Color(0xFFD3D3D3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  widget.cementProduct.imagePath,
                  // fit: BoxFit
                  //     .cover, // Ensure the image fits well within the container
                ),
              ),
            ],
          ),
          const SizedBox(height: 10), // Space between image and text
          Padding(
            padding: const EdgeInsets.only(left: 57),
            child: Flexible(
              child: Row(
                children: [
                  Text(
                    widget.cementProduct.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 60),
                  Container(
                    width: 92,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFD3D3D3),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.remove),
                        SizedBox(width: 5),
                        Text("100"),
                        SizedBox(width: 5),
                        Icon(Icons.add)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 57),
            child: Text(widget.cementProduct.description),
          ),

          // Align(
          //   alignment: Alignment.centerRight,
          //   child: IconButton(
          //     icon: const Icon(Icons.delete),
          //     onPressed: widget.removeItem,
          //   ),
          // ),
        ],
      ),
    );
  }
}
