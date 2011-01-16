ID:<%=id%> <%if (r.getLocation().getId() == id) {%><font color=red><strong>R</strong></font><%}%><BR>
<%=Card.GetTypeName(b.getTile(id).getProduces())%> - 
<%=b.getTile(id).getDieNumber()%>