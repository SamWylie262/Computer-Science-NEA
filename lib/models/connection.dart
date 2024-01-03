import 'package:flutter_neon/flutter_neon.dart';
import 'package:postgres/postgres.dart';

final neonClient = FlutterNeon(
    connectionUrl:
        "postgresql://SamWylie262:IfQ9EWP7Yqlu@ep-cold-bird-78274763.eu-central-1.aws.neon.tech/potentialdb",
    pooling: true);
