import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

final List<Map<String, String>> allPokemons = [
  {
    "name": "Bulbasaur",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
  },
  {
    "name": "Ivysaur",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png",
  },
  {
    "name": "Venusaur",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png",
  },
  {
    "name": "Charmander",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
  },
  {
    "name": "Charmeleon",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png",
  },
  {
    "name": "Charizard",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png",
  },
  {
    "name": "Squirtle",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png",
  },
  {
    "name": "Wartortle",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png",
  },
  {
    "name": "Blastoise",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png",
  },
  {
    "name": "Caterpie",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png",
  },
  {
    "name": "Metapod",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png",
  },
  {
    "name": "Butterfree",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png",
  },
  {
    "name": "Weedle",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png",
  },
  {
    "name": "Kakuna",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png",
  },
  {
    "name": "Beedrill",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png",
  },
  {
    "name": "Pidgey",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png",
  },
  {
    "name": "Pidgeotto",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png",
  },
  {
    "name": "Pidgeot",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png",
  },
  {
    "name": "Rattata",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png",
  },
  {
    "name": "Raticate",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png",
  },
  {
    "name": "Spearow",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png",
  },
  {
    "name": "Fearow",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/22.png",
  },
  {
    "name": "Ekans",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/23.png",
  },
  {
    "name": "Arbok",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/24.png",
  },
  {
    "name": "Pikachu",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png",
  },
  {
    "name": "Raichu",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png",
  },
  {
    "name": "Sandshrew",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/27.png",
  },
  {
    "name": "Sandslash",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/28.png",
  },
  {
    "name": "Nidoran♀",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/29.png",
  },
  {
    "name": "Nidorina",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/30.png",
  },
  {
    "name": "Nidoqueen",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/31.png",
  },
  {
    "name": "Nidoran♂",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/32.png",
  },
  {
    "name": "Nidorino",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/33.png",
  },
  {
    "name": "Nidoking",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png",
  },
  {
    "name": "Clefairy",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png",
  },
  {
    "name": "Clefable",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/36.png",
  },
  {
    "name": "Vulpix",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/37.png",
  },
  {
    "name": "Ninetales",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/38.png",
  },
  {
    "name": "Jigglypuff",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png",
  },
  {
    "name": "Wigglytuff",
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png",
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pokemon Team Builder (GetX)',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
      home: const PokemonListPage(),
    );
  }
}

class TeamController extends GetxController {
  static const int maxTeamSize = 3;
  final RxList<Map<String, String>> team = <Map<String, String>>[].obs;

  bool get isFull => team.length >= maxTeamSize;

  void addPokemon(Map<String, String> pkm) {
    if (isFull) {
      Get.snackbar(
        'เต็มแล้ว',
        'เลือกได้สูงสุด $maxTeamSize ตัว',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    if (team.any((m) => m["name"] == pkm["name"])) {
      Get.snackbar(
        'ซ้ำ',
        '${pkm["name"]} อยู่ในทีมแล้ว',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    team.add(pkm);
  }

  void removePokemon(Map<String, String> pkm) {
    team.removeWhere((m) => m["name"] == pkm["name"]);
  }

  void clearTeam() => team.clear();
}

class PokemonListPage extends StatelessWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TeamController teamCtrl = Get.put(TeamController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('เลือกโปเกมอน (สูงสุด 3 ตัว)'),
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                child: Text('เลือกแล้ว: ${teamCtrl.team.length}/3'),
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: allPokemons.length,
        separatorBuilder: (_, __) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final pkm = allPokemons[index];
          return Obx(() {
            final selected = teamCtrl.team.any((m) => m["name"] == pkm["name"]);
            final disabled = teamCtrl.isFull && !selected;
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(pkm["image"]!),
              ),
              title: Text(pkm["name"]!),
              trailing: ElevatedButton.icon(
                icon: Icon(selected ? Icons.check : Icons.add),
                label: Text(selected ? 'เอาออก' : 'เพิ่ม'),
                onPressed: disabled
                    ? null
                    : () {
                        if (selected) {
                          teamCtrl.removePokemon(pkm);
                        } else {
                          teamCtrl.addPokemon(pkm);
                        }
                      },
              ),
            );
          });
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Obx(() {
            final hasAny = teamCtrl.team.isNotEmpty;
            return ElevatedButton.icon(
              icon: const Icon(Icons.visibility),
              label: const Text('ดูทีมโปเกมอน'),
              onPressed: hasAny
                  ? () => Get.to(() => const TeamPreviewPage())
                  : null,
            );
          }),
        ),
      ),
    );
  }
}

class TeamPreviewPage extends StatelessWidget {
  const TeamPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TeamController teamCtrl = Get.find<TeamController>();
    return Scaffold(
      appBar: AppBar(title: const Text('Team Preview')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(() {
          final team = teamCtrl.team;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ทีมโปเกมอน (${team.length}/3)',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              if (team.isEmpty) const Text('ยังไม่ได้เลือก'),
              ...team.map(
                (pkm) => Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(pkm["image"]!),
                    ),
                    title: Text(pkm["name"]!),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: () => teamCtrl.removePokemon(pkm),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
