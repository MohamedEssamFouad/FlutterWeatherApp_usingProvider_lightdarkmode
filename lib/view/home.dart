import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../ViewModel/PostProvider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 15.w),
            child: Consumer<PostProvider>(
              builder: (context, themeProider, child) {
                return Switch(
                  activeColor: Colors.white,
                  // trackOutlineColor:
                  //     const MaterialStatePropertyAll(Colors.black),
                  inactiveThumbColor: Colors.white,
                  thumbColor: const MaterialStatePropertyAll(Colors.orange),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: MaterialStatePropertyAll(
                    themeProider.isSwitched
                        ? const Icon(Icons.nights_stay)
                        : const Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                    ),
                  ),
                  value: themeProider.isSwitched,
                  onChanged: (value) {
                    themeProider.toggleTheme();
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Paris',
                style: TextStyle(fontSize:40.sp ),
              ),
              SizedBox(height: 10.h,),
              Consumer<PostProvider>(
                builder: (context,themeprovider,child){
                  return  Icon(
                  themeprovider.isSwitched?

                    Icons.nights_stay:Icons.sunny,size: 300,color: Colors.orange,
                  );
                },

              ),
              SizedBox(height: 40.h,),
              Text(
                '20 c',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),

              ),
              SizedBox(height: 20.h,),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),SizedBox(height: 30.h,),
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                ),
              ),
             Spacer(),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Icon(Icons.wb_twighlight),
                      Text('SUNRISE'),
                      Text('7:00'),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  const Column(
                    children: [
                      Icon(Icons.air),
                      Text('Wind'),
                      Text('4m/s'),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  const Column(
                    children: [
                      Icon(Icons.thermostat),
                      Text('Temperature'),
                      Text('23'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}