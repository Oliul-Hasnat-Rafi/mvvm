
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// import 'package:mvvm/model/movies_model.dart';
// import 'package:mvvm/utils/routes/routes_name.dart';
// import 'package:mvvm/utils/utils.dart';
// import 'package:provider/provider.dart';


// class Home_screen extends StatefulWidget {
//   const Home_screen({Key? key}) : super(key: key);

//   @override
//   _Home_screenState createState() => _Home_screenState();
// }

// class _Home_screenState extends State<Home_screen> {

//   HomeViewViewModel  homeViewViewModel = HomeViewViewModel();
  
//   @override
//   void initState() {
//     // TODO: implement initState
//     homeViewViewModel.fetchMoviesListApi();
//     super.initState();
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     //final userPrefernece = Provider.of<UserViewModel>(context);
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [
//           InkWell(
//               // onTap: (){
//               //   userPrefernece.remove().then((value){
//               //     Navigator.pushNamed(context, RoutesName.login);
//               //   });
//               // },
//               child: Center(child: Text('Logout'))),
//           SizedBox(width: 20,)
//         ],
//       ),
//       body: ChangeNotifierProvider<HomeViewViewModel>(
//         create: (BuildContext context) => homeViewViewModel,
//         child: Consumer<HomeViewViewModel>(
//             builder: (context, value, _){
//               switch(value.moviesList.status){
//                 case Status.LOADING:
//                   return Center(child: CircularProgressIndicator());
//                 case Status.ERROR:
//                   return Center(child: Text(value.moviesList.message.toString()));
//                 case Status.COMPLETED:
//                   return ListView.builder(
//                       itemCount: value.moviesList.data!.movies!.length,
//                       itemBuilder: (context,index){
//                     return Card(
//                       child: ListTile(

//                         leading: Image.network(

//                             value.moviesList.data!.movies![index].posterurl.toString(),
//                         errorBuilder: (context, error, stack){
//                               return Icon(Icons.error, color: Colors.red,);
//                         },
//                           height: 40,
//                           width: 40,
//                           fit: BoxFit.cover,
//                         ),
//                         title: Text(value.moviesList.data!.movies![index].title.toString()),
//                         subtitle: Text(value.moviesList.data!.movies![index].year.toString()),
//                         trailing: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(Utils.averageRating(value.moviesList.data!.movies![index].ratings!).toStringAsFixed(1)),
//                             Icon(Icons.star , color: Colors.yellow,)
//                           ],
//                         ),
//                       ),
//                     );
//                   });

//               }
//               return Container();
//             }),
//       ) ,
//     );
//   }
// }
// //Home_screen
