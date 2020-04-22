<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
[
	<c:forEach items="${gList }" var="dto" varStatus="status">
		{
			"guide_id": "${dto.guide_id}",
			"name": "${dto.name }",
			"gender": "${dto.gender }", 
			"age": "${dto.age }", 
			"picture": "${dto.picture }", 
			"regdate": "${dto.regdate }", 
			"isDelete": "${dto.isDelete }", 
			"description": "${dto.description }", 
			"state": "${dto.state }", 
			"guideschedule_seq": "${dto.guideschedule_seq }", 
			"totalPrice": "${dto.totalPrice }", 
			"totalGrade": "${dto.totalGrade }",
			"priceComma": "${dto.priceComma }"

		}
		<c:if test="${status.index != gList.size()-1 }">,</c:if>
	</c:forEach>
]