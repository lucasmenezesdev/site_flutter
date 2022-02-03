@JS()
library stripe;

import 'package:flutter/material.dart';
import 'package:js/js.dart';

String apiKey =
    'pk_live_51JnTF1AmBLiQFUIp1EyQ3M9oOKKvRTsL6yzCbdEMvIIrtZddHj4cKygAl4Jh5UdVJsOS7ixBv45WLIhNywABtr4X00jFcEGN1c';

void redirectToCheckout(BuildContext _) async {
  final stripe = Stripe(apiKey);
  stripe.redirectToCheckout(CheckoutOptions(
    lineItems: [
      LineItem(
        price: 'price_1KMzA6JxRPM20N1wOeZDvEtM',
        quantity: 1,
      )
    ],
    mode: 'payment',
    sucessUrl: 'http://localhost:8080/#/success',
    cancelUrl: 'http://localhost:8080/#/canceled',
  ));
}

@JS()
class Stripe {
  external Stripe(String key);

  external redirectToCheckout(CheckoutOptions options);
}

@JS()
@anonymous
class CheckoutOptions {
  external List<LineItem> get lineItems;

  external String get mode;

  external String get sucessUrl;

  external String get cancelUrl;

  external factory CheckoutOptions({
    List<LineItem> lineItems,
    String mode,
    String sucessUrl,
    String cancelUrl,
  });
}

@JS()
@anonymous
class LineItem {
  external String get price;

  external int get quantity;

  external factory LineItem({String price, int quantity});
}
