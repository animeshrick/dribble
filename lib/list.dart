// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:scroll_app_bar/scroll_app_bar.dart';
// import 'package:scroll_bottom_navigation_bar/scroll_bottom_navigation_bar.dart';
//
// class DemoList extends StatefulWidget {
//   @override
//   _DemoListState createState() => _DemoListState();
// }
//
// class _DemoListState extends State<DemoList> {
//   ScrollController _scrollController;
//   final controller = ScrollController();
//
//   @override
//   void initState() {
//     super.initState();
//
//     _scrollController = ScrollController();
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 3,
//       child: Scaffold(
//         //extendBodyBehindAppBar: true,
//         appBar: ScrollAppBar(
//           controller: controller,
//           //elevation: 0.9,
//           //backgroundColor: Colors.transparent,
//           bottom: TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.directions_car)),
//               Tab(icon: Icon(Icons.directions_transit)),
//               Tab(icon: Icon(Icons.directions_bike)),
//             ],
//           ),
//           title: Text('List'),
//         ),
//         bottomNavigationBar: ScrollBottomNavigationBar(
//           controller: controller,
//           type: BottomNavigationBarType.fixed,
//           backgroundColor: Colors.grey[900],
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.offline_bolt),
//               title: Text('Shorts'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.graphic_eq),
//               title: Text('Activity'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.cloud_upload),
//               title: Text('Upload'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.email),
//               title: Text('Messages'),
//             ),
//             BottomNavigationBarItem(
// //                activeIcon: IconButton(
// //                  onPressed: null,
// //                  icon: Icon(Icons.hourglass_full),
// //                ),
//               icon: Icon(Icons.menu),
//               title: Text('More'),
//             ),
//           ],
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.grey,
//         ),
//         body: Stack(
//           overflow: Overflow.visible,
//           children: [
//             // getTabBarView(),
//             getListView(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Widget getTabBarView() {
//   var tabBarView = TabBarView(
//     children: [
//       Icon(Icons.directions_car),
//       Icon(Icons.directions_transit),
//       Icon(Icons.directions_bike),
//     ],
//   );
//   return tabBarView;
// }
//
// Widget getListView() {
//   var listView = ListView(
//     children: [
//       ListTile(
//         leading: Icon(Icons.local_activity, size: 50),
//         title: Text('Activity'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_airport, size: 50),
//         title: Text('Airport'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_atm, size: 50),
//         title: Text('ATM'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_bar, size: 50),
//         title: Text('Bar'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_cafe, size: 50),
//         title: Text('Cafe'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_car_wash, size: 50),
//         title: Text('Car Wash'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_convenience_store, size: 50),
//         title: Text('Heart Shaker'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_dining, size: 50),
//         title: Text('Dining'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_drink, size: 50),
//         title: Text('Drink'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('1st'),
//         subtitle: Text('Text'),
//         trailing: Icon(Icons.wb_sunny),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_grocery_store, size: 50),
//         title: Text('Grocery Store'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_gas_station, size: 50),
//         title: Text('Gas Station'),
//         subtitle: Text('Description here'),
//       ),
//       ListTile(
//         leading: Icon(Icons.local_drink, size: 50),
//         title: Text('Drink'),
//         subtitle: Text('Description here'),
//       ),
//     ],
//   );
//   return listView;
// }


// Flutter code sample for AnimatedList

// This sample application uses an [AnimatedList] to create an effect when
// items are removed or added to the list.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnimatedListSample extends StatefulWidget {
  @override
  _AnimatedListSampleState createState() => _AnimatedListSampleState();
}

class _AnimatedListSampleState extends State<AnimatedListSample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  ListModel<int> _list;
  int _selectedItem;
  int _nextItem; // The next item inserted when the user presses the '+' button.

  @override
  void initState() {
    super.initState();
    _list = ListModel<int>(
      listKey: _listKey,
      initialItems: <int>[0, 1, 2],
      removedItemBuilder: _buildRemovedItem,
    );
    _nextItem = 3;
  }

  // Used to build list items that haven't been removed.
  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: _list[index],
      selected: _selectedItem == _list[index],
      onTap: () {
        setState(() {
          _selectedItem = _selectedItem == _list[index] ? null : _list[index];
        });
      },
    );
  }

  // Used to build an item after it has been removed from the list. This
  // method is needed because a removed item remains visible until its
  // animation has completed (even though it's gone as far this ListModel is
  // concerned). The widget will be used by the
  // [AnimatedListState.removeItem] method's
  // [AnimatedListRemovedItemBuilder] parameter.
  Widget _buildRemovedItem(
      int item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: item,
      selected: false,
      // No gesture detector here: we don't want removed items to be interactive.
    );
  }

  // Insert the "next item" into the list model.
  void _insert() {
    final int index =
    _selectedItem == null ? _list.length : _list.indexOf(_selectedItem);
    _list.insert(index, _nextItem++);
  }

  // Remove the selected item from the list model.
  void _remove() {
    if (_selectedItem != null) {
      _list.removeAt(_list.indexOf(_selectedItem));
      setState(() {
        _selectedItem = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedList'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_circle),
              onPressed: _insert,
              tooltip: 'insert a new item',
            ),
            IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: _remove,
              tooltip: 'remove the selected item',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _list.length,
            itemBuilder: _buildItem,
          ),
        ),
      ),
    );
  }
}

/// Keeps a Dart [List] in sync with an [AnimatedList].
///
/// The [insert] and [removeAt] methods apply to both the internal list and
/// the animated list that belongs to [listKey].
///
/// This class only exposes as much of the Dart List API as is needed by the
/// sample app. More list methods are easily added, however methods that
/// mutate the list must make the same changes to the animated list in terms
/// of [AnimatedListState.insertItem] and [AnimatedList.removeItem].
class ListModel<E> {
  ListModel({
    @required this.listKey,
    @required this.removedItemBuilder,
    Iterable<E> initialItems,
  })  : assert(listKey != null),
        assert(removedItemBuilder != null),
        _items = List<E>.from(initialItems ?? <E>[]);

  final GlobalKey<AnimatedListState> listKey;
  final dynamic removedItemBuilder;
  final List<E> _items;

  AnimatedListState get _animatedList => listKey.currentState;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList.insertItem(index);
  }

  E removeAt(int index) {
    final E removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList.removeItem(
        index,
            (BuildContext context, Animation<double> animation) =>
            removedItemBuilder(removedItem, context, animation),
      );
    }
    return removedItem;
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
}

/// Displays its integer item as 'item N' on a Card whose color is based on
/// the item's value.
///
/// The text is displayed in bright green if [selected] is
/// true. This widget's height is based on the [animation] parameter, it
/// varies from 0 to 128 as the animation varies from 0.0 to 1.0.
class CardItem extends StatelessWidget {
  const CardItem(
      {Key key,
        @required this.animation,
        this.onTap,
        @required this.item,
        this.selected = false})
      : assert(animation != null),
        assert(item != null && item >= 0),
        assert(selected != null),
        super(key: key);

  final Animation<double> animation;
  final VoidCallback onTap;
  final int item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.black);
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        axis: Axis.vertical,
        sizeFactor: animation,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            height: 80.0,
            child: Card(
              color: Colors.primaries[item % Colors.primaries.length],
              child: Center(
                child: Text('Item $item', style: textStyle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(AnimatedListSample());
}
