#Exercise Luhn
The [Luhn algorithm](https://en.wikipedia.org/wiki/Luhn_algorithm) is a method that credit cards and other important numbers
use to distinguish valid numbers from invalid ones.

It is meant to be a quick check that prevents users from accidental errors.

The number, 4194560385008504, is an example of a credit card that passes.
The number, 4194560385008505, is an example of a credit card that fails.

##How the Algorithm Works
*Step 1* - Break the credit card into it's individual digits.
*Step 2* - Starting from the right, double every second digit
*Step 3* - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
*Step 4* - Sum the digits.
*Step 5* - If the sum is divisible by 10 it's a valid number-- otherwise invalid.

### Files worth inspection
The real "gold" is over in [Luhn/lib/luhn.rb](https://github.com/danielpowell4/Luhn/blob/master/lib/luhn.rb)

### To see tests pass
1. Ensure you have a current version of ruby (2.2.0 or higher)
2. Clone the repo to your machine and `cd` on in
3. From the command-line run `bundle exec rspec`
