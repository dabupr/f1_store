import 'package:f1_store/models/Product.dart';
import 'package:f1_store/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:f1_store/widgets/item_grid_view.dart';
import 'package:f1_store/infoPrductScreen/info_screen.dart';
import 'package:f1_store/settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: const MyHomePage(title: 'Home'),
      home: WidgetTree(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      //body: Center(child: gridView()),
      body: Center(child: getTheBOdy()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_outlined),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        unselectedFontSize: 10,
        elevation: 10,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget getTheBOdy() {
    if (_selectedIndex == 0) {
      return gridView();
    } else if (_selectedIndex == 1) {
      return Container();
    } else {
      return const SettingsPage().getBodySettings();
    }
  }

  GridView gridView() {
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.75,

        ),
        itemBuilder: (context, index) => ContainerGridClass(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoScreen(
                      product: products[index],
                    ),
                  )),
            ));
  }

  AppBar appBar() {
    return AppBar(
      title: const Text("F1 Store"),
      elevation: 0,
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Padding(
            //padding: EdgeInsets.all(5),
            padding: EdgeInsets.only(right: 10),

            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            //ToDo do this
          },
        )
      ],
    );
  }
}
