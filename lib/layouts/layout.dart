import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kora/layouts/cubit/states.dart';
import 'package:kora/shared/styles/colors.dart';

import 'cubit/cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  return Scaffold(
    //   //  body: Center(child: defaultButton(function: (){
    //   //    SignOut(context);
    //   //  }, text: 'Sign OUT'))
    //  );
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),

        // BlocProvider(create: (context) => ProfileCubit()..getProfile(USERID!)),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: defaultColor,
              index: cubit.currentIndex,
              items: const <Widget>[
                Icon(
                  Icons.live_tv,
                  size: 30,
                ),
                Icon(
                  Icons.sports_football_outlined,
                  size: 30,
                ),
              ],
              onTap: (index) {
                cubit.changeBottomNav(index);
              },
            ),
          );
        },
      ),
    );
  }
}
