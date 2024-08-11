part of 'sub_category_cubit.dart';

abstract class SubCategoryState {}

class SubCategoryInitial extends SubCategoryState {}

class SubCategoryLoading extends SubCategoryState {}

class SubCategorySuccess extends SubCategoryState {
  final List<SubCategoryEntity> subCategoyList;
  SubCategorySuccess(this.subCategoyList);
}

class SubCategoryFailure extends SubCategoryState {
  final String errorMessage;
  SubCategoryFailure(this.errorMessage);
}
