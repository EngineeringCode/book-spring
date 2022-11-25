<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:forEach var="item" items="${list}">
{"${item.my_data_srl}", "${item.my_data_value}", "${item.registration_date}"}<br/>
</c:forEach>