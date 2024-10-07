import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/entity/service_entity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<ServiceEntity> services = [
    ServiceEntity(
      title: 'Lawn mowing',
      imageUrl: 'https://th.wallhaven.cc/lg/6d/6dryw6.jpg',
    ),
    ServiceEntity(
      title: 'Swimming pool',
      imageUrl: 'https://th.wallhaven.cc/lg/l8/l8x1pr.jpg',
    ),
    ServiceEntity(
      title: 'Yard cleaning',
      imageUrl: 'https://th.wallhaven.cc/small/x6/x6m79l.jpg',
    ),
  ];

  ServiceEntity? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<ServiceEntity>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              hint:  Center(child: Text("Choose an option",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xffA9A9A9)),))
            ,
              itemHeight: 100.h,
              isExpanded: true,

              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: services.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 70.w,
                        height: 70.w,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1,color: Color(0xffA9A9A9))),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.network(
                          value.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(value.title,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xffA9A9A9)),),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
