import 'package:doctors_task/constants/app_constants.dart';
import 'package:doctors_task/view/home/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helpers/base_widgets/text.dart';
import '../../helpers/data_types/speciality.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<Speciality> specialities = [
    Speciality(
      image: Images.speciality1,
      speciality: 'General'
    ),
    Speciality(
        image: Images.speciality2,
        speciality: 'Neurologic'
    ),
    Speciality(
        image: Images.speciality3,
        speciality: 'Neurologic'
    ),
    Speciality(
        image: Images.speciality4,
        speciality: 'Radiology'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(text: 'Hi, Omar', fontWeight: FontWeight.w500,),
            MyText(text: 'How are you today?', color: Colors.grey, fontSize: 16.sp,),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none)
          )
        ],
      ),
      body: Column(
        children: [
          const HomeCard(),
          Row(
            children: [
              MyText(text: 'Doctor Speciality', fontSize: 18.sp, fontWeight: FontWeight.w500,),
              const Spacer(),
              TextButton(
                  onPressed: (){},
                  child: MyText(text: 'See All', color: Colors.blue,)
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  specialities.length,
                      (index) => Column(
                children: [
                  CircleAvatar(
                    radius: 30.sp,
                    backgroundColor: Colors.grey[200],
                    child: Image.asset(specialities[index].image),
                  ),
                  const SizedBox(height: 5),
                  MyText(
                    text: specialities[index].speciality,
                    fontSize: 12.sp,
                  )
                ],
              )
              ),
            ),
          ),
          Row(
            children: [
              MyText(text: 'Recommendation Doctor', fontSize: 18.sp, fontWeight: FontWeight.w500,),
              const Spacer(),
              TextButton(
                  onPressed: (){},
                  child: MyText(text: 'See All', color: Colors.blue,)
              )
            ],
          ),
        ],
      )
    );
  }
}
