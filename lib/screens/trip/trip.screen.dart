import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/widgets/buttons/index.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 290,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'OverView',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      Row(
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
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  MainButton(
                    onTap: () => context.goNamed(cart),
                    title: 'Add to Cart',
                    backgroundColor: primaryColor,
                    width: MediaQuery.of(context).size.width,
                    isLoading: false,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                image: DecorationImage(
                    image: AssetImage(Images.kingstoneCity),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              color: Color.fromARGB(168, 49, 78, 72),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: InkWell(
              onTap: () => context.goNamed(home),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          Positioned(
              left: 100,
              top: 50,
              child: SizedBox(
                width: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Trip',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.amber,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Sherbrooke - Monereal ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.amber,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '(154 Km , 4hrs 30 mins) ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.amber,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '20.0 USD',
                      style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
