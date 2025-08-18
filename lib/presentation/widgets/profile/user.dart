import 'package:flutter/widgets.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/utils/serialize_amount.dart';
import 'package:sneakers/presentation/widgets/profile/credit_button.dart';

class User extends StatefulWidget {
  const User({
    super.key,
    required this.username,
    required this.email,
    required this.wallet,
    required this.onPressedCreditWallet,
  });

  final String username;
  final String email;
  final double wallet;
  final void Function() onPressedCreditWallet;

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: <Widget>[
        /// User Profile
        Row(
          spacing: 9,
          children: <Widget>[
            /// User photo
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: backgroundSecondary,
                borderRadius: BorderRadius.circular(50)
              )
            ),

            /// User identifients
            Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.username, style:  TextStyle(fontSize: 16)),
                Text(widget.email, style:  TextStyle(fontSize: 12))
              ],
            )
          ],
        ),
        
        /// User credis
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Avalaible balance", style: TextStyle(fontSize: 14)),
                Text(
                  serializeAmount(widget.wallet), 
                  style: TextStyle(
                    fontSize: 24, 
                    fontWeight: FontWeight.w600
                  )
                )
              ],
            ),
            CreditButton(
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}