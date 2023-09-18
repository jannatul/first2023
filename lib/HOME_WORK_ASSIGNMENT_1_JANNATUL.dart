import 'dart:io';
import 'dart:math';

calculateInterest(Function fn,
    {var amount = 0, int numberOfYear = 0, double interestRateDecimal = 0}) {
  var interestAmount;
  if (amount > 0 &&
      numberOfYear > 0 &&
      (interestRateDecimal > 0 && interestRateDecimal < 1)) {
    fn(amount, numberOfYear, interestRateDecimal);
    interestAmount = fn(amount, numberOfYear, interestRateDecimal);
  }

  print('Principal  Tenure  Interest_Rate_decimal Interest  Total  ');
  print('-----------------------------------------------------------');

  stdout.write(amount);
  stdout.write('       ');
  stdout.write(numberOfYear);
  stdout.write('       ');
  stdout.write(interestRateDecimal);
  stdout.write('                    ');
  stdout.write(interestAmount);
  stdout.write('     ');
  stdout.write(amount + interestAmount);
  print('');
} // end of calculate  interest

void main() {
  // Simple Interest
  calculateInterest(
      (var principalAmount, var tenure, var interestRateInDecimal) {
    return principalAmount * tenure * interestRateInDecimal;
  }, amount: 1000, numberOfYear: 2, interestRateDecimal: .2);

  /////////////COMPOUND INTEREST   Annual compounding (1x compound per year) 	A = P(1 + r)^t
  calculateInterest(
      (var principalAmount, var tenure, var interestRateInDecimal) {
    return principalAmount * pow(1 + interestRateInDecimal, tenure) -
        principalAmount;
  }, amount: 1000, numberOfYear: 2, interestRateDecimal: .2);
}
