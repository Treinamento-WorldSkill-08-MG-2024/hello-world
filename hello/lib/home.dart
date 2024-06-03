import 'package:flutter/material.dart';
import 'package:hello/components/bottom_nav_bar.dart';
import 'package:hello/models/cats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<CatFactsModel> _catData;

  @override
  void initState() {
    _catData = CatFactsAPI().getCatFact();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const gibberishList = ["asasassdasd", "asdafasf", "kjnekvndssio"];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Hello World"),
              const Divider(),
              
              ListView.builder(
                shrinkWrap: true,
                itemCount: gibberishList.length,
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(gibberishList[index])],
                ),
              ),
              const Divider(),

              Column(
                children: [
                  const Text("Cat Facts"),
                  FutureBuilder(
                    future: _catData,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return const Text("Failed to load api data");
                      }
                  
                      if (snapshot.hasData) {
                        return Text("${snapshot.data!.fact} | ${snapshot.data!.length}");
                      }
                  
                      return const CircularProgressIndicator();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
