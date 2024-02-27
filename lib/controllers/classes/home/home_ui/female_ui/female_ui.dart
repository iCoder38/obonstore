import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:obonstore/controllers/classes/Utilities/Utils/utils.dart';

class HomeFemaleIconUI extends StatefulWidget {
  const HomeFemaleIconUI({super.key});

  @override
  State<HomeFemaleIconUI> createState() => _HomeFemaleIconUIState();
}

class _HomeFemaleIconUIState extends State<HomeFemaleIconUI> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 40,
          // width: 40,
          child: NeoPopButton(
            color: lightPinkColor,
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
                  Icons.face_3_rounded,
                ),
                //
                const SizedBox(
                  width: 6,
                ),
                //
                textWithBoldStyle(
                  'Female',
                  Colors.black,
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
