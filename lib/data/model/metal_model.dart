class MetalModel {
  String? metal;
  String? currency;
  double? priceGram24k;
  double? priceGram22k;
  double? priceGram21k;
  double? priceGram20k;
  double? priceGram18k;
  double? priceGram16k;
  double? priceGram14k;
  double? priceGram10k;

  MetalModel({
    this.metal,
    this.currency,
    this.priceGram24k,
    this.priceGram22k,
    this.priceGram21k,
    this.priceGram20k,
    this.priceGram18k,
    this.priceGram16k,
    this.priceGram14k,
    this.priceGram10k,
  });

  MetalModel.fromJson(Map<String, dynamic> json) {
    metal = json['metal'];
    currency = json['currency'];
    priceGram24k = json['price_gram_24k'];
    priceGram22k = json['price_gram_22k'];
    priceGram21k = json['price_gram_21k'];
    priceGram20k = json['price_gram_20k'];
    priceGram18k = json['price_gram_18k'];
    priceGram16k = json['price_gram_16k'];
    priceGram14k = json['price_gram_14k'];
    priceGram10k = json['price_gram_10k'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['metal'] = metal;
    data['currency'] = currency;
    data['price_gram_24k'] = priceGram24k;
    data['price_gram_22k'] = priceGram22k;
    data['price_gram_21k'] = priceGram21k;
    data['price_gram_20k'] = priceGram20k;
    data['price_gram_18k'] = priceGram18k;
    data['price_gram_16k'] = priceGram16k;
    data['price_gram_14k'] = priceGram14k;
    data['price_gram_10k'] = priceGram10k;
    return data;
  }
}
