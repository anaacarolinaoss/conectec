import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  String _username = '';
  String? _iconperfilUrl; // Permite null
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadProfileData(); // Carrega dados ao iniciar
  }

  Future<void> _loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('username') ?? '';
      _iconperfilUrl = prefs.getString('iconperfilUrl'); // Carrega a imagem, se existir
    });
  }

  Future<void> _selectImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _iconperfilUrl = image.path; // Atualiza a URL da imagem
      });
    }
  }

  Future<void> _saveProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', _username); // Salva apenas o nome
    if (_iconperfilUrl != null) {
      await prefs.setString('iconperfilUrl', _iconperfilUrl!); // Salva a URL da imagem
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Perfil",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 126, 28, 24),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Profile icon
            FutureBuilder(
              future: _iconperfilUrl == null?Future.value(null):XFile(_iconperfilUrl!).readAsBytes(),
              builder: (context, snapshot) {

                return CircleAvatar(
                  radius: 50,
                  backgroundImage: (snapshot.hasData && snapshot.data!=null)
                      ? MemoryImage(snapshot.data!) // Carrega a imagem local
                      : null, // Se não houver imagem, não exibe nada
                );
              }
            ),
            SizedBox(height: 20),
            // Username input field
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome: ',
                border: OutlineInputBorder(),
              ),
              initialValue: _username,
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
            ),
            SizedBox(height: 20),
            // Button to update profile icon
            IconButton(
              icon: Icon(Icons.add_circle, color: Colors.blue, size: 30),
              onPressed: _selectImage, // Chama o método para selecionar a imagem
            ),
            SizedBox(height: 20),
            // Button to save changes
            ElevatedButton(
              child: Text('Salvar alterações'),
              onPressed: () {
                _saveProfileData(); // Salva o nome e a imagem
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Perfil salvo com sucesso!')),
                );
                setState(() {}); // Atualiza a UI após salvar
              },
            ),
          ],
        ),
      ),
    );
  }
}
