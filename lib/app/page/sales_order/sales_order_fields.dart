import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class SaleOrderFields extends StatefulWidget {
  const SaleOrderFields({Key? key}) : super(key: key);

  @override
  State<SaleOrderFields> createState() => _SaleOrderFieldsState();
}

TextEditingController amountcontroller = TextEditingController();
TextEditingController consumercontoller = TextEditingController();
TextEditingController selectAccountsController = TextEditingController();
TextEditingController selectCustomercontroller = TextEditingController();
TextEditingController selectSaleManController = TextEditingController();

final List<String> list = [
  'Wayanad',
  'Caliut',
  'kanuur',
  'Thiruvananthapuram',
  'Alappuzha',
  'Kochi'
];

String? validations(value) {
  RegExp regex = RegExp(r'^.{0,}$');
  if (value!.isEmpty) {
    return ("Enter The Field");
  }
  if (!regex.hasMatch(value)) {
    return ("Enter Valid data");
  }
  return null;
}

headings(String heading) {
  return Padding(
    padding: const EdgeInsets.only(left: 9, top: 16),
    child: Text(
      heading,
      style: const TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.w600,
        fontSize: 13,
        color: Color(0xFF838383),
      ),
    ),
  );
}

class _SaleOrderFieldsState extends State<SaleOrderFields> {
  final formKeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14, left: 12, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headings("Cash accounts"),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 214, 210, 210),
                    blurRadius: 7.0,
                    spreadRadius: 0.9,
                  ),
                ],
              ),
              child: CustomDropdown.search(
                errorBorderSide: const BorderSide(
                  color: Color.fromARGB(255, 237, 99, 89),
                  width: 1,
                ),
                selectedStyle: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(0),
                fillColor: Colors.white,
                hintText: 'Select Account',
                hintStyle: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  color: Color(0xFF838383),
                ),
                items: list,
                controller: selectAccountsController,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headings("Customer accounts"),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "O B: 500",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF680E2A),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 214, 210, 210),
                    blurRadius: 7.0,
                    spreadRadius: 0.9,
                  ),
                ],
              ),
              child: CustomDropdown.search(
                errorBorderSide: const BorderSide(
                  color: Color.fromARGB(255, 237, 99, 89),
                  width: 1,
                ),
                selectedStyle: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(0),
                fillColor: Colors.white,
                hintText: 'Select Customer Account',
                hintStyle: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  color: Color(0xFF838383),
                ),
                items: list,
                controller: selectCustomercontroller,
              ),
            ),
          ),
          headings("Customer"),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: TextFormField(
              validator: validations,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10),
                fillColor: Colors.white,
                filled: true,
              ),
              controller: consumercontoller,
            ),
          ),
          headings("Sale man"),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 214, 210, 210),
                    blurRadius: 7.0,
                    spreadRadius: 0.9,
                  ),
                ],
              ),
              child: CustomDropdown.search(
                errorBorderSide: const BorderSide(
                  color: Color.fromARGB(255, 237, 99, 89),
                  width: 1,
                ),
                selectedStyle: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(0),
                fillColor: Colors.white,
                hintText: 'Select sale man',
                hintStyle: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  color: Color(0xFF838383),
                ),
                items: list,
                controller: selectSaleManController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
