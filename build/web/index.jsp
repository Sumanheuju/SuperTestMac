<%-- 
    Document   : index
    Created on : Mar 10, 2017, 4:10:40 AM
    Author     : sumanheuju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            table{
                background:#ECD3D3;
                height: 200px;
                width: 150px;
                border: solid 1px;
                padding: 5px 5px 5px;
            }
            body{
                background:#DF8585;

            } 
            #display{
                background:#ECD3D3;
                min-height:200px;
                width: 400px;
                border: solid 1px;
                padding: 5px;
                margin: 10px 0px;
                
            }

        </style>

        <script src="Student.js" type="text/javascript"></script>
        <script src="StudentService.js" type="text/javascript"></script>
    </head>


    <body>
        <h1>
            Form Application !!
        </h1>
        <div>

            <form id="studentForm">
                <table border="1px" cellspacing="0">
                    <tr>
                        <th>ID:</th>
                        <th><input type="text" name="id"/></th>

                    </tr>
                    <tr>
                        <th>Name:</th>
                        <th><input type="text" name="name"/></th>

                    </tr>
                    <tr>
                        <th>Address:</th>
                        <th><input type="text" name="address"/></th>

                    </tr>
                    <tr>
                        <th>Email:</th>
                        <th><input type="text" name="email"/></th>

                    </tr>
                    <tr >                    
                        <th colspan="2">
                            <button type="button" value="btn-save" id="add">Save</button>
                            <button type="button" value="btn-show" id="show">Show</button>
                        </th>

                    </tr>
                </table>
            </form>
        </div>
        
        <div id="display">
            The Result Is Here !!
            
        </div>

        <script>
            stdService = new StudentService();
            
            add.addEventListener("click", function () {
                var id = studentForm.id.value;
                var name = studentForm.name.value;
                var address = studentForm.address.value;
                var email = studentForm.email.value;


                var std = new Student(id, name, address, email);

                
                stdService.addStudent(std);

            })
            
            
            show.addEventListener("click", function(){
                var studentOBJ = stdService.getAll();
                var content = "<ul type='none'>";
                
                for(var i=0;i<studentOBJ.length;i++){
                    content+= "<li> Id: " + studentOBJ[i].id + " "+
                    "  Name: " + studentOBJ[i].name + " "+
                    "  Address: " + studentOBJ[i].address + " "+
                    "  Email: " + studentOBJ[i].email + "</li>"
                }
                content+= "</ul>"
                display.innerHTML = content;
                
            })

        </script>
    </body>
</html>
