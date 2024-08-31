import 'package:flutter/material.dart';
import 'package:knov_practical/utils/base_fonts.dart';

class AppTextStyle {
  late final TextStyle display6W400;
  late final TextStyle display14W400;
  late final TextStyle display10W400;
  late final TextStyle display10W500;
  late final TextStyle display11W500;
  late final TextStyle display11W400;
  late final TextStyle display11W800;
  late final TextStyle display12W400;
  late final TextStyle display12W500;
  late final TextStyle display12W600;
  late final TextStyle display12W700;
  late final TextStyle display12W800;
  late final TextStyle display13W400;
  late final TextStyle display13W500;
  late final TextStyle display13W600;
  late final TextStyle display13W700;
  late final TextStyle display14W500;
  late final TextStyle display14W300;
  late final TextStyle display14W600;
  late final TextStyle display14W700;
  late final TextStyle display14W800;
  late final TextStyle display15W400;
  late final TextStyle display15W500;
  late final TextStyle display15W600;
  late final TextStyle display15W700;
  late final TextStyle display16W300;
  late final TextStyle display16W400;
  late final TextStyle display16W500;
  late final TextStyle display16W600;
  late final TextStyle display16W700;
  late final TextStyle display17W400;
  late final TextStyle display17W500;
  late final TextStyle display17W600;
  late final TextStyle display17W700;
  late final TextStyle display18W600;
  late final TextStyle display18W500;
  late final TextStyle display18W700;
  late final TextStyle display20W500;
  late final TextStyle display20W600;
  late final TextStyle display20W700;
  late final TextStyle display22W700;
  late final TextStyle display24W400;
  late final TextStyle display24W600;
  late final TextStyle display24W700;
  late final TextStyle display30W400;
  late final TextStyle display30W700;
  late final TextStyle display36W700;

  AppTextStyles(BuildContext context) {
    display6W400 = Theme.of(context!).textTheme.displaySmall!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 6,
          fontWeight: FontWeight.w400,
        );
    display10W400 = Theme.of(context!).textTheme.displaySmall!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 10,
          fontWeight: FontWeight.w400,
        );
    display10W500 = Theme.of(context!).textTheme.displaySmall!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        );
    display11W400 = Theme.of(context!).textTheme.displaySmall!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 11,
          fontWeight: FontWeight.w400,
        );
    display11W800 = Theme.of(context!).textTheme.displaySmall!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 11,
          fontWeight: FontWeight.w800,
        );
    display11W500 = Theme.of(context!).textTheme.displaySmall!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        );

    display12W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        );
    display12W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        );
    display12W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        );
    display12W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        );
    display12W800 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 12,
          fontWeight: FontWeight.w800,
        );
    display13W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        );
    display13W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        );
    display13W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        );
    display13W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 13,
          fontWeight: FontWeight.w700,
        );
    display14W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        );
    display14W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: BaseFonts.satoshi,
        );
    display14W300 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          fontFamily: BaseFonts.satoshi,
        );
    display14W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        );
    display14W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        );
    display14W800 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 14,
          fontWeight: FontWeight.w800,
        );
    display15W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        );
    display15W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        );
    display15W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        );
    display15W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        );
    display16W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        );
    display16W300 = Theme.of(context!).textTheme.displayLarge!.copyWith(
        fontFamily: BaseFonts.satoshi,
        fontSize: 16,
        fontWeight: FontWeight.w300);

    display16W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        );
    display16W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        );
    display16W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        );
    display17W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 17,
          fontWeight: FontWeight.w400,
        );
    display17W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        );
    display17W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        );
    display17W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        );
    display18W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        );
    display18W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        );
    display18W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        );
    display20W500 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        );
    display20W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        );
    display20W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        );
    display22W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        );
    display24W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        );
    display24W600 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        );
    display24W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        );
    display36W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        );
    display30W700 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        );
    display30W400 = Theme.of(context!).textTheme.displayLarge!.copyWith(
          fontFamily: BaseFonts.satoshi,
          fontSize: 30,
          fontWeight: FontWeight.w400,
        );
  }
}
