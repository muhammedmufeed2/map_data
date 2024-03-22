import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_data/bloc/data_bloc.dart';

import '../Repository/model_class/collect_data.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  void initState() {
    BlocProvider.of<DataBloc>(context).add(FetchData());

    super.initState();
  }

  late CollectData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocBuilder<DataBloc, DataState>(builder: (context, state) {
        if (state is DataBlocLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is DataBlocError) {
          return Center(
            child: Text("Error"),
          );
        }
        if (state is DataBlocLoaded) {
          data = BlocProvider.of<DataBloc>(context).map;
          return ListView.builder(
              itemCount: data.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 350,
                  child: Column(
                    children: [
                      Text(
                        data.data![index].name.toString(),
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Text(data.data![index].fullAddress.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          data.data![index].types.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),SizedBox(height: 15,),
                      Text(
                        data.data![index].workingHours == null
                            ? ""
                            : data.data![index].workingHours!.friday.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        data.data![index].city.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Image.network(
                            data.data![index].photos![0].src.toString()),
                      ),
                    ],
                  ),
                );
              });
        } else {
          return SizedBox();
        }
      }),
    );
  }
}
