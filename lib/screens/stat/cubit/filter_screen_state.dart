part of 'filter_screen_cubit.dart';

class FilterScreenState with EquatableMixin {
  final bool isExpanded;
  final double? amount;
  final CategoryModel? category;
  final String note;
  final DateTime selectedDate;

  const FilterScreenState({
    this.isExpanded = false,
    this.amount,
    this.category,
    this.note = '',
    required this.selectedDate,
  });

  @override
  List<Object?> get props => [isExpanded, selectedDate, amount, category, note];

  FilterScreenState copyWith({
    bool? isExpanded,
    double? amount,
    CategoryModel? category,
    String? note,
    DateTime? selectedDate,
  }) {
    return FilterScreenState(
      isExpanded: isExpanded ?? this.isExpanded,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      note: note ?? this.note,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}