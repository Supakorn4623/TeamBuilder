import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
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
  final GetStorage _storage = GetStorage();

  final RxList<Map<String, String>> team = <Map<String, String>>[].obs;
  final RxString teamName = 'My Pokemon Team'.obs;
  final RxString searchQuery = ''.obs;

  bool get isFull => team.length >= maxTeamSize;

  List<Map<String, String>> get filteredPokemons {
    if (searchQuery.value.isEmpty) {
      return allPokemons;
    }
    return allPokemons
        .where(
          (pokemon) => pokemon["name"]!.toLowerCase().contains(
            searchQuery.value.toLowerCase(),
          ),
        )
        .toList();
  }

  @override
  void onInit() {
    super.onInit();
    _loadTeamData();
  }

  void _loadTeamData() {
    // Load team name
    final savedTeamName = _storage.read('teamName');
    if (savedTeamName != null) {
      teamName.value = savedTeamName;
    }

    // Load team members
    final savedTeam = _storage.read('team');
    if (savedTeam != null && savedTeam is List) {
      team.assignAll(savedTeam.cast<Map<String, String>>());
    }
  }

  void _saveTeamData() {
    _storage.write('teamName', teamName.value);
    _storage.write('team', team.toList());
  }

  void updateTeamName(String newName) {
    if (newName.trim().isNotEmpty) {
      teamName.value = newName.trim();
      _saveTeamData();
    }
  }

  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }

  void addPokemon(Map<String, String> pkm) {
    if (isFull) {
      Get.snackbar(
        'เต็มแล้ว',
        'เลือกได้สูงสุด $maxTeamSize ตัว',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return;
    }
    if (team.any((m) => m["name"] == pkm["name"])) {
      Get.snackbar(
        'ซ้ำ',
        '${pkm["name"]} อยู่ในทีมแล้ว',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.amber,
        colorText: Colors.white,
      );
      return;
    }
    team.add(pkm);
    _saveTeamData();
    Get.snackbar(
      'เพิ่มแล้ว!',
      '${pkm["name"]} เข้าร่วมทีม',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );
  }

  void removePokemon(Map<String, String> pkm) {
    team.removeWhere((m) => m["name"] == pkm["name"]);
    _saveTeamData();
    Get.snackbar(
      'ลบแล้ว!',
      '${pkm["name"]} ออกจากทีม',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );
  }

  void resetTeam() {
    Get.defaultDialog(
      title: 'รีเซ็ตทีม',
      middleText: 'ต้องการรีเซ็ตทีมและชื่อทีมหรือไม่?',
      textCancel: 'ยกเลิก',
      textConfirm: 'รีเซ็ต',
      confirmTextColor: Colors.white,
      buttonColor: Colors.red,
      onConfirm: () {
        team.clear();
        teamName.value = 'My Pokemon Team';
        _saveTeamData();
        Get.back();
        Get.snackbar(
          'รีเซ็ตแล้ว!',
          'ทีมถูกรีเซ็ตเรียบร้อย',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.blue,
          colorText: Colors.white,
        );
      },
    );
  }
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
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => teamCtrl.resetTeam(),
            tooltip: 'รีเซ็ตทีม',
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'ค้นหาโปเกมอน...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: Obx(
                  () => teamCtrl.searchQuery.value.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            teamCtrl.updateSearchQuery('');
                          },
                        )
                      : const SizedBox.shrink(),
                ),
              ),
              onChanged: (value) => teamCtrl.updateSearchQuery(value),
            ),
          ),
          // Pokemon List
          Expanded(
            child: Obx(() {
              final filteredPokemons = teamCtrl.filteredPokemons;

              if (filteredPokemons.isEmpty) {
                return const Center(child: Text('ไม่พบโปเกมอนที่ค้นหา'));
              }

              return ListView.separated(
                itemCount: filteredPokemons.length,
                separatorBuilder: (_, __) => const Divider(height: 0),
                itemBuilder: (context, index) {
                  final pkm = filteredPokemons[index];
                  return Obx(() {
                    final selected = teamCtrl.team.any(
                      (m) => m["name"] == pkm["name"],
                    );
                    final disabled = teamCtrl.isFull && !selected;

                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        color: selected
                            ? Colors.green.withOpacity(0.1)
                            : disabled
                            ? Colors.grey.withOpacity(0.1)
                            : null,
                        border: selected
                            ? Border.all(color: Colors.green, width: 2)
                            : null,
                      ),
                      child: ListTile(
                        leading: Hero(
                          tag: 'pokemon-${pkm["name"]}',
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(pkm["image"]!),
                          ),
                        ),
                        title: Text(
                          pkm["name"]!,
                          style: TextStyle(
                            fontWeight: selected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: disabled ? Colors.grey : null,
                          ),
                        ),
                        trailing: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: ElevatedButton.icon(
                            key: ValueKey(selected),
                            icon: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 200),
                              child: Icon(
                                selected
                                    ? Icons.check_circle
                                    : Icons.add_circle,
                                key: ValueKey(selected),
                                color: selected ? Colors.white : null,
                              ),
                            ),
                            label: Text(selected ? 'เอาออก' : 'เพิ่ม'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selected
                                  ? Colors.red
                                  : disabled
                                  ? Colors.grey
                                  : Colors.blue,
                              foregroundColor: Colors.white,
                            ),
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
                        ),
                      ),
                    );
                  });
                },
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Obx(() {
            final hasAny = teamCtrl.team.isNotEmpty;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.visibility),
                label: const Text('ดูทีมโปเกมอน'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: hasAny ? Colors.green : Colors.grey,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: hasAny
                    ? () => Get.to(
                        () => const TeamPreviewPage(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 300),
                      )
                    : null,
              ),
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
      appBar: AppBar(
        title: const Text('Team Preview'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _showEditTeamNameDialog(teamCtrl),
            tooltip: 'แก้ไขชื่อทีม',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(() {
          final team = teamCtrl.team;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Team Name Section
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Icon(Icons.group, size: 32, color: Colors.blue),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              teamCtrl.teamName.value,
                              style: Theme.of(context).textTheme.headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${team.length}/3 โปเกมอน',
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => _showEditTeamNameDialog(teamCtrl),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Team Members
              Expanded(
                child: team.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.catching_pokemon,
                              size: 64,
                              color: Colors.grey[400],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'ยังไม่ได้เลือกโปเกมอน',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'กลับไปเลือกโปเกมอนสำหรับทีมของคุณ',
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: team.length,
                        itemBuilder: (context, index) {
                          final pkm = team[index];
                          return AnimatedContainer(
                            duration: Duration(
                              milliseconds: 300 + (index * 100),
                            ),
                            curve: Curves.easeOutBack,
                            child: Card(
                              elevation: 2,
                              margin: const EdgeInsets.only(bottom: 12),
                              child: ListTile(
                                contentPadding: const EdgeInsets.all(12),
                                leading: Hero(
                                  tag: 'pokemon-${pkm["name"]}',
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 4,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      backgroundImage: NetworkImage(
                                        pkm["image"]!,
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  pkm["name"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                subtitle: Text(
                                  'ตำแหน่งที่ ${index + 1}',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.remove_circle_outline),
                                  color: Colors.red,
                                  iconSize: 28,
                                  onPressed: () => teamCtrl.removePokemon(pkm),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.refresh),
                  label: const Text('รีเซ็ตทีม'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () => teamCtrl.resetTeam(),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('เลือกเพิ่ม'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () => Get.back(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEditTeamNameDialog(TeamController teamCtrl) {
    final controller = TextEditingController(text: teamCtrl.teamName.value);

    Get.defaultDialog(
      title: 'แก้ไขชื่อทีม',
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'ชื่อทีม',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
        ),
      ),
      textCancel: 'ยกเลิก',
      textConfirm: 'บันทึก',
      confirmTextColor: Colors.white,
      buttonColor: Colors.blue,
      onConfirm: () {
        teamCtrl.updateTeamName(controller.text);
        Get.back();
      },
    );
  }
}
