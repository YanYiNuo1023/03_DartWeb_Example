// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

//import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  //DivElement dartStatus = querySelector('#dart-status') as DivElement;
  //dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    //修改图像的内容
    {'type': '日本', 'value': 5},
    {'type': '美国', 'value': 11},
    {'type': '印度', 'value': 11},
    {'type': '中国', 'value': 29},
    {'type': '意大利', 'value': 10},
    {'type': '俄罗斯', 'value': 23}
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
