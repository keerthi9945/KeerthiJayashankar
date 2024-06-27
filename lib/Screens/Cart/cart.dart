import 'package:e_com_app/Screens/Cart/CartItemPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Screens/bottom_drawer.dart';
import 'package:e_com_app/Screens/cement.dart';
import 'package:e_com_app/Screens/Cart/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final TextEditingController _pincodeController = TextEditingController();
  bool _showError = false; // Initialize _showError for pincode validation

  @override
  void dispose() {
    _pincodeController.dispose();
    super.dispose();
  }

  void _validatePincode(String value) {
    setState(() {
      // Simple validation logic
      _showError = value.isNotEmpty && value != '1234';
    });
  }

  bool? _radioValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/logoo.png'),
            ),
            const SizedBox(width: 8),
            Text(
              'Your App Title',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Handle favorite action
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Image.asset('assets/Menu.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.030),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF6F8FA),
                        hintText: 'Search',
                        hintStyle: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          color: LIT_BOLD,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.blue.withOpacity(0.5),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 15.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: BOLD,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.tune,
                        color: Color(0xFFFFFFFF),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const BottomDrawerContent();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.030),
              Text(
                'Cart',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(230, 228, 228, 1),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Code',
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue: _radioValue,
                            onChanged: (bool? value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            },
                          ),
                          Text(
                            'Pincode',
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.bold,
                              color: LIT_BOLD,
                            ),
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: TextField(
                              controller: _pincodeController,
                              onChanged: _validatePincode,
                              decoration: InputDecoration(
                                labelStyle: TEXT_STYLE.copyWith(
                                  fontSize: SIZE_SM,
                                  fontWeight: FontWeight.bold,
                                  color: LIT_BOLD,
                                ),
                                labelText: 'Enter Pincode',
                                border: const OutlineInputBorder(),
                                errorText:
                                    _showError ? 'Invalid pincode' : null,
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Consumer<CartModel>(
                builder: (context, cart, child) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return CartItemPage(
                        cementProduct: item,
                        removeItem: () => cart.removeItem(item),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
