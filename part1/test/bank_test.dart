import 'package:tdd_by_example_part_1/bank.dart';
import 'package:tdd_by_example_part_1/expression.dart';
import 'package:tdd_by_example_part_1/money.dart';
import 'package:test/test.dart';

void main() {
  test(
    "Bank.reduce should return valid Money",
    () async {
      Expression sum = Sum(Money.dollar(3), Money.dollar(4));
      final bank = Bank();
      final result = bank.reduce(sum, "USD");
      expect(result, Money.dollar(7));
    },
  );

  test(
    "Bank should return rate 1 for identical currency",
    () async {
      expect(Bank().rate("USD", "USD"), 1);
    },
  );
}
