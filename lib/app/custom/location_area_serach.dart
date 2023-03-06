import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oditbiz/app/controller/login_page.dart';
import 'package:oditbiz/app/page/login/bloc/location/location_cubit.dart';
import 'package:oditbiz/app/page/login/view/login_account.dart';
import 'package:sizer/sizer.dart';

class CustomLoactionArea extends StatefulWidget {
  const CustomLoactionArea({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomLoactionAreaState createState() => _CustomLoactionAreaState();
}

class _CustomLoactionAreaState extends State<CustomLoactionArea>
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

  late double animatedHeight = 10.w;

  // final List<String> _selectedItems = [];

  // final List<String> _selectedId = [];

  void _itemChange(itemId, itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        selectedItems.add(itemValue);
        selectedAreaId.add(itemId);
      } else {
        selectedItems.remove(itemValue);
        selectedAreaId.remove(itemId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controllerWatch = context.watch<LoginPageController>();

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
                Row(
                  children: [
                    SizedBox(
                      width: selectedItems.isEmpty ? 70.w : 65.w,
                      height: 6.h,
                      child: TextFormField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 5, left: 10),
                          hintText: "Search...",
                          fillColor: const Color.fromARGB(255, 239, 237, 237),
                          filled: true,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.search),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    selectedItems.isEmpty
                        ? const SizedBox.shrink()
                        : AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 6.3.h,
                            width: animatedHeight,
                            child: IconButton(
                              onPressed: () {
                                log("SELECTED ITEMS");
                              },
                              icon: Icon(
                                CupertinoIcons.checkmark_circle_fill,
                                size: 27.sp,
                                color: const Color.fromARGB(255, 52, 234, 36),
                              ),
                            ),
                          ),
                  ],
                ),
                BlocBuilder<LocationCubit, LocationState>(
                  builder: (context, state) {
                    log(state.toString());
                    if (state is LocationLoaded) {
                      List<String> locationName = [];
                      List<String> locationid = [];
                      final locationArea = state.loginLocationModel;
                      for (var i = 0; i < locationArea.area.length; i++) {
                        locationName.add(locationArea.area[i].label);
                        locationid.add(locationArea.area[i].value);
                      }
                      return SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        child: locationName.isEmpty
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
                            : SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ListBody(
                                      children: locationArea.area
                                          .map(
                                            (locationName) => CheckboxListTile(
                                              title: Text(locationName.label),
                                              value: selectedItems
                                                  .contains(locationName.label),
                                              onChanged: (isChecked) {
                                                log(locationName.toString());
                                                log(locationid.toString());
                                                _itemChange(
                                                    int.parse(
                                                        locationName.value),
                                                    locationName.label,
                                                    isChecked!);
                                                controllerWatch.selectedAreaid =
                                                    selectedAreaId
                                                        .map((number) =>
                                                            number.toString())
                                                        .join(",")
                                                        .toString();

                                                controllerWatch
                                                        .areaController.text =
                                                    selectedItems
                                                        .map((number) =>
                                                            number.toString())
                                                        .join(",")
                                                        .toString();
                                              },
                                            ),
                                          )
                                          .toList(),
                                    ),
                                    SizedBox(height: 30.h),
                                  ],
                                ),
                              ),
                      );
                    }
                    if (state is LocationError) {
                      log(state.error);
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
