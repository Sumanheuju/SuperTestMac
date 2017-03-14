/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function StudentService(){
    
    studentList = new Array();
    
    this.addStudent = function(Student){
        studentList.push(Student);
    }
    
    this.getAll = function(){
        return studentList;
    }
}

