import 'dart:io';

import 'package:workforce/resources/resources.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.chart).existsSync(), true);
    expect(File(Images.breifcase).existsSync(), true);
    expect(File(Images.cartoonBoy).existsSync(), true);
    expect(File(Images.divider).existsSync(), true);
    expect(File(Images.dividerflip).existsSync(), true);
    expect(File(Images.femaleprofile).existsSync(), true);
    expect(File(Images.forgotpassword).existsSync(), true);
    expect(File(Images.humanCharacters).existsSync(), true);
    expect(File(Images.profile).existsSync(), true);
    expect(File(Images.splash).existsSync(), true);
  });
}
