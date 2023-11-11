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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        leading: Container(
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
                  const Spacer(),
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
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: textColor,
                        fontSize: 18,
                      ),
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
                      child: Text(
                        'Cart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: textColor,
                          fontSize: 18,
                        ),
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
