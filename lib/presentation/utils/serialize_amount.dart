String serializeAmount(double amount) {
    // Format with thousands separator and 2 decimal places
    final valueString = amount.toStringAsFixed(2);
    final parts = valueString.split('.');
    final intPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '00';
    
    // Add thousand separators
    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(intPart[i]);
    }
    
    return "Ar${buffer.toString()}.$decimalPart";
  }