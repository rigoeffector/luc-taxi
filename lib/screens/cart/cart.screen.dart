import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/widgets/buttons/index.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

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
        title: Row(
          children: [
            Text(
              'My Cart',
              style: TextStyle(color: primaryColor),
            ),
          ],
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
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  '0',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.shopping_bag),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 243, 239, 239),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          border: Border.all(color: primaryColor, width: 1),
                        ),
                        child: Center(
                          child: Text(
                            'Add items',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.red),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kicukiro Gatenga KK 106 ST',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 103, 103, 103),
                          ),
                        ),
                        const Text(
                          'Monday November 9 at 05:14 PM',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 122, 122, 122),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: const Text(
                            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Color.fromARGB(255, 122, 122, 122),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.red),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kicukiro Gatenga KK 106 ST',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 103, 103, 103),
                          ),
                        ),
                        const Text(
                          'Monday November 9 at 05:14 PM',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 122, 122, 122),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: const Text(
                            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Color.fromARGB(255, 122, 122, 122),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: const Color.fromARGB(255, 243, 239, 239),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '2 reservation credits must be added to your account to complete the transaction',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        '+2 booking credits',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      '11.00 CAD',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 243, 239, 239),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text(
                            'Sub-total',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          '11.00 CAD',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text(
                            'GST',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          '11.00 CAD',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text(
                            'QST',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          '11.00 CAD',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text(
                            'TOTAL',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          '110.00 CAD',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'First and last name on the card',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Luc',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Bugingo',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.credit_card),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        labelText: 'Card number',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 5,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'CVC',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Expired date',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: MainButton(
                    backgroundColor: primaryColor,
                    titleColor: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    title: 'Place order',
                    isLoading: false,
                    onTap: () {
                      context.goNamed(home);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
