import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'model/recipe.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Recipe> filteredRecipes = recipeList; // Daftar untuk menampung hasil pencarian
  String searchQuery = '';

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredRecipes = recipeList
          .where((recipe) => recipe.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Resep Masakan Indonesia'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: updateSearchQuery,
              decoration: InputDecoration(
                hintText: 'Cari resep...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              ),
            ),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return RecipeList(filteredRecipes: filteredRecipes);
          } else if (constraints.maxWidth <= 1200) {
            return RecipeGrid(gridCount: 3, filteredRecipes: filteredRecipes);
          } else {
            return RecipeGrid(gridCount: 4, filteredRecipes: filteredRecipes);
          }
        },
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  final List<Recipe> filteredRecipes;

  const RecipeList({super.key, required this.filteredRecipes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filteredRecipes.length,
      itemBuilder: (context, index) {
        final Recipe recipe = filteredRecipes[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(recipe: recipe);
            }));
          },
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      recipe.imageAsset,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        recipe.name,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        recipe.description,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class RecipeGrid extends StatelessWidget {
  final int gridCount;
  final List<Recipe> filteredRecipes;

  const RecipeGrid({super.key, required this.gridCount, required this.filteredRecipes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: filteredRecipes.length,
        itemBuilder: (context, index) {
          final Recipe recipe = filteredRecipes[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(recipe: recipe);
              }));
            },
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        recipe.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      recipe.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      recipe.description,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
