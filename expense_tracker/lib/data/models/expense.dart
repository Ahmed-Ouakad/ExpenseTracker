import 'package:equatable/equatable.dart';

class Expense extends Equatable{
  final int target;
  final int amount;
  final String title;
  final DateTime startingDate;
  final DateTime endingDate;

  const Expense({required this.target,required this.amount,
    required this.title, required this.startingDate, required this.endingDate});

  @override
  List<Object?> get props => [target,amount,title,startingDate,endingDate];
}