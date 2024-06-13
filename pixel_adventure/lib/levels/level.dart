import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:pixel_adventure/actors/player.dart';

class Level extends World {
  late TiledComponent level;
  final String levelName;
  final Player player;
  Level({required this.levelName, required this.player});
  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load("$levelName.tmx", Vector2(16, 16));
    add(level);
    final spawnPointsLayer = level.tileMap.getLayer<ObjectGroup>("Spawnpoints");
    for (final spawnPoint in spawnPointsLayer!.objects) {
      switch (spawnPoint.class_) {
        case 'Player':
          player.character = "Mask Dude";
          player.position = Vector2(spawnPoint.x, spawnPoint.y);
          add(player);
          break;
        default:
      }
    }
    // add(Player(character: "Ninja Frog"));
    return super.onLoad();
  }
}
