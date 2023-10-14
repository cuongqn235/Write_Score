import 'package:write_score/design/foundation/colors.dart';
import 'package:flutter/material.dart';

part 'font_weight.dart';

// BODY
@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleBodyMedium = TextStyle(
  fontSize: 16,
  fontWeight: _fontWeightRegular,
  color: colorBlueGray04,
  height: 24 / 16,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleBodyLarge = TextStyle(
  fontSize: 18,
  fontWeight: _fontWeightRegular,
  height: 24 / 18,
);

// BUTTON

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleButtonSmall = TextStyle(
  fontSize: 14,
  fontWeight: _fontWeightSemiBold,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleButtonMedium = TextStyle(
  fontSize: 16,
  fontWeight: _fontWeightSemiBold,
  height: 24 / 16,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleButtonLarge = TextStyle(
  fontSize: 18,
  fontWeight: _fontWeightSemiBold,
  height: 24 / 18,
);

// LINK
@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleLinkSmall = TextStyle(
  fontWeight: _fontWeightRegular,
  decoration: TextDecoration.underline,
  fontSize: 14,
  height: 16 / 14,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleLinkMedium = TextStyle(
  fontWeight: _fontWeightRegular,
  decoration: TextDecoration.underline,
  fontSize: 16,
  height: 24 / 16,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleLinkLarge = TextStyle(
  fontWeight: _fontWeightRegular,
  decoration: TextDecoration.underline,
  fontSize: 18,
  height: 24 / 18,
);

// PRICE

@Deprecated('Dùng context.textTheme')
const TextStyle fontStylePriceSmall = TextStyle(
  fontWeight: _fontWeightBold,
  fontSize: 14,
  height: 16 / 14,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStylePriceMedium = TextStyle(
  fontWeight: _fontWeightSemiBold,
  fontSize: 16,
  height: 24 / 16,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStylePriceLarge = TextStyle(
  fontWeight: _fontWeightSemiBold,
  fontSize: 18,
  height: 24 / 18,
);

// CAPTION
@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleCaption01 = TextStyle(
  fontSize: 12,
  fontWeight: _fontWeightSemiBold,
  height: 16 / 12,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleCaption01Regular = TextStyle(
  fontSize: 12,
  fontWeight: _fontWeightRegular,
  height: 16 / 12,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleCaption02 = TextStyle(
  fontSize: 9,
  fontWeight: _fontWeightRegular,
  height: 12 / 10,
);

@Deprecated('Dùng context.textTheme')
const TextStyle fontStyleCaption02SemiBold = TextStyle(
  fontSize: 9,
  fontWeight: _fontWeightSemiBold,
  height: 12 / 10,
);
