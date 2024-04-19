import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<String> _filteredItems = [];
  String _selectedFilter = 'All';

  @override
  void initState() {
    super.initState();
    _filteredItems.addAll(_items);
  }

  void _filterSearchResults(String query) {
    List<String> searchList = [];
    searchList.addAll(_items);
    if (query.isNotEmpty) {
      List<String> filteredList = [];
      searchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredList.add(item);
        }
      });
      setState(() {
        _filteredItems.clear();
        _filteredItems.addAll(filteredList);
      });
      return;
    } else {
      setState(() {
        _filteredItems.clear();
        _filteredItems.addAll(_items);
      });
    }
  }

  void _showFilterOptions(BuildContext context) {
    List<String> selectedFilters = [];

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: 500,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Filters',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (var option in [
                            'Beginner',
                            'Intermediate',
                            'Advanced',
                            'Back',
                            'Biceps',
                            'Chest',
                            'Legs',
                            'Shoulders',
                            'Triceps',
                            'Abs',
                            'No Equipment',
                            'Equipment',
                            'Push Up',
                            'Dumbbell',
                          ])
                            CheckboxListTile(
                              title: Text(option),
                              value: selectedFilters.contains(option),
                              onChanged: (value) {
                                setState(() {
                                  if (value!) {
                                    selectedFilters.add(option);
                                  } else {
                                    selectedFilters.remove(option);
                                  }
                                });
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                  // Add more CheckboxListTile widgets for additional options
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Apply filtering based on selectedFilters list
                        // Close the bottom sheet
                        Navigator.pop(context);
                      },
                      child: Text('Apply'),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
          ),
          onChanged: _filterSearchResults,
        ),
        actions: [
          IconButton(
            onPressed: () => _showFilterOptions(context),
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _filteredItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_filteredItems[index]),
          );
        },
      ),
    );
  }
}
