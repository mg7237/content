import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

const chats = <Map<String, dynamic>>[
  {
    "id": 1,
    "chat_text": "Lorem Ipsum ......",
    "delivery_time": "20220307T000000Z",
    "file_urls": <String>[
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113911-file-sample_150kB.pdf',
      'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652700113916-VID_20220516_122230.mp4',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113951-IMG_20220514_170109.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113960-IMG_20220514_170111.jpg',
      'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652699655459-VID20220514184500.mp4',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-VID20220514184500.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-VID20220514184500.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-image_picker6231198671007075076.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-image_picker6231198671007075076.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663050-image_picker5153282504207180416.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663050-image_picker5153282504207180416.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663054-image_picker6559371987049939186.jpg',
    ]
  },
  {
    "id": 2,
    "chat_text":
        "Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ......Final",
    "delivery_time": "20220425T000000Z",
    "file_urls": <String>[
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113911-file-sample_150kB.pdf',
      'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652700113916-VID_20220516_122230.mp4',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113951-IMG_20220514_170109.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113960-IMG_20220514_170111.jpg',
      'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652699655459-VID20220514184500.mp4',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-VID20220514184500.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-VID20220514184500.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-image_picker6231198671007075076.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-image_picker6231198671007075076.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663050-image_picker5153282504207180416.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663050-image_picker5153282504207180416.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663054-image_picker6559371987049939186.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663054-image_picker6559371987049939186.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663058-image_picker2424742189488819012.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663058-image_picker2424742189488819012.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663063-image_picker6746460636483479079.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663063-image_picker6746460636483479079.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663069-image_picker6508999539441233522.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663069-image_picker6508999539441233522.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663074-image_picker7030636262939770389.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663074-image_picker7030636262939770389.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663080-image_picker7436962115213816368.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663080-image_picker7436962115213816368.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663113-image_picker2748330431000676345.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663113-image_picker2748330431000676345.jpg',
      'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652699593075-VID20220514184500.mp4',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699597349-VID20220514184500.jpg',
    ]
  },
  {
    "id": 3,
    "chat_text":
        "Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ......Final",
    "delivery_time": "20220425T000000Z",
    "file_urls": <String>[
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663058-image_picker2424742189488819012.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663063-image_picker6746460636483479079.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663063-image_picker6746460636483479079.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663069-image_picker6508999539441233522.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663069-image_picker6508999539441233522.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663074-image_picker7030636262939770389.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663074-image_picker7030636262939770389.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663080-image_picker7436962115213816368.jpg',
      'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699597349-VID20220514184500.jpg',
    ]
  },
  {
    "id": 4,
    "chat_text":
        "Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ...... Lorem Ipsum ......  Early Final",
    "delivery_time": "20220425T000000Z",
    "file_urls": <String>[]
  },
];

class SelectFiles extends StatefulWidget {
  const SelectFiles({Key? key}) : super(key: key);
  @override
  State<SelectFiles> createState() => _SelectFilesState();
}

class _SelectFilesState extends State<SelectFiles> {
  List<File> networkFiles = [];
  List<File> selectedFiles = [];
  List<Container> listFileIcons = [];
  List<Container> listSelectedFileIcons = [];
  List<String> networkFilePaths = [
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113911-file-sample_150kB.pdf',
    'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652700113916-VID_20220516_122230.mp4',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113951-IMG_20220514_170109.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652700113960-IMG_20220514_170111.jpg',
    'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652699655459-VID20220514184500.mp4',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-VID20220514184500.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-VID20220514184500.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-image_picker6231198671007075076.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663044-image_picker6231198671007075076.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663050-image_picker5153282504207180416.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663050-image_picker5153282504207180416.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663054-image_picker6559371987049939186.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663054-image_picker6559371987049939186.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663058-image_picker2424742189488819012.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663058-image_picker2424742189488819012.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663063-image_picker6746460636483479079.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663063-image_picker6746460636483479079.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663069-image_picker6508999539441233522.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663069-image_picker6508999539441233522.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663074-image_picker7030636262939770389.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663074-image_picker7030636262939770389.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663080-image_picker7436962115213816368.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663080-image_picker7436962115213816368.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663113-image_picker2748330431000676345.jpg',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699663113-image_picker2748330431000676345.jpg',
    'https://sgp1.digitaloceanspaces.com/staging-saarthi/uploads/1652699593075-VID20220514184500.mp4',
    'https://staging-saarthi.sgp1.digitaloceanspaces.com/uploads/1652699597349-VID20220514184500.jpg',
  ];

