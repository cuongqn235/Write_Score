part of 'fonts.dart';

const _fontWeightRegular = FontWeight.w400;
const _fontWeightMedium = FontWeight.w500;
const _fontWeightSemiBold = FontWeight.w600;
const _fontWeightBold = FontWeight.w700;

extension FontWeightExt on FontWeight {
  static const semiBold = FontWeight.w600;
}

const fontWeightRegular = TextStyle(
  fontWeight: _fontWeightRegular,
);

const fontWeightRegularUnderline = TextStyle(
  fontWeight: _fontWeightRegular,
  decoration: TextDecoration.underline,
);

const fontWeightMedium = TextStyle(
  fontWeight: _fontWeightMedium,
);

const fontWeightMediumUnderline = TextStyle(
  fontWeight: _fontWeightMedium,
  decoration: TextDecoration.underline,
);

const fontWeightSemiBold = TextStyle(
  fontWeight: _fontWeightSemiBold,
);

const fontWeightSemiBoldUnderline = TextStyle(
  fontWeight: _fontWeightSemiBold,
  decoration: TextDecoration.underline,
);

const fontWeightBold = TextStyle(
  fontWeight: _fontWeightBold,
);

const fontWeightBoldUnderline = TextStyle(
  fontWeight: _fontWeightBold,
  decoration: TextDecoration.underline,
);

const fontStyleUnderline = TextStyle(
  decoration: TextDecoration.underline,
);
