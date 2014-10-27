<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <html>
      <head>
         <script type="text/javascript" language="JavaScript">
            function loadOnValues(){
                var conditionalVariable = '<c:out value="${yourForm.conditionalVariable}"/>';
                if(conditionalVariable == null || conditionalVariable == '2'){
                    document.getElementById("boxId").checked = false;
                } else {                                        
                     document.getElementById("boxId").checked = true;       
                }   
            }     
        </script>
     </head>
        <title>Jsp Title</title>    
        <body onload="javascript:loadOnValues();">   
        <form:form id="yourForm" modelAttribute="yourForm" method="post">
            <tr>
                <td>
                    <form:checkbox id="boxId" path="checkBoxName"> CheckBox Text
                </td>
            </tr>
        </form:form>
      </body>
    </html> --%>