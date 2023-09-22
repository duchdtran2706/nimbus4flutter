import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:nimbus_generator/src/nimbus_generator.dart';

Builder nimbusSupporter(BuilderOptions options) =>
    SharedPartBuilder([NimbusSupporterGenerator()], 'nimbus_annotation');
