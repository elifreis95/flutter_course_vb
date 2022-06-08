import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'b');
  @override
  void initState() {
    super.initState();

    final user1 = PostModel()
      ..userId = 1
      ..body = 'vb';

    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'b';

    final user3 = PostModel3(1, 2, 'a', 'b');

    final user4 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');

    final user5 = PostModel5(userId: 1, id: 2, title: 'a', body: 'b');
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'b');

    final user7 = PostModel7();
    //service data =user8
    final user8 = PostModel8(body: 'b');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[400],
          child: Icon(
            Icons.change_circle,
            size: 30,
          ),
          onPressed: () {
            setState(() {
              user9 = user9.copyWith(title: 'vb');
              user9.updateBody('data');
            });
          }),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}
