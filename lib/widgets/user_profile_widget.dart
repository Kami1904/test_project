import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:droop_down/core/entity/user_profile_entity.dart';

class UserProfileWidget extends StatelessWidget {
  final UserProfileEntity entity;
  const UserProfileWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.r),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border(bottom: BorderSide(width: 2,color: Colors.black))
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Text(
                          entity.name,
                          style: TextStyle(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                        SizedBox(width: 100.w),
                        Text(
                          entity.surname,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 20.h),
            Row(
              children: [
                Icon(Icons.email_outlined, color: Colors.teal),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    entity.email,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Icon(Icons.phone_android, color: Colors.green),
                SizedBox(width: 8.w),
                Text(
                  entity.phoneNumber,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Text(
              'Address',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              entity.addressEntity.street,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            Text(
              entity.addressEntity.suite,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 8.w),
                Text(
                  'Lat: ${entity.addressEntity.lat}, Lng: ${entity.addressEntity.lng}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              'Company',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              entity.companyEntity.companyName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              entity.companyEntity.companyCatchPhrase,
              style: TextStyle(
                fontSize: 14.sp,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              entity.companyEntity.companyBs,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
