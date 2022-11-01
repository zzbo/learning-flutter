void main() {

  intToColName (int number) {
    String colName = '';
    number.floor();
    int dividend = number.abs().floor();
    int rest;

    while (dividend > 0) {
      rest = (dividend - 1) % 26;
      
      colName = String.fromCharCode(65 + rest) + colName;
      dividend = ((dividend - rest)/26).truncate();
    }
    return colName;
  }

  print(intToColName(28));

}
