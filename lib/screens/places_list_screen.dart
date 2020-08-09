import 'package:flutter/material.dart';
import 'add_place_screen.dart';
import 'package:provider/provider.dart';
import '../provider/great_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          )
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(child: const Text("Got no Places yet, start adding some!"),), 
        builder: (context, greatplaces, child) => greatplaces.items.length <= 0 ? 
          child : 
          ListView.builder(
            itemCount: greatplaces.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(backgroundImage: FileImage(greatplaces.items[index].image),),
              title: Text(greatplaces.items[index].title),
              onTap: () {
                // Go to detail places page
              },
            ),
          ),
      )
    );
  }
}
