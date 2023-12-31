import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/widgets/buttons/index.dart';

class SingleResultCardScreen extends StatefulWidget {
  const SingleResultCardScreen({Key? key}) : super(key: key);

  @override
  State<SingleResultCardScreen> createState() => _SingleResultCardScreenState();
}

class _SingleResultCardScreenState extends State<SingleResultCardScreen> {
  int selectedSeats = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => context.goNamed(location_results),
          child: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: primaryColor, fontSize: 16),
        elevation: 0.0,
        title: const Text(
          'Sherbrooke >  Montreal',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 214, 225, 236),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Tuesday Dec 28, 2023 at 14:40 ',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    color: primaryColor,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '20 USD',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Container(
              color: const Color.fromARGB(255, 246, 252, 255),
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(Images.electric_car),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.30,
                          child: const Text(
                            'Electric car, it might stop for a short time to charge',
                            style: TextStyle(
                                color: Color.fromARGB(255, 104, 104, 104)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(Images.atm),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.30,
                          child: const Text(
                            'The contribution to the driver will be preauthorized on your card, A part of the amount will be transferred to the driver in case of late cancellation or an absence the reservation fee is 5 USD per seat',
                            style: TextStyle(
                                color: Color.fromARGB(255, 104, 104, 104)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Seats:',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          width: MediaQuery.of(context).size.width / 1.50,
                          child: DropdownButtonFormField<int>(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            value: selectedSeats,
                            onChanged: (newValue) {
                              setState(() {
                                selectedSeats = newValue!;
                              });
                            },
                            items: List.generate(5, (index) => index + 1)
                                .map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text('Reserve Seat $value'),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: MainButton(
                              title: 'Go',
                              isLoading: false,
                              backgroundColor: primaryColor),
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(Images.current_location),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '15:30 at Sherbrooke',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          const Text(
                            'Electric car, it might stop for a short time to charge',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(Images.current_location),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Montreal',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          const Text(
                            'Electric car, it might stop for a short time to charge',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(Images.atm),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment by credit card',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          const Text(
                            'The 20 USD contribution to the drver requires a credit card transaction',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(Images.verified_user),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verified Driver',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          const Text(
                            'This Driver is verified by Us',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
