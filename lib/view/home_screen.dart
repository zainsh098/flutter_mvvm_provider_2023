import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/data/response/status.dart';
import 'package:flutter_mvvm_2023/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel homeViewModel = HomeViewModel();

  @override
  void initState() {
    // TODO: implement initState
    homeViewModel.fetchMoviesListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
        ),
        body: ChangeNotifierProvider<HomeViewModel>(
          create: (BuildContext context) => homeViewModel,
          child: Consumer<HomeViewModel>(builder: (context, value, _) {

            switch(value.moviesList.status) {
              case Status.lOADING:
                return CircularProgressIndicator();
              case Status.ERROR:
                return Text(value.moviesList.message.toString());
              case Status.COMPLETED:
                return ListView.builder(
                  itemCount: value.moviesList.data!.movies!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child:ListTile(
                        title: Text(value.moviesList.data!.movies![index].title.toString()),
                        trailing: Image.network(value.moviesList.data!.movies![index].posterurl.toString()),




                      ) ,


                    );

                  },
                );

              default:
                return Text('null');



            }




            return Container();
          }),
        ));
  }
}
