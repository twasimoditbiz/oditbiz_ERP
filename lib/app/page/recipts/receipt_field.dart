import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class ReceiptsField extends StatefulWidget {
  const ReceiptsField({Key? key}) : super(key: key);

  @override
  State<ReceiptsField> createState() => _ReceiptsFieldState();
}

TextEditingController noisecontroller = TextEditingController();
TextEditingController cashAcountcontroller = TextEditingController();
TextEditingController paircontroller = TextEditingController();
TextEditingController amountcontroller = TextEditingController();
TextEditingController discountcontoller = TextEditingController();
TextEditingController remarkcontroller = TextEditingController();
TextEditingController dateinputcontroller = TextEditingController();
TextEditingController selectAccountController = TextEditingController();
TextEditingController selectpairController = TextEditingController();

final List<String> accountlist = [
  'CASH ACCOUNT',
  'Caliut ACCOUNT',
  'CASH FROM HOME',
  'ONLY ACOOUNT',
  'only account',
  'account name'
];

final List<String> pairlist = [
  'pair name',
  'PAIR NAME',
  'CASH FROM HOME',
  'ONLY ACOOUNT',
  'only account',
  'account name'
];
String? validation(value) {
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
    padding: const EdgeInsets.only(left: 8, top: 16),
    child: Text(
      heading,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 13,
        fontFamily: "poppins",
        color: Color(0xFF838383),
      ),
    ),
  );
}

class _ReceiptsFieldState extends State<ReceiptsField> {
  final formKeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14, left: 12, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headings("Cash accounts"),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 239, 236, 236),
                  blurRadius: 4.0,
                  spreadRadius: 0.3,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
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
                items: accountlist,
                controller: selectAccountController,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headings("Payer"),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "O B: 500",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF680E2A),
                  ),
                ),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 239, 236, 236),
                  blurRadius: 4.0,
                  spreadRadius: 0.3,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
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
                hintText: 'Select Branch',
                hintStyle: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  color: Color(0xFF838383),
                ),
                items: pairlist,
                controller: selectpairController,
              ),
            ),
          ),
          headings("Amount"),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextFormField(
              validator: validation,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(13),
                  fillColor: Colors.white,
                  filled: true),
              controller: amountcontroller,
              keyboardType: TextInputType.phone,
            ),
          ),
          headings("Discount"),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextFormField(
              validator: validation,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(13),
                  fillColor: Colors.white,
                  filled: true),
              controller: discountcontoller,
              keyboardType: TextInputType.phone,
            ),
          ),
          headings("Remark"),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextFormField(
              maxLines: 5,
              controller: remarkcontroller,
            ),
          ),
        ],
      ),
    );
  }
}
