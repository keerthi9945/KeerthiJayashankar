import 'package:e_com_app/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';

class OrderScreenPage extends StatefulWidget {
  const OrderScreenPage({super.key});

  @override
  State<OrderScreenPage> createState() => _OrderScreenPageState();
}

class _OrderScreenPageState extends State<OrderScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: ''),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17, bottom: 17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order ID:  #123465667',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 65),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey, // Set the border color
                          width: 2.0, // Set the border width
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.description_outlined, color: Colors.grey),
                          SizedBox(width: 8),
                          Text(
                            'GST Invoice',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Text(
                    'Order date:',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF667085),
                    ),
                  ),
                  Text(
                    'June 3, 2024',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1D2939),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.local_shipping_outlined,
                    color: Color(0xFF12B76A),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'Estimated delivery: June 16, 2024',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF12B76A),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 130,
                child: Card(
                  color: const Color(0xFFDFDFDF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(71, 158, 158, 158),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/cement_images/image 32.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    'Ramco A1 OPC Cement',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF202226),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'CEMENT, OPC 53 GRADE',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF666666),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    '₹ 450.00',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '₹ 500.00',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w400,
                      color: LIT_BOLD,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 130,
                child: Card(
                  color: const Color(0xFFDFDFDF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(71, 158, 158, 158),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/iron_images/image 38.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    'TATA Steel - 24mm',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF202226),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Madhu Steels',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF666666),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    '₹ 50.00 / KG',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '₹ 55.00',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w400,
                      color: LIT_BOLD,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              const Divider(
                thickness: 2,
                color: Color(0xFFD0D5DD),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Text(
                    'Payment',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Delivery',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    'Visa **56',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF667085),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 24,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                      ),
                      borderRadius:
                          BorderRadius.circular(4), // Rounded border shape
                    ),
                    child: Image.asset(
                      'assets/visa-logo.png',
                      width: 23,
                      height: 7,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Navaneethan',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'No:123, 4th Street  V.O.C Nagar',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4D4D4D),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53, top: 5),
                child: Text(
                  'Karnataka',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF4D4D4D),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 115, top: 5),
                child: Text(
                  textAlign: TextAlign.end,
                  'Bangalore - 500645',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF4D4D4D),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110, top: 5),
                child: Text(
                  textAlign: TextAlign.end,
                  'Phone : 9876543210',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF4D4D4D),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Need Help',
                        style: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.error_outline,
                            color: Color(0xFF667085),
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Order Issues',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF667085),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.arrow_outward_rounded,
                            color: Color(0xFF667085),
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.category,
                            color: Color(0xFF667085),
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Returns',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF667085),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          const Icon(
                            Icons.arrow_outward_rounded,
                            color: Color(0xFF667085),
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Summary',
                        style: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discount',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF667085),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            '₹ -500.00 ',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.030,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF667085),
                            ),
                          ),
                          const SizedBox(
                            width: 57,
                          ),
                          Text(
                            '₹ 200.00 ',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.030,
                      ),
                      Row(
                        children: [
                          Text(
                            'Tax',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF667085),
                            ),
                          ),
                          const SizedBox(
                            width: 85,
                          ),
                          // Divider(
                          //   color: Colors.grey,
                          // ),
                          Text(
                            '₹ 100.00 ',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 7,
                        color: Colors.black,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF667085),
                            ),
                          ),
                          const SizedBox(
                            width: 75,
                          ),
                          Text(
                            '₹ 5000.00 ',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
