import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show NumberFormat;
import 'package:shalvarmalvar_app/constants/zarinpal_id.dart';

class WoocommerceInfo {
  // BASE URL
  static const String _baseURL = 'https://SITE.COM/wp-json';

  // CONSUMERKEY & CONSUMERSECRET
  static const String consumerKey = 'ck_';
  static const String consumerSecret = 'cs_';

  // BASE URL WOOCOMMERCE
  static const String baseURL = '$_baseURL/wc/v3/';

  // Base URL of Wordpress
  static const String baseURLPosts = '$_baseURL/wp/v2/posts?_embed';

  // URL FOR AUTHENTICATION WITH JWT
  static const String tokenURL = '$_baseURL/jwt-auth/v1/token';

  // API ENDPOINTS
  static const String customerURL = 'customers';
  static const String productURL = 'products';
  static const String addtocartURL = 'addtocart';
  static const String cartURL = 'cart';
  static const String productCategoryURL = 'products/categories';
  static const String orderURL = 'orders';
}

class Constants {
  static final NumberFormat numberFormat = NumberFormat.decimalPattern('fa');

  static const Color primaryColor = Color(0xFF296E48);
  static const Color blackColor = Colors.black54;
  static const Color purpleColor = Color(0xFF301984);
}

class ZarinpalInfo {
  static const String zarinpalMerchId = ZarinpalMerchID.id;
  static const String zarinpalCallBackURL = 'https://nabegheha.com/trust-us';
  static const String zarinpalRequestURL =
      'https://api.zarinpal.com/pg/v4/payment/request.json';
  static const String zarinpalVerifyURL =
      'https://api.zarinpal.com/pg/v4/payment/verify.json';
}
