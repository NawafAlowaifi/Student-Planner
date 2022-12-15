import 'package:student_planner/Providers/Task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import '../Providers/Tasks.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class AddSheet extends StatefulWidget {
  @override
  State<AddSheet> createState() => _AddSheetState();
}

class _AddSheetState extends State<AddSheet> {
  final _titleController = TextEditingController();
  final _DateFocusNode = FocusNode();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _form = GlobalKey<FormState>();
  TimeOfDay _time = TimeOfDay.now().replacing(hour: 11, minute: 30);
  var _editedProduct = Task(title: '', date: '', id: '', time: '');
  int counter = 0;
  String randomc() {
    return (counter++).toString();
  }

  @override
  // void initState() {
  //   _imageUrlFocusNode.addListener(_updateImageUrl);
  //   super.initState();
  // }

  @override
  // void dispose() {
  //   _imageUrlFocusNode.removeListener(_updateImageUrl);
  //   _priceFocusNode.dispose();
  //   _descriptionFocusNode.dispose();
  //   _titleController.dispose();
  //   _imageUrlFocusNode.dispose();
  //   super.dispose();
  // }

  // void _updateImageUrl() {
  //   if (!_imageUrlFocusNode.hasFocus) {
  //     setState(() {});
  //   }
  // }

  void _saveForm() {
    _form.currentState?.save();

    Provider.of<Tasks>(context, listen: false).AddTask(_editedProduct);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveForm,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Title'),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_DateFocusNode);
                },
                onSaved: (value) {
                  _editedProduct = Task(
                      title: value, date: value, id: randomc(), time: value);
                },
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(labelText: 'Date'),
                textInputAction: TextInputAction.next,
                focusNode: _DateFocusNode,
                controller: _dateController,
                onTap: () async {
                  DateTime? pickedDate = await DatePicker.showDatePicker(
                      context, onConfirm: (time) {
                    setState(() {
                      _dateController.text =
                          time.toIso8601String().substring(0, 10);
                    });
                  }, showTitleActions: true);
                },
                onFieldSubmitted: (_) {},
                onSaved: (value) {
                  _editedProduct = Task(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      date: value,
                      time: value);
                },
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(labelText: 'Time'),
                textInputAction: TextInputAction.next,
                controller: _timeController,
                onTap: () async {
                  // DateTime? pickedDate = await TimePicker.showDatePicker(
                  //     context, onConfirm: (time) {
                  //   setState(() {
                  //     _dateController.text =
                  //         time.toIso8601String().substring(0, 10);
                  //   });
                  // }, showTitleActions: true);

                  Navigator.of(context).push(showPicker(
                      themeData: ThemeData(),
                      value: _time,
                      onChange: (value) {
                        setState(() {
                          _timeController.text =
                              value.toString().substring(9, 16);
                        });
                        var timeOfDay = _time = value;
                      }));
                },
                onFieldSubmitted: (_) {},
                onSaved: (value) {
                  _editedProduct = Task(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      date: _editedProduct.date,
                      time: value);
                },
              )
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: <Widget>[
              //     Container(
              //       width: 100,
              //       height: 100,
              //       margin: EdgeInsets.only(
              //         top: 8,
              //         right: 10,
              //       ),
              //       decoration: BoxDecoration(
              //         border: Border.all(
              //           width: 1,
              //           color: Colors.grey,
              //         ),
              //       ),
              //       child: _imageUrlController.text.isEmpty
              //           ? Text('Enter a URL')
              //           : FittedBox(
              //               child: Image.network(
              //                 _imageUrlController.text,
              //                 fit: BoxFit.cover,
              //               ),
              //             ),
              //     ),
              //     Expanded(
              //       child: TextFormField(
              //         decoration: InputDecoration(labelText: 'Image URL'),
              //         keyboardType: TextInputType.url,
              //         textInputAction: TextInputAction.done,
              //         controller: _imageUrlController,
              //         focusNode: _imageUrlFocusNode,
              //         onFieldSubmitted: (_) {
              //           _saveForm();
              //         },
              //         onSaved: (value) {
              //           _editedProduct = Product(
              //             title: _editedProduct.title,
              //             price: _editedProduct.price,
              //             description: _editedProduct.description,
              //             imageUrl: value,
              //             id: null,
              //           );
              //         },
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
