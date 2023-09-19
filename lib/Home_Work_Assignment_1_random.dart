import 'dart:io';
import 'dart:math';
calculateInterest(Function fn,
    {var amount = 0, int numberOfYear = 0, double interestRateDecimal = 0}) {
  var  interestAmount;
  if(amount >0 && numberOfYear>0 && (interestRateDecimal>0 && interestRateDecimal<1) ) {
    fn(amount, numberOfYear,interestRateDecimal);
    interestAmount=fn(amount, numberOfYear,interestRateDecimal);
  }


  print('----------------------------------------------------------------------------------------');

  stdout.write(amount );
  stdout.write('       ' );
  stdout.write(numberOfYear);
  stdout.write('       ' );
  stdout.write(interestRateDecimal);
  stdout.write('                    ' );
  stdout.write(interestAmount.toStringAsFixed(2));
  stdout.write('         ' );
  stdout.write((amount+interestAmount).toStringAsFixed(2));
  print('');
//print('----------------------------------------------------------------------');

}// end of calculate simple interest


void main() {

  Random randomYear= new Random();
  Random randomLoanAmount = new Random();
  Random randomInterestRateDecimal= new Random();

  print('Principal  Tenure  Interest_Rate_decimal     Interest         Total  ');
  for(int i=0;i<10;i++){

    calculateInterest(
            (var principalAmount, var tenure, var interestRateInDecimal) {
          // print('printing expected way  ${principalAmount *tenure * interestRateInDecimal} ');
          return (principalAmount * tenure * interestRateInDecimal)
          ;

        },

        amount: (randomLoanAmount.nextInt(9) + 1)*100000,
        numberOfYear: randomYear.nextInt(7)+5,
        interestRateDecimal: (randomInterestRateDecimal.nextInt(15) + 5)/100 );
  } // end of for loop
  print('\n');

  /////////////COMPOUND INTEREST   Annual compounding (1x compound per year) 	A = P(1 + r)^t
  print('Principal  Tenure  Interest_Rate_decimal     Compound_Interest     Total  ');
  for(int i=0;i<10;i++) {
    calculateInterest(
            (var principalAmount, var tenure, var interestRateInDecimal) {
          // print('printing expected way  ${principalAmount *tenure * interestRateInDecimal} ');
          return principalAmount * pow(1 + interestRateInDecimal, tenure) -
              principalAmount;
        },

        amount: (randomLoanAmount.nextInt(9) + 1) * 100000,
        numberOfYear: randomYear.nextInt(7) + 5,
        interestRateDecimal: (randomInterestRateDecimal.nextInt(15) + 5) / 100);
  }
}
