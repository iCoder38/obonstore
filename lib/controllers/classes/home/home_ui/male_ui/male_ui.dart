import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:obonstore/controllers/classes/Utilities/Utils/utils.dart';

class HomeMaleIconUI extends StatefulWidget {
  const HomeMaleIconUI({super.key});

  @override
  State<HomeMaleIconUI> createState() => _HomeMaleIconUIState();
}

class _HomeMaleIconUIState extends State<HomeMaleIconUI> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 40,
          // width: 40,
          child: NeoPopButton(
            color: const Color.fromRGBO(
              74,
              153,
              206,
              1,
            ),
            // onTapUp: () => HapticFeedback.vibrate(),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            onTapUp: () {
              //

              //
            },
            onTapDown: () => HapticFeedback.vibrate(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                const Icon(
                  Icons.face,
                  color: Colors.black,
                ),
                //
                const SizedBox(
                  width: 6,
                ),
                //
                textWithBoldStyle(
                  'Male',
                  Colors.blue[50],
                  14.0,
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