  @override
  void initState() {
    super.initState();
    for (String fileName in networkFilePaths) {
      networkFiles.add(File(fileName));
      Container container = Container(
          alignment: Alignment.center,
          height: 80,
          width: 80,
          margin: const EdgeInsets.all(5),
          child: (fileName.substring(fileName.length - 3) != 'jpg' &&
                  fileName.substring(fileName.length - 3) != 'png')
              ? Image.asset(
                  'assets/' + fileName.substring(fileName.length - 3) + '.png')
              : Image.network(fileName));

      listFileIcons.add(container);
    }
  }

  Future<void> handleFilesUpload() async {
    var result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        dialogTitle: 'Choose Files',
        allowedExtensions: ['jpg', 'pdf', 'mp4', 'png']);

    if (result != null) {
      selectedFiles += result.paths.map((path) => File(path ?? '')).toList();
      // await postFiles(filePathList);
      setState(() {});
    }
  }

  updateSelectedFiles() {
    for (File file in selectedFiles) {
      Container container = Container(
          alignment: Alignment.center,
          height: 80,
          width: 80,
          margin: const EdgeInsets.all(5),
          child: (file.path.substring(file.path.length - 3) != 'jpg' &&
                  file.path.substring(file.path.length - 3) != 'png')
              ? Image.asset('assets/' +
                  file.path.substring(file.path.length - 3) +
                  '.png')
              : Image.network(file.path));

      listSelectedFileIcons.add(container);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    updateSelectedFiles();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => handleFilesUpload(),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'All network files',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: networkFilePaths.length,
                  shrinkWrap: true,
                  itemBuilder: (context, item) {
                    return (Column(children: [
                      listFileIcons[item],
                      const SizedBox(height: 5),
                      Text(
                        networkFilePaths[item].split('/').last.substring(0, 10),
                        style: const TextStyle(fontSize: 10),
                      )
                    ]));
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text('All selected files',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 400,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    //  scrollDirection: Axis.vertical,
                    //  crossAxisCount: 4,
                    itemCount: selectedFiles.length,
                    // shrinkWrap: true,

                    itemBuilder: (_, item) {
                      return Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(5),
                          child: (selectedFiles[item]
                                          .path
                                          .toLowerCase()
                                          .substring(
                                              selectedFiles[item].path.length -
                                                  3) !=
                                      'jpg' &&
                                  selectedFiles[item].path.substring(
                                          selectedFiles[item]
                                                  .path
                                                  .toLowerCase()
                                                  .length -
                                              3) !=
                                      'png')
                              ? Image.asset('assets/' +
                                  selectedFiles[item].path.substring(
                                      selectedFiles[item].path.length - 3) +
                                  '.png')
                              : Image.file(selectedFiles[item]));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatUI extends StatefulWidget {
  const ChatUI({Key? key}) : super(key: key);

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  List<Map<String, dynamic>> chatData = chats;
  List<File> files = [];
  TextEditingController chatTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SelectFiles()));
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.grey[600],
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: chatData.length,
                itemBuilder: (context, item) {
                  return Column(
                    children: [
                      (Container(
                          height: 200,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Text(
                                    chatData[item]['chat_text'] ?? '',
                                    maxLines: 4,
                                    softWrap: true,
                                    overflow: TextOverflow
                                        .fade, // when user presses enter it will adapt to it
                                  ),
                                ),
                                if ((chatData[item]['file_urls'] ?? []) != [])
                                  (chatData[item]['file_urls'] is List &&
                                          chatData[item]['file_urls'].length !=
                                              0)
                                      ? Flexible(
                                          fit: FlexFit.tight,
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: chatData[item]
                                                      ['file_urls']
                                                  .length,
                                              itemBuilder: (context, urlItem) {
                                                String url = chatData[item]
                                                            ['file_urls']
                                                        [urlItem] ??
                                                    '';
                                                return Container(
                                                    alignment: Alignment.center,
                                                    height: 80,
                                                    width: 80,
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    child: (url != '')
                                                        ? (url.substring(
                                                                    url.length -
                                                                        3) !=
                                                                'jpg')
                                                            ? Image.asset('assets/' +
                                                                url
                                                                    .toLowerCase()
                                                                    .substring(
                                                                        url.length -
                                                                            3) +
                                                                '.png')
                                                            : Image.network(url)
                                                        : const SizedBox());
                                              }),
                                        )
                                      : const SizedBox(),
                                (chatData[item]['delivery_time'] is String &&
                                        (chatData[item]['delivery_time'] ??
                                                '') !=
                                            '')
                                    ? Text(DateTime.parse(
                                            chatData[item]['delivery_time'])
                                        .toLocal()
                                        .toString())
                                    : const Text(''),
                              ]))),
                    ],
                  );
                },
              )),
        ),
      ),
    );
  }
}
