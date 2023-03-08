import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_rearch/ledger_search_cubit.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../controller/ledger_search.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
    final ledgerSearchController = context.read<LedgerSearchCubit>();
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
                SizedBox(
                  height: 7.h,
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        ledgerSearchController.getPaginatedLedgerSearchReport(
                            context, value);
                      });
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child:
                      BlocBuilder<LedgerSearchCubit, LedgerSearchResponseState>(
                    builder: (context, ledgerSearchState) {
                      if (ledgerSearchState is LedgerSearchResponseLoaded) {
                        return SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height,
                          child: ledgerSearchState.ledgerSearchModel.isEmpty
                              ? Column(
                                  children: const [
                                    SizedBox(height: 169),
                                    Text(
                                      'Couldn\'t found !',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                )
                              : ListView.builder(
                                  itemCount: ledgerSearchState
                                      .ledgerSearchModel.length,
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        ledgerSearchController
                                            .seletedLedger(index);
                                        Navigator.pop(context);
                                      },
                                      child: Column(
                                        children: [
                                          // Text(
                                          //   ledgerSearchController
                                          //       .ledgers[index].label,
                                          //   style: const TextStyle(
                                          //     color: Colors.black,
                                          //     fontSize: 16,
                                          //   ),
                                          // ),
                                          ListTile(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: -9),
                                            visualDensity: const VisualDensity(
                                                horizontal: 4, vertical: -4),
                                            title: Text(
                                              ledgerSearchState
                                                  .ledgerSearchModel[index]
                                                  .label,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          const Divider(thickness: 2),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                        );
                      }
                      return Container(
                        height: MediaQuery.of(context).size.height,
                      );
                    },
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
