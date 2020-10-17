import 'package:flutter/material.dart';
import 'package:flutter_provider/components/drawer.dart';
import 'package:flutter_provider/models/user.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  // final ScopedCounter scopedCounter = ScopedCounter();

  final _formKey = GlobalKey<FormState>();
  final _user = User();
  
  _showSomething(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('showing the user his mother name..')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('form screen'),),
      drawer: MyDrawer(),
       body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'firstname', 
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (val) => setState(() => _user.firstName = val),
                ),
                SizedBox(height: 12,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'lastname',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Please enter your lastname';
                    }
                    return null;
                  },
                  onSaved: (val) => setState(() => _user.lastName = val),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text('Subscription'),
                ),
                FloatingActionButton(onPressed: () => setState(() => _user.newsletter = true)),
                SwitchListTile(
                  title: Text('Monthly newsLetter'),
                  value: _user.newsletter,
                  onChanged: (bool val) => setState(() => _user.newsletter = val),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text(
                    'interests',
                    style: TextStyle(fontSize: 19, color: Colors.blueGrey),
                  ),
                ),
                CheckboxListTile(
                  title: const Text('Cooking'),
                  value: _user.passions[User.PassionCooking],
                  onChanged: (bool val) => setState(() => _user.passions[User.PassionCooking] = val),
                ),
                CheckboxListTile(
                  title: const Text('Hiking'),
                  value: _user.passions[User.PassionHiking],
                  onChanged: (bool val) => setState(() => _user.passions[User.PassionHiking] = val),
                ),
                CheckboxListTile(
                  title: const Text('Traveling'),
                  value: _user.passions[User.PassionTraveling],
                  onChanged: (bool val) => setState(() => _user.passions[User.PassionTraveling] = val),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: RaisedButton(
                    onPressed: () {
                      final form = _formKey.currentState;
                      if(form.validate()) {
                        form.save();
                        _user.save();
                        _showSomething(context);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
