import 'package:flutter/material.dart';
import 'package:rest0_app/components/my_current_location.dart';
import 'package:rest0_app/components/my_desription_box.dart';
import 'package:rest0_app/components/my_drawer.dart';
import 'package:rest0_app/components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      //   backgroundColor: Theme.of(context).colorScheme.background,
      // ),
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: Text("Hello"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                MyCurrentLocation(),
                MyDescriptionBox(),
              ],
            ),
          )
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
