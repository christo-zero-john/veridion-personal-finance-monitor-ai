class FinancialCalculator {
  /// Calculates the simple interest.
  /// [principal] The initial amount.
  /// [rate] The annual interest rate (in percentage).
  /// [time] The time in years.
  double calculateSimpleInterest(double principal, double rate, double time) {
    if (principal < 0 || rate < 0 || time < 0) {
      throw ArgumentError('Principal, rate, and time must be non-negative.');
    }
    return (principal * rate * time) / 100;
  }

  /// A placeholder for more complex calculation logic.
  String getGreeting() {
    return 'Financial Logic Module Loaded';
  }
}
