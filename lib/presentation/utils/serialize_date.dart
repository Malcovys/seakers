
String serializeDate(DateTime date) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));
  final dateOnly = DateTime(date.year, date.month, date.day);
  
  String prefix;
  if (dateOnly == today) {
    prefix = "Today";
  } else if (dateOnly == yesterday) {
    prefix = "Yesterday";
  } else {
    // Format as Month Day, Year (e.g., Aug 18, 2025)
    prefix = "${_getMonthName(date.month)} ${date.day}, ${date.year}";
  }
  
  // Format time as HH:MM AM/PM
  final hour = date.hour > 12 ? date.hour - 12 : date.hour == 0 ? 12 : date.hour;
  final minute = date.minute.toString().padLeft(2, '0');
  final period = date.hour >= 12 ? "PM" : "AM";
  
  return "$prefix, $hour:$minute $period";
}

String _getMonthName(int month) {
  const months = [
    "Jan", "Feb", "Mar", "Apr", "May", "Jun", 
    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
  ];
  return months[month - 1];
}