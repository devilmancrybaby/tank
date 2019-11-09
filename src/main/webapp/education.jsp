<%--
  Created by IntelliJ IDEA.
  User: huangmingyang
  Date: 2019-11-04
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>education</title>
    <link type="text/css" rel="stylesheet" href="css/education.css">
    <script src="js/education.js" ></script>
</head>
<body>
<form action="education" method="post" onsubmit="return blankCheck()">
    <div class="di">
        <div id="close"></div>
        <div class="t0">教育经验</div>
        <div class="t1">学校名称</div>
        <div class="d1"><input name="school" class="i1" onblur="showText()"><br/></div>
        <div id="p2"><p id="p1">请输入有效学校名称</p></div>
        <div class="t2">在校时间</div>
        <div class="d2"><input type="date" placeholder="请选择入学年份" class="i2" name="enrollment_year">

            <input type="date" placeholder="请选择毕业年份" class="i2" name="graduate_year">
        </div>
        <br/>
        <div class="t3">学历</div>

        <div class="d3"><div class="select"><select id="select" >
            <option value="10">博士</option>
            <option value="9">研究生</option>
            <option value="1">本科</option>
            <option value="2">大专</option>
        </select>
        </div>

        </div>
        <br/>
        <div class="t4">专业名称</div>

        <div class="d4"><input class="i1" name="major"></div>
        <br/>
        <div class="d5"> <button id="color" type="submit" value="保存">保存</button></div>


    </div>
</form>
</body>
</html>
