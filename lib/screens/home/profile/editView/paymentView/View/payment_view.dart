import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../utils/ui/Input/cardInput/car_expired_date_input.dart';
import '../../../../../../utils/ui/Input/cardInput/card_cvv_input.dart';
import '../../../../../../utils/ui/Input/cardInput/card_name_input.dart';
import '../../../../../../utils/ui/Input/cardInput/card_number_input.dart';
import '../../../../../../utils/ui/button/general.dart';

class PaymentSettingsScreen extends StatelessWidget {
  PaymentSettingsScreen({Key? key}) : super(key: key);
  TextEditingController _cardNameController = TextEditingController();
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _cardExpiredDateController = TextEditingController();
  TextEditingController _cardCvvController = TextEditingController();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: -10,
              left: -40,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 30,
                    ),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              left: 10,
              child: Container(
                  height: 165,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECE7),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              right: -60,
              child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: 50, // Adjust the position as needed
              left: 20, // Adjust the position as needed
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/index");
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              bottom: 150,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 37),
                    CardNameInput(
                      controller: _cardNameController,
                      hintText: "Bruce Williams",
                      labelText: "Full Name",
                    ),
                    SizedBox(height: 47),
                    CardNumberInput(
                      controller: _cardNumberController,
                      hintText: '****-****-****-****',
                      labelText: 'Card Number',
                    ),
                    SizedBox(height: 47),
                    Row(
                      children: [
                        CardExpiredDateInput(
                          controller: _cardExpiredDateController,
                          hintText: '**/**',
                          labelText: 'Expired Date',
                        ),
                        SizedBox(width: 5),
                        CardCvvInput(
                          controller: _cardCvvController,
                          hintText: '***',
                          labelText: 'CVV',
                        ),
                      ],
                    ),
                    SizedBox(height: 47),
                    CustomButton(
                      onPressed: () {},
                      text: 'Submit',
                    )
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
