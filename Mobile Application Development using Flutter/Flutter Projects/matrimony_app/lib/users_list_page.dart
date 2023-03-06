//region Imports Statements
import 'package:flutter/material.dart';
import 'package:matrimony_app/Model/user_model.dart';
import 'package:matrimony_app/database.dart';
import 'package:matrimony_app/new_user_page.dart';
import 'package:matrimony_app/user_detail_page.dart';
//endregion

class UsersListPage extends StatefulWidget {
  const UsersListPage({Key? key}) : super(key: key);

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  //region Variable Declaration
  MatrimonyDatabase db = MatrimonyDatabase();
  List<NewUserModel> localList = [];
  List<NewUserModel> searchList = [];
  bool isGetData = true;
  var _searchController = TextEditingController();
  //endregion

  @override
  void initState() {
    super.initState();
    MatrimonyDatabase().copyPasteAssetFileToRoot().then((value){
      MatrimonyDatabase().getDataFromUserTable();
    });
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0x42424040),

        //region App Bar
        appBar: AppBar(
          backgroundColor: Color(0x42424040),
          title: const Text("Profiles"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return NewUser(
                        model: null,
                      );
                    },
                  ),
                ).then((value) {
                  localList.clear();
                  searchList.clear();
                  isGetData = true;
                  setState(() {});
                },
                );
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        //endregion

        body: FutureBuilder<List<NewUserModel>>(
          builder: (context, snapshot) {
            if (snapshot != null &&
                snapshot.hasData &&
                snapshot.connectionState != ConnectionState.waiting) {
              if (isGetData) {
                localList.addAll(snapshot.data!);
                searchList.addAll(localList);
              }
              isGetData = false;
              return Column(
                children: [
                  //region Search Bar
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
                    decoration: BoxDecoration(
                      color: Color(0x92434242),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      controller: _searchController,
                      onChanged: (value) {
                        searchList.clear();
                        for (int i = 0; i < localList.length; i++) {
                          if (localList[i]
                              .Username
                              .toLowerCase()
                              .contains(value.toLowerCase())) {
                            searchList.add(localList[i]);
                          }
                        }
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon:  _searchController.text.length > 0
                              ? IconButton(
                            onPressed: () {
                              _searchController.clear();
                              isGetData = true;
                              setState(() {});
                            },
                            icon: Icon(Icons.cancel, color: Colors.grey),) : null,
                          hintText: "Search here...",
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none),
                    ),
                  ),
                  //endregion

                  //region User List
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(0),
                          leading: const CircleAvatar(
                            backgroundImage:
                            AssetImage("assets/images/nobita.jfif"),
                          ),
                          title: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return UserDetailsPage(
                                        detailsMap: snapshot.data![index]);
                                  },
                                ),
                              ).then((value){
                                localList.clear();
                                searchList.clear();
                                isGetData = true;
                                setState(() {});
                              });
                            },
                            child: Text(
                              searchList[index].Username.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              deleteAlertDialogBox(index);
                            },
                            icon: Icon(Icons.delete_rounded),
                            color: Colors.red,
                          ),
                          horizontalTitleGap: 20,
                        );
                      },

                      itemCount: searchList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          height: 20,
                          thickness: 1,
                          color: Colors.white60,
                        );
                      },
                    ),
                  ),
                  //endregion

                ],
              );
            } else {
              //region Loader
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
              //endregion
            }
          },
          future: isGetData ? db.getDataFromUserTable() : null,
        ),
        // body: Text(
        //   "asdf",
        //   style: TextStyle(color: Colors.white),
        // ),
      ),
    );
  }

  // region Delete Alert Box
  Future<void> deleteAlertDialogBox(index) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: const [
              Icon(
                Icons.delete_rounded,
                color: Colors.red,
              ),
              Text(
                'Alert',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: const Text("Are you sure want to delete."),
          actions: [
            //region Confirm Delete
            TextButton(
              child: const Text(
                'Yes',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () async {
                await db.deleteDataFromUserTable(localList[index].UserID).then(
                      (value) {
                    localList.clear();
                    searchList.clear();
                    isGetData = true;
                    setState(() {});
                  },
                );

                Navigator.of(context).pop();
              },
            ),
            //endregion

            //region Not Delete
            TextButton(
              child: const Text(
                'No',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            //endregion
          ],
        );
      },
    );
  }
//endregion
}
