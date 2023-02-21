import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/ledger_search.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({super.key});

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final ledgerSearchController = context.watch<LedgerSearchController>();
    return ScaleTransition(
      scale: _animation,
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Column(
              children: [
                TextFormField(

                  onChanged: (value) {
                    ledgerSearchController.legerSearch(context, value);
                  },
                  decoration: InputDecoration(
                    hintText: "Search...",
                    fillColor: const Color.fromARGB(255, 239, 237, 237),
                    filled: true,
                    suffixIcon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(CupertinoIcons.search),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: ledgerSearchController.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ledgerSearchController.ledgers.isEmpty
                            ? Column(
                              children:const [
                                SizedBox(height: 169),
                                Text(
                                  'Couldn\'t found !',
                                  style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                            : ListView.builder(
                                itemCount:
                                    ledgerSearchController.ledgers.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      ledgerSearchController.seletedLedger(index);
                                      Navigator.pop(context);
                                    },
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          child: ListTile(
                                            title: Text(ledgerSearchController
                                                .ledgers[index].label,style:const TextStyle(color: Colors.black,fontSize: 16),),
                                          ),
                                        ),
                                        const Divider(thickness: 2),
                                      ],
                                    ),
                                  );
                                },
                              ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
