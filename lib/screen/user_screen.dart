import 'dart:convert';
import 'package:droop_down/core/entity/user_profile_entity.dart';
import 'package:droop_down/widgets/user_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final List<UserProfileEntity> usersProfiles = [];
  @override
  void initState() {
    initialize();
    super.initState();
  }

  initialize() async {
    final Client client = Client();
    final Response response = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    final List<Map<String, dynamic>> dataList =
        List<Map<String, dynamic>>.from(json.decode(response.body));
    for (var element in dataList) {
      usersProfiles.add(UserProfileEntity.fromJson(element));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: usersProfiles.length,
                itemBuilder: (context, index) {
                  final entity = usersProfiles[index];
                  return UserProfileWidget(entity: entity);
                }),
          ),
        ],
      )),
    );
  }
}
