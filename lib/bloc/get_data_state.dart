part of 'get_data_bloc.dart';

@immutable
abstract class GetDataState {}

class GetDataInitial extends GetDataState {}

class GetDataLoading extends GetDataState {}

class GetDataLoaded extends GetDataState {}

class GetDataError extends GetDataState {}

class MaleData extends GetDataState {}

class FemaleData extends GetDataState {}


