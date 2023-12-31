import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => context.goNamed(home),
          child: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: primaryColor, fontSize: 16),
        elevation: 0.0,
        title: const Text(
          'My Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        decoration: const ShapeDecoration(
                          shape: OvalBorder(
                            side: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        child: Image.asset(Images.user)),
                    const Text(
                      'LUC BUFINGO Tabu',
                      style: TextStyle(
                        color: Color(0xFF37435B),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'luc@gmail.com',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(),
                    Container(
                      height: 50,
                      color: Colors.grey.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 130,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: Icon(
                                      Icons.bar_chart,
                                      color: primaryColor,
                                    ),
                                  ),
                                  const Text('Statistics')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    Container(
                      height: 50,
                      color: Colors.grey.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: Icon(
                                      Icons.circle,
                                      color: primaryColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text('Parameters')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    Container(
                      height: 50,
                      color: Colors.grey.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 130,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: Icon(
                                      Icons.help,
                                      color: primaryColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text('Help')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    InkWell(
                      onTap: () => context.goNamed(home),
                      child: Container(
                        height: 50,
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 50,
                                      child: Icon(
                                        Icons.logout,
                                        color: primaryColor,
                                      ),
                                    ),
                                    const Text('Logout')
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}
