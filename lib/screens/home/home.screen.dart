import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        leading: InkWell(
          onTap: () => context.goNamed(checking_phone),
          child: Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
            height: 50,
            width: 50,
            decoration: ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 2, color: primaryColor),
              ),
            ),
            child: Icon(
              Icons.person,
              color: primaryColor,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 5),
            height: 50,
            width: 50,
            decoration: ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 2, color: primaryColor),
              ),
            ),
            child: Icon(
              Icons.add,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // Add padding around the search bar
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      // Use a Material design search barsffzz
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          // Add a clear button to the search bar
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () => _searchController.clear(),
                          ),
                          // Add a search icon or button to the search bar
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              // Perform the search here
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('BUY TICKETS'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                child: const Text('LISTEN'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.home),
                        Text(
                          'Home',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: textColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(
                          color: textColor,
                          width: 1,
                        ),
                      ),
                    ),
                    child: const Text(''),
                  ),
                  InkWell(
                    onTap: () => context.goNamed(cart),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.shopping_cart),
                          Text(
                            'Cart',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: textColor,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
