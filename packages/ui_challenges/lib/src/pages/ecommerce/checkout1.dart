/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:ui_challenges/src/pages/invitation/inauth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CheckoutOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/ecommerce/cart1.dart";

  const CheckoutOnePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text(
              "Choose your plan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: <Widget>[
                Expanded(
                  child: RoundedContainer(
                    margin: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Free",
                          style: boldText,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "7 days",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RoundedContainer(
                    margin: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "\$450",
                          style: boldText,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Per week",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RoundedContainer(
                    color: Colors.indigo,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "\$900",
                          style: boldText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        const Text(
                          "Per month",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: RoundedContainer(
                    margin: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "\$2000",
                          style: boldText,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Lifetime",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            const RoundedContainer(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.paypal,
                  color: Colors.indigo,
                ),
                title: Text("Paypal"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const RoundedContainer(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.googleWallet,
                  color: Colors.indigo,
                ),
                title: Text("Google Pay"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const RoundedContainer(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.applePay,
                  color: Colors.indigo,
                ),
                title: Text("Apple Pay"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(24.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Continue"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key? key,
    required this.child,
    this.height,
    this.width,
    this.color = Colors.white,
    this.padding = const EdgeInsets.all(16.0),
    this.margin,
    this.borderRadius,
    this.alignment,
    this.elevation,
  }) : super(key: key);
  final Widget child;
  final double? width;
  final double? height;
  final Color color;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final BorderRadius? borderRadius;
  final AlignmentGeometry? alignment;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin ?? const EdgeInsets.all(0),
      color: color,
      elevation: elevation ?? 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(20.0),
      ),
      child: Container(
        alignment: alignment,
        height: height,
        width: width,
        padding: padding,
        child: child,
      ),
    );
  }
}
