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
          onTap: () => context.goNamed(profile),
          child: Container(
            margin:
                const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 5),
            height: 30,
            width: 30,
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
          InkWell(
            onTap: () => context.goNamed(location),
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
              height: 30,
              width: 30,
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
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     // Add padding around the search bar
                  //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  //     // Use a Material design search barsffzz
                  //     child: TextField(
                  //       controller: _searchController,
                  //       decoration: InputDecoration(
                  //         hintText: 'Search...',
                  //         // Add a clear button to the search bar
                  //         suffixIcon: IconButton(
                  //           icon: const Icon(Icons.clear),
                  //           onPressed: () => _searchController.clear(),
                  //         ),
                  //         // Add a search icon or button to the search bar
                  //         prefixIcon: IconButton(
                  //           icon: const Icon(Icons.search),
                  //           onPressed: () {
                  //             // Perform the search here
                  //           },
                  //         ),
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(20.0),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => context.goNamed(trip_more),
                      child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 200,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 50,
                                            width: 50,
                                            child: Image.asset(Images.atm)),
                                        const Text(
                                          '15:00 PM',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sherbrooke',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              color: primaryColor),
                                        ),
                                        const Text(
                                            'Sherbrooke university sport center'),
                                        const SizedBox(height: 10),
                                        Text(
                                          'Montreal',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                              color: primaryColor),
                                        ),
                                        const Text(
                                          'Montreal Berli--UUAQ Station ',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Tue 28 Dec, 2023',
                                          style: TextStyle(
                                              color: Colors.grey.shade400),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star_half_rounded,
                                        color: Colors.amber,
                                      ),
                                      Icon(Icons.star_border_rounded),
                                      Icon(Icons.star_border_rounded),
                                    ],
                                  )
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width /
                                        1.90,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(Images.nobags),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(Images.nopets),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(Images.nomoney),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      '20 USD',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: primaryColor,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => context.goNamed(trip_more),
                      child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 200,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 50,
                                            width: 50,
                                            child: Image.asset(Images.atm)),
                                        const Text(
                                          '15:00 PM',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sherbrooke',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              color: primaryColor),
                                        ),
                                        const Text(
                                            'Sherbrooke university sport center'),
                                        const SizedBox(height: 10),
                                        Text(
                                          'Montreal',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                              color: primaryColor),
                                        ),
                                        const Text(
                                          'Montreal Berli--UUAQ Station ',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Tue 28 Dec, 2023',
                                          style: TextStyle(
                                              color: Colors.grey.shade400),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star_half_rounded,
                                        color: Colors.amber,
                                      ),
                                      Icon(Icons.star_border_rounded),
                                      Icon(Icons.star_border_rounded),
                                    ],
                                  )
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width /
                                        1.90,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(Images.nobags),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(Images.nopets),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(Images.nomoney),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      '20 USD',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: primaryColor,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
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
