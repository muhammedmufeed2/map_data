part of 'data_bloc.dart';

@immutable
abstract class DataState {}

class DataInitial extends DataState {}
class DataBlocLoading extends DataState{}
class DataBlocLoaded extends DataState{}
class DataBlocError extends DataState{}
