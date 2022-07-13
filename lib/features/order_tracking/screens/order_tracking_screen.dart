import 'package:flutter/material.dart';
import 'package:fruit_hub/shared/widgets/custom_back_button.dart';
import 'package:dotted_line/dotted_line.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({Key? key}) : super(key: key);

  final titleStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 142,
        leading: Container(
          padding: const EdgeInsets.symmetric(vertical: 50),
          margin: const EdgeInsets.only(left: 24),
          child: const CustomBackButton(),
        ),
        leadingWidth: 125,
        title: Text('Delivery Status', style: titleStyle,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(decoration: BoxDecoration(
                  color: const Color(0xFFFFFAEB),
                  borderRadius: BorderRadius.circular(10)),
                width: 65,
                height: 64,
                child: Image.asset('assets/images/order_taken.png'),),
              title: Text('Order Taken', style: titleStyle,),
              trailing: Image.asset('assets/images/success.png', width: 24, height: 24,),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 45),
              child: DottedLine(
                direction: Axis.vertical,
                lineLength: 40,
                lineThickness: 2,
                dashLength: 3,
                dashColor: Color(0xFFFFA451),
              ),
            ),
            ListTile(
              leading: Container(decoration: BoxDecoration(
                  color: const Color(0xFFF1EFF6),
                  borderRadius: BorderRadius.circular(10)),
                width: 65,
                height: 64,
                child: Image.asset('assets/images/order_prepared.png'),),
              title: Text('Order Is Being Prepared', style: titleStyle,),
              trailing: Image.asset('assets/images/success.png', width: 24, height: 24,),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 45),
              child: DottedLine(
                direction: Axis.vertical,
                lineLength: 40,
                lineThickness: 2,
                dashLength: 3,
                dashColor: Color(0xFFFFA451),
              ),
            ),
            ListTile(
              leading: Container(decoration: BoxDecoration(
                  color: const Color(0xFFFEF0E0),
                  borderRadius: BorderRadius.circular(10)),
                width: 65,
                height: 64,
                child: Image.asset('assets/images/delivery.png'),),
              title: Text('Order Is Being Delivered', style: titleStyle,),
              subtitle: const Text('Your delivery agent is coming', style: TextStyle(fontSize: 14),),
              trailing: Image.asset('assets/images/phone.png', width: 40, height: 40,),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 45),
              child: DottedLine(
                direction: Axis.vertical,
                lineLength: 19,
                lineThickness: 2,
                dashLength: 3,
                dashColor: Color(0xFFFFA451),
              ),
            ),
            Image.asset('assets/images/map.png'),
            const Padding(
              padding: EdgeInsets.only(left: 45),
              child: DottedLine(
                direction: Axis.vertical,
                lineLength: 40,
                lineThickness: 2,
                dashLength: 3,
                dashColor: Color(0xFFFFA451),
              ),
            ),
            ListTile(
              leading: Container(decoration: BoxDecoration(
                  color: const Color(0xFFF0FEF8),
                  borderRadius: BorderRadius.circular(10)),
                width: 65,
                height: 64,
                child: Image.asset('assets/images/success.png'),),
              title: Text('Order Received', style: titleStyle,),
              trailing: Image.asset('assets/images/waiting.png', width: 40, height: 8,),
            ),
          ],
        ),
      ),
    );
  }
}
