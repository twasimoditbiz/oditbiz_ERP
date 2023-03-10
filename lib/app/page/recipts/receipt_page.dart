import 'package:flutter/material.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/recipts/receipt_field.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({Key? key}) : super(key: key);
  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  final formKeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.09,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const Text(
                        "Recipts",
                        style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/ReciptsSearchScreen");
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                        color: const Color(0xFF680E2A),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Form(
        key: formKeys,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: Column(
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Invoice No: 20",
                        style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF383838),
                        ),
                      ),
                      Text(
                        "Date: 11-12-2022",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF383838),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
                    child: Divider(
                      thickness: 1.5,
                      color: Color.fromARGB(255, 215, 211, 211),
                    ),
                  ),
                  const ReceiptsField(),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 14, left: 12, bottom: 20),
        child: Material(
          color: const Color(0xFF680E2A),
          elevation: 5,
          borderRadius: BorderRadius.circular(8),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width * 1,
            height: 59,
            padding: const EdgeInsets.fromLTRB(10, 11, 10, 10),
            onPressed: () {
              if (formKeys.currentState!.validate()) {
                Navigator.pop(context);
                showSnackBar(context, "Save the recipts");
              }
            },
            child: const Text(
              'Save',
              style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
