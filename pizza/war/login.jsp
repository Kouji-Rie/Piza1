<%-- 
    Document   : loginbs
    Created on : 2013/12/13, 19:35:08
    Author     : g12921kr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <script type="text/javascript" src="lib.js"></script>
        <script type="text/javascript">
        <!--
        function callback(request){
            var json = eval(request.responseText);
            var res = '';
            if (json.length == 1){
                res += '<tr><td>' + json[0].id +'</td></tr>';
                res += '<tr><td>' + json[0].name +'</td></tr>';
                res += '<tr><td>' + json[0].age +'</td></tr>';
                res += '<tr><td>' + json[0].pass +'</td></tr>';
            } else {
                for (var i = 0;i < json.length;i++){
                    res += '<tr><td><a href="javascript:return false;" onclick="getData(' + json[i].id +');">' + json[i].id + '</a></td>';
                    res += '<td><a href="' + json[i].age + '">' + json[i].name + '</a></td>';
                }
            }
            var obj = document.getElementById("datatable");
            obj.innerHTML = res;
        }
        //-->
        </script>
    </head>
    <body onload="getData(null);">
        <h1>如月書店へようこそ！</h1>
        <table id="datatable" border="1">
      <tr>
        <td>wait...</td>
      </tr>
    </table>
        <form action="login.do" method="post" class="login">
            <table>
                <tr>
                    <td>ユーザ名</td>
                    <td><input type="text" name="user" size="16" value="" /></td>
                </tr>
                <tr>
                    <td>パスワード</td>
                    <td><input type="password" name="password" size="16" value="" /></td>
                </tr>
            </table>
            
            <input type="submit" value="ログイン" />
        </form>
        <br>
    <div><a href="add.html">規観登録</a></div><br>
    <br>
    <div><a href="addm.html">メニュー登録</a></div>
    </body>
</html>