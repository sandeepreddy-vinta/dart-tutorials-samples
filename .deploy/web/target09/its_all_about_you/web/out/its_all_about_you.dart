// Auto-generated from its_all_about_you.html.
// DO NOT EDIT.

library its_all_about_you_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'dart:html';
import 'dart:json' as json;


// Original code


// JSON strings, bound to HTML
String intAsJson;
String doubleAsJson;
String stringAsJson;
String listAsJson;
String boolAsJson;
String mapAsJson;

// Data input as strings, bound to input fields
String favoriteNumber='';
String valueOfPi='';
String horrorScope='';
String favOne='';
String favTwo='';
String favThree='';
String chocolate='';

void showJson() {
  // Typed data to convert to JSON
  num favNum = int.parse(favoriteNumber);
  num pi = double.parse(valueOfPi);
  var anElement = query('#true');
  bool choco = anElement.checked ? true : false;
  
  List<String> favoriteThings = [ favOne, favTwo, favThree ];

  Map formData = {
    'favoriteNumber': favNum,
    'valueOfPi': pi,
    'chocolate': choco,
    'horrorScope': horrorScope,
    'favoriteThings': favoriteThings
  };

  // Convert everything to JSON
  intAsJson = json.stringify(favNum);          // int
  doubleAsJson = json.stringify(pi);           // double
  boolAsJson = json.stringify(choco);          // boolean
  stringAsJson = json.stringify(horrorScope);  // string
  listAsJson = json.stringify(favoriteThings); // list of strings
  mapAsJson = json.stringify(formData);        // map with string keys
                                               // and mixed values
}

void main() {
  populateFromJson();
  showJson();
}

void populateFromJson() {

String jsonDataAsString = '''
{ "favoriteNumber":44,
  "valueOfPi":3.141592,
  "chocolate":true,
  "horrorScope":"virgo",
  "favoriteThings":["raindrops",
                    "whiskers",
                    "mittens"]
}
''';

  Map jsonData = json.parse(jsonDataAsString);
  
  favoriteNumber = jsonData['favoriteNumber'].toString();
  valueOfPi = jsonData['valueOfPi'].toString();
  horrorScope = jsonData['horrorScope'];
  favOne = jsonData['favoriteThings'][0];
  favTwo = jsonData['favoriteThings'][1];
  favThree = jsonData['favoriteThings'][2];

  if (jsonData['chocolate']) {
    var anElement = query('#true');
    anElement.checked = true;
  } else {
    var anElement = query('#false');
    anElement.checked = true;
  }
}

// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.document.body;
  var __e0, __e10, __e11, __e13, __e14, __e15, __e17, __e19, __e2, __e3, __e5, __e6, __e8, __e9;
  var __t = new autogenerated.Template(__root);
  __e0 = __root.nodes[3].nodes[3].nodes[1].nodes[3].nodes[0];
  __t.listen(__e0.onChange, ($event) { showJson(); });
  __t.listen(__e0.onInput, ($event) { favoriteNumber = __e0.value; });
  __t.oneWayBind(() => favoriteNumber, (e) { if (__e0.value != e) __e0.value = e; }, false, false);
  __e2 = __root.nodes[3].nodes[3].nodes[1].nodes[7].nodes[0];
  var __binding1 = __t.contentBind(() =>  intAsJson , false);
  __e2.nodes.addAll([new autogenerated.Text(' '),
      __binding1,
      new autogenerated.Text(' ')]);
  __e3 = __root.nodes[3].nodes[3].nodes[3].nodes[3].nodes[0];
  __t.listen(__e3.onChange, ($event) { showJson(); });
  __t.listen(__e3.onInput, ($event) { valueOfPi = __e3.value; });
  __t.oneWayBind(() => valueOfPi, (e) { if (__e3.value != e) __e3.value = e; }, false, false);
  __e5 = __root.nodes[3].nodes[3].nodes[3].nodes[7].nodes[0];
  var __binding4 = __t.contentBind(() =>  doubleAsJson , false);
  __e5.nodes.addAll([new autogenerated.Text(' '),
      __binding4,
      new autogenerated.Text(' ')]);
  __e6 = __root.nodes[3].nodes[3].nodes[5].nodes[3].nodes[0];
  __t.listen(__e6.onChange, ($event) { showJson(); });
  __t.listen(__e6.onInput, ($event) { horrorScope = __e6.value; });
  __t.oneWayBind(() => horrorScope, (e) { if (__e6.value != e) __e6.value = e; }, false, false);
  __e8 = __root.nodes[3].nodes[3].nodes[5].nodes[7].nodes[0];
  var __binding7 = __t.contentBind(() =>  stringAsJson , false);
  __e8.nodes.addAll([new autogenerated.Text(' '),
      __binding7,
      new autogenerated.Text(' ')]);
  __e9 = __root.nodes[3].nodes[3].nodes[7].nodes[3].nodes[1];
  __t.listen(__e9.onChange, ($event) { showJson(); });
  __t.listen(__e9.onInput, ($event) { favOne = __e9.value; });
  __t.oneWayBind(() => favOne, (e) { if (__e9.value != e) __e9.value = e; }, false, false);
  __e10 = __root.nodes[3].nodes[3].nodes[7].nodes[3].nodes[3];
  __t.listen(__e10.onChange, ($event) { showJson(); });
  __t.listen(__e10.onInput, ($event) { favTwo = __e10.value; });
  __t.oneWayBind(() => favTwo, (e) { if (__e10.value != e) __e10.value = e; }, false, false);
  __e11 = __root.nodes[3].nodes[3].nodes[7].nodes[3].nodes[5];
  __t.listen(__e11.onChange, ($event) { showJson(); });
  __t.listen(__e11.onInput, ($event) { favThree = __e11.value; });
  __t.oneWayBind(() => favThree, (e) { if (__e11.value != e) __e11.value = e; }, false, false);
  __e13 = __root.nodes[3].nodes[3].nodes[7].nodes[7].nodes[0];
  var __binding12 = __t.contentBind(() =>  listAsJson , false);
  __e13.nodes.addAll([new autogenerated.Text(' '),
      __binding12,
      new autogenerated.Text(' ')]);
  __e14 = __root.nodes[3].nodes[3].nodes[9].nodes[3].nodes[0];
  __t.listen(__e14.onChange, ($event) { showJson(); });
  __e15 = __root.nodes[3].nodes[3].nodes[9].nodes[3].nodes[2];
  __t.listen(__e15.onChange, ($event) { showJson(); });
  __e17 = __root.nodes[3].nodes[3].nodes[9].nodes[7].nodes[0];
  var __binding16 = __t.contentBind(() =>  boolAsJson , false);
  __e17.nodes.addAll([new autogenerated.Text(' '),
      __binding16,
      new autogenerated.Text(' ')]);
  __e19 = __root.nodes[5].nodes[4];
  var __binding18 = __t.contentBind(() =>  mapAsJson , false);
  __e19.nodes.add(__binding18);
  __t.create();
  __t.insert();
}

//@ sourceMappingURL=its_all_about_you.dart.map