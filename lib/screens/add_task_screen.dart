import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';


// make newTaskTitle acl;ass property otherwise it will be null value



class AddTaskScreen extends StatelessWidget {

  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {



    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30,),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;

            },
          ),
          TextButton(
            onPressed: (){

              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text('Add',
            style: TextStyle(
              color: Colors.white
            ),),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent),
            ),
          )
        ],
      ),
    );
  }
}
