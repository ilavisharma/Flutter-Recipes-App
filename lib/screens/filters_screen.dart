import 'package:flutter/material.dart';
import 'package:recipes/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(description),
      value: currentValue,
      onChanged: (value) => updateValue(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal suggestion',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Gluten Free',
                  'Only include gluten-free meals',
                  _glutenFree,
                  (value) => setState(() {
                    _glutenFree = value;
                  }),
                ),
                _buildSwitchListTile(
                  'Lactose Free',
                  'Only include lactose-free meals',
                  _lactoseFree,
                  (value) => setState(() {
                    _lactoseFree = value;
                  }),
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals',
                  _vegetarian,
                  (value) => setState(() {
                    _vegetarian = value;
                  }),
                ),
                _buildSwitchListTile(
                  'Veagn',
                  'Only include only vegan meals',
                  _vegan,
                  (value) => setState(() {
                    _vegan = value;
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
