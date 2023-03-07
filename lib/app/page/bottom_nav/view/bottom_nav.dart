import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oditbiz/app/page/bottom_nav/bloc/bottom_cubit.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BottomCubit>(context);
    return Scaffold(
      body: BlocBuilder<BottomCubit, BottomState>(
        builder: (context, state) {
          return bloc.page[bloc.currentIndex];
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child:
            BlocBuilder<BottomCubit, BottomState>(builder: (context, snapshot) {
          return Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
            child: SizedBox(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                itemCount: bloc.data.length,
                itemBuilder: (ctx, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      bloc.selectecdIndexUpdate(index);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      width: MediaQuery.of(context).size.width * 0.145,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            index == bloc.selectedIndex
                                ? bloc.selectedIcon[index]
                                : bloc.data[index],
                            size: 31,
                            color: Colors.black,
                          ),
                          Text(
                            bloc.items[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: index == bloc.selectedIndex
                                  ? Colors.black
                                  : Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
        }),
      ),
    );
  }
}
