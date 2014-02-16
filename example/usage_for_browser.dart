#library('teaolive-usage');

#import('dart:html');

// #import('package:teaolive/teaolive.dart');
// #import('package:teaolive/libs/teaolive_html_reporter.dart');
#import('../teaolive.dart');
#import('../reporter/html_reporter.dart'); // if you want to run from command-line. remove this line.

#import('tests/sample_test.dart', prefix: "sample");
#import('tests/hoge_test.dart', prefix: "hoge");
#import('tests/foobar_test.dart', prefix: "foobar");

void main(){

  addTest(sample.testCase);
  addTest(hoge.testCase);
  addTest(foobar.testCase);

  setTeaoliveReporter(new TeaoliveHtmlReporter.withParent(document.query("#result"))); // if you want to run from command-line. remove this line.
  teaoliveRun();
}
