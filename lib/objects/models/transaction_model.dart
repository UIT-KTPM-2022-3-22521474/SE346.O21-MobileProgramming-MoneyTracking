import 'package:money_tracking/objects/models/category_model.dart';
import 'package:money_tracking/objects/models/wallet_model.dart';

class TransactionModel {
  final int id;
  final String name;
  final CategoryModel category;
  final WalletModel wallet;
  final DateTime date;
  final String note;
  final BigInt amount;
  final bool isExpanded;

  TransactionModel({
    required this.id,
    required this.name,
    required this.category,
    required this.wallet,
    required this.date,
    required this.note,
    required this.amount,
    required this.isExpanded,
  });

  @override
  String toString() {
    return 'TransactionModel{id: $id, name: $name, category: $category, wallet: $wallet, date: $date, note: $note, amount: $amount, isExpanded: $isExpanded}';
  }
}