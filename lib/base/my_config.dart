part of 'xx_base.dart';

/// createdby Daewu Bintara
/// Friday, 17/04/21 11:00
/// Enjoy coding ☕

final bool IS_DEVEL_MODE = true;
var _BASE_URL_DEV = "https://dev.yourbaseurl.com/";
var _BASE_URL_PROD = "https://yourbaseurl.com/";

/// CONFIGS DATA
class MyConfig {
  /// APP CONFIG
  static const String APP_NAME = "Base App";
  static var BASE_URL = IS_DEVEL_MODE ? _BASE_URL_DEV : _BASE_URL_PROD;
  static const String TOKEN_STRING_KEY = 'TOKEN_STRING_KEY';
  static const String EMAIL_KEY = 'EMAIL_KEY';
  static const String FCM_TOKEN_KEY = 'FCM_TOKEN_KEY';
  static const String APP_VERSION_CODE = '__APP_VERSION_CODE__';
  static const String APP_VERSION_NAME = '__APP_VERSION_NAME__';
  static const String KEY_APPLE_EMAIL = 'KEY_APPLE_EMAIL';
  static const String KEY_WA_CS = 'KEY_WA_CS';
  static const String KEY_REFERAL_CODE = 'KEY_REFERAL_CODE';
  static const String KEY_CAN_AFILIATE = 'KEY_CAN_AFILIATE';
  static const String KEY_IS_INTRO_HAS_OPEN = 'KEY_IS_INTRO_HAS_OPEN';
  static const String KEY_IS_INSURANCE_HAS_OPEN = 'KEY_IS_INSURANCE_HAS_OPEN';
  static const String KEY_IS_COD_HAS_OPEN = 'KEY_IS_COD_HAS_OPEN';
  static const String KEY_MEMBER_UVERIFIED_FIRST_LOGIN = 'KEY_MEMBER_UVERIFIED_FIRST_LOGIN';


  /// CUSTOM CONFIG APP
  static const String LOCAL_KEY = "__locale__";
  static const String IMG_LOGO_SPLASH_TAG = "IMG_LOGO_SPLASH_TAG";

  static const String HAS_REVIEW_KEY = "__HAS_REVIEW_KEY__";
  static const String BIOMETRIC_KEY = "__BIOMETRIC_KEY__";
  static const String CAMPAIGN_CHANNEL_KEY = "__CAMPAIGN_CHANNEL_KEY__";
  static const String CAMPAIGN_NAME_KEY = "__CAMPAIGN_NAME_KEY__";

  static const String FLAGGED_MESSAGES_KEY = "__STORAGE_FLAGGED_MESSAGES__";
  static const String TICKET_MESSAGES_KEY = "__STORAGE_TICKET_MESSAGES__";

  static const String USER_ID = "___USER_ID___";

}

/// SPACINGS DATA
class MySpace {
  /// Padding
  static const double paddingZero = 0.0;
  static const double paddingXS = 2.0;
  static const double paddingS = 4.0;
  static const double paddingM = 8.0;
  static const double paddingL = 16.0;
  static const double paddingXL = 32.0;
  static const double paddingXXL = 36.0;

  /// Margin
  static const double marginZero = 0.0;
  static const double marginXS = 2.0;
  static const double marginS = 4.0;
  static const double marginM = 8.0;
  static const double marginL = 16.0;
  static const double marginXL = 32.0;

  /// Spacing
  static const double spaceXS = 2.0;
  static const double spaceS = 4.0;
  static const double spaceM = 8.0;
  static const double spaceL = 16.0;
  static const double spaceXL = 32.0;
}

/// COLORS DATA
class MyColor {
  /// Common Colors
  static final PRIMARY_COLOR =  Color(0xFFCC510D);
  static final MISTY_COLOR =  Color(0xFFE0E0E0);
  static final Color LIGHT_BACKGROUND_COLOR = Color(0xff1f1f1f);
  static final ACCENT_COLOR =  Color(0xFFF67F3D);
  static final PRIMARY_VARIANT =  Color(0xFF4185FF);
  static final PRIMARY_VARIANT_LIGHT =  Color(0xFFE8F5E9);
  static final PRIMARY_SWATCH =  Color(0xFFf2994b);

  static final ICON_COLOR = Colors.white;
  static final TEXT_COLOR =  Color(0xFF000000);
  static final BUTTON_COLOR =  PRIMARY_COLOR;
  static final TEXT_BUTTON_COLOR =  Colors.white;

  static final PRIMARY_DARK_COLOR = Color(0xFF9E4FEF);
  static final Color DARK_BACKGROUND_COLOR = Color(0xFF232425);
  static final ICON_COLOR_DARK = Colors.white;
  static final TEXT_COLOR_DARK =  Color(0xFFffffff);
  static final BUTTON_COLOR_DARK =  PRIMARY_DARK_COLOR;
  static final TEXT_BUTTON_COLOR_DARK =  Colors.black;

}
