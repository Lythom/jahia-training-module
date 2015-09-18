<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="ui" uri="http://www.jahia.org/tags/uiComponentsLib" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="query" uri="http://www.jahia.org/tags/queryLib" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="s" uri="http://www.jahia.org/tags/search" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<p>
  
  <h3><a href="<c:url value="${url.base}${currentNode.path}.employee.html" />">${currentNode.properties['FullName'].string}</a></h3>
  <c:set var="photo" value="${currentNode.properties['Image']}"/>
  <c:if test="${not empty photo}">
    <c:url value="${photo.node.url}" var="imageURL" />
    <img src="${imageURL}" alt="" style="width:120px;height:auto;float:left;margin:10px;" />
  </c:if>
  
  <ul style="list-style:none;">
    <li><em><fmt:message key="clever_employee.jcr_title" /></em> ${currentNode.properties['jcr:title'].string}</li>
    <li><em><fmt:message key="clever_employee.UsualName" /></em> : ${currentNode.properties['UsualName'].string}</li>
    <li><em><fmt:message key="clever_employee.JobTitle" /></em> :  ${currentNode.properties['JobTitle'].string}</li>
</ul>
	<div style="clear:both;margin-bottom:10px;"></div>
</p>