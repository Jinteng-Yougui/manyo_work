# README

There are four tables for this app.

First table is for "user", which is the name of this model. It has each task's 'title: string', 'content: text', 'deadline: date', 'priority: string', 'status: string' and 'label: string.

          user
--------------------------
    column  |   data type
--------------------------
     title  |   string
--------------------------
   content  |    text
--------------------------
  deadline  |    date
--------------------------
  priority  |   string
--------------------------
    status  |   string
--------------------------
    label   |   string
    
Second table is for tasks' "search", which is the name of this model. It has each task's 'title: string', 'deadline: date' and 'priority: string'.

         search
--------------------------
     title  |   string
--------------------------
  deadline  |    date
--------------------------
  priority  |   string

Third table is for tasks' "sort", which is the name of this model. It has each task's 'deadline: date' and 'priority: string'.

          sort
--------------------------
  deadline  |    date
--------------------------
  priority  |   string

Forth table is for tasks' "label", which is the name of this model. It has each task's 'title: string' and 'genre: string".

          label
--------------------------
     title  |   string
--------------------------
     genre  |   string