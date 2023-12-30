class Constants{
  static const Map<String, int> veg={
    'Cauliflower':33,
    'Potatoes':25,
    'Beans':49,
    'Cabbage':18,
  };
  static const Map<String, int> fru={
    'Apple':96,
    'Grapes':68,
    'Banana':73,
    'Mangoes':111,
  };
}
class select {
  static final List<String> _selected = [];

  static void setMapValue(String keyName) {
    _selected.add(keyName);
  }

  static List<String> getArray() {
    return _selected;
  }

  static int getPrice(String object) {
    final selPrice = Constants.veg.containsKey(object)
        ? Constants.veg[object]
        :Constants.fru.containsKey(object)
        ? Constants.fru[object]
        : 'Error';
    return int.parse(selPrice.toString());
  }
}