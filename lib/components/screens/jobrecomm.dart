import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:google_fonts/google_fonts.dart';

class JobRecomm extends StatefulWidget {
  const JobRecomm({super.key});

  @override
  State<JobRecomm> createState() => _JobRecommState();
}

class _JobRecommState extends State<JobRecomm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.backspace_sharp,
          color: Color.fromARGB(255, 49, 64, 234),
        ),
        title: Text(
          "Job Recommendation",
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
      body: SizedBox(
        height: 60,
        child: MultiSelectContainer(
            showInListView: true,
            listViewSettings: ListViewSettings(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => const SizedBox(
                      width: 10,
                    )),
            items: [
              MultiSelectCard(value: 'Dart', label: 'Dart'),
              MultiSelectCard(value: 'Python', label: 'Python'),
              MultiSelectCard(value: 'JavaScript', label: 'JavaScript'),
              MultiSelectCard(value: 'Java', label: 'Java'),
              MultiSelectCard(value: 'C#', label: 'C#'),
              MultiSelectCard(value: 'C++', label: 'C++'),
              MultiSelectCard(value: 'Go Lang', label: 'Go Lang'),
              MultiSelectCard(value: 'Swift', label: 'Swift'),
              MultiSelectCard(value: 'PHP', label: 'PHP'),
              MultiSelectCard(value: 'Kotlin', label: 'Kotlin')
            ],
            onChange: (allSelectedItems, selectedItem) {}),
      ),
    );
  }
}

class GFG extends StatefulWidget {
  const GFG({Key? key}) : super(key: key);

  @override
  State<GFG> createState() => _GFGState();
}

class _GFGState extends State<GFG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GeeksForGeeks",
        ),
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
