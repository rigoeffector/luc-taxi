import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'My Cart',
          style: TextStyle(color: primaryColor),
        ),
        elevation: 0,
        toolbarHeight: 70,
        leading: InkWell(
            onTap: () {
              context.goNamed(home);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              InkWell(
                // onTap: () => ,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      border: Border.all(color: primaryColor, width: 1)),
                  child: Center(
                      child: Text(
                    'Add items',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: textColor),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
