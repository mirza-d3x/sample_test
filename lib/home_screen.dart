import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/bloc/get_data_bloc.dart';
import 'package:sample_project/get_data_model.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  late GetData getData;

  @override
  void initState() {
    BlocProvider.of<GetDataBloc>(context).add(FetchData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<GetDataBloc, GetDataState>(
          builder: (context, state) {
            if (state is GetDataLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is MaleData) {
              getData = BlocProvider.of<GetDataBloc>(context).getData;
              return Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * .5,
                    child: Center(
                        child: Column(
                      children: [
                        Text(getData.results[0].name.first),
                        Text(getData.results[0].name.last),
                        Text(getData.results[0].gender),
                      ],
                    )),
                  ),
                  Container(
                    color: Colors.blue,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * .5,
                  )
                ],
              );
            }
            if (state is FemaleData) {
              getData = BlocProvider.of<GetDataBloc>(context).getData;
              return Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * .5,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * .5,
                    child: Center(
                        child: Column(
                      children: [
                        Text(getData.results[0].name.first),
                        Text(getData.results[0].name.last),
                        Text(getData.results[0].gender),
                      ],
                    )),
                  ),
                ],
              );
            }
            return Row(
              children: [
                Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * .5,
                ),
                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * .5,
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<GetDataBloc>(context).add(FetchData());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
