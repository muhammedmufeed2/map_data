

import 'package:bloc/bloc.dart';
import 'package:map_data/Repository/api/data_1.dart';
import 'package:meta/meta.dart';

import '../Repository/model_class/collect_data.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  late CollectData map;
  collection datalist=collection();
  DataBloc() : super(DataInitial()) {
    on<DataEvent>((event, emit)async {emit(DataBlocLoading());
    try{
      map =await datalist.getAnime();
      emit(DataBlocLoaded());
    } catch(e){
      print(e);
      emit(DataBlocError());}
    });
      // TODO: implement event handler

  }
}
