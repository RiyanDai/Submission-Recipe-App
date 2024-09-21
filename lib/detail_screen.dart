import 'package:flutter/material.dart';
import 'model/recipe.dart'; // Pastikan file import path sesuai dengan struktur project kamu

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final Recipe recipe;

  const DetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(recipe: recipe);
        } else {
          return DetailMobilePage(recipe: recipe);
        }
      },
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final Recipe recipe;

  const DetailWebPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Resep Masakan',
                    style: TextStyle(
                      fontFamily: 'Staatliches',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left Section - Image and Gallery
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(recipe.imageAsset, fit: BoxFit.cover),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Galeri Resep',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            SizedBox(
                              height: 150,
                              child: GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 8.0,
                                ),
                                itemCount: recipe.imageUrls.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => FullScreenImage(imageUrl: recipe.imageUrls[index]),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: recipe.imageUrls[index],
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          recipe.imageUrls[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      
                      // Right Section - Recipe Details
                      Expanded(
                        flex: 3,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  recipe.name,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                                const SizedBox(height: 24.0),
                                
                                // Ingredients Section
                                const Text(
                                  'Bahan-bahan',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: recipe.ingredients.map((ingredient) {
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 4.0),
                                      child: Text(
                                        '- $ingredient',
                                        style: const TextStyle(fontSize: 16.0),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                
                                const SizedBox(height: 24.0),
                                
                                // Steps Section
                                const Text(
                                  'Langkah-langkah',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: recipe.instructions.map((step) {
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 8.0),
                                      child: Text(
                                        '- $step',
                                        style: const TextStyle(fontSize: 16.0),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                
                                const SizedBox(height: 24.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set background to transparent
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(0, 240, 241, 239).withOpacity(0.5), // Semi-transparent background for AppBar
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Hero(
            tag: imageUrl,
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}





class DetailMobilePage extends StatelessWidget {
  final Recipe recipe;

  const DetailMobilePage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(recipe.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                recipe.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 8.0),
                  const Text(
                    'Bahan-bahan',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: recipe.ingredients.map((ingredient) {
                      return Text(
                        '- $ingredient',
                        style: const TextStyle(fontSize: 16.0),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Langkah-langkah',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: recipe.instructions.map((step) {
                      return Text(
                        '- $step',
                        style: const TextStyle(fontSize: 16.0),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Galeri Rendang',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SizedBox(
                    height: 200,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.0,
                      ),
                      itemCount: recipe.imageUrls.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(recipe.imageUrls[index]),
                                    ),
                                  );
                                },
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                recipe.imageUrls[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
