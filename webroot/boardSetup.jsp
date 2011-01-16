<%@ page import="com.emreb.catan.model.*" %>
<%@ page import="com.emreb.catan.model.buildings.*" %>
<%@ page import="com.emreb.catan.transactions.*" %>

<%  if (request.getParameter("Save") != null &&
        request.getParameter("Save").equals("Save")) {
        Board board = Board.getInstance();
        for (int i=0; i < 19; i++) {
            String type = request.getParameter(i + "_TYPE");
            String dice = request.getParameter(i + "_DICE");
            board.createTile(i,new Integer(type),new Integer(dice));
            if (type.equals("6")) {
                board.addRobber(board.getTile(i)); 
            }
        
        }
       %>Saved<% 
    }
%>
<FORM METHOD=POST> 
<TABLE BORDER="1">
<TR><TD></TD><TD></TD><TD>
ID:0 <INPUT TYPE=TEXT NAME=0_DICE VALUE=0 SIZE=1><BR>
<select NAME=0_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD></TD></TR>
<TR><TD></TD><TD>
ID:1 <INPUT TYPE=TEXT NAME=1_DICE VALUE=0 SIZE=1><BR>
<select NAME=1_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:2 <INPUT TYPE=TEXT NAME=2_DICE VALUE=0 SIZE=1><BR>
<select NAME=2_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD></TR>
<TR><TD>
ID:3 <INPUT TYPE=TEXT NAME=3_DICE VALUE=0 SIZE=1><BR>
<select NAME=3_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:4 <INPUT TYPE=TEXT NAME=4_DICE VALUE=0 SIZE=1><BR>
<select NAME=4_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:5 <INPUT TYPE=TEXT NAME=5_DICE VALUE=0 SIZE=1><BR>
<select NAME=5_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD></TR>
<TR><TD></TD><TD>
ID:6 <INPUT TYPE=TEXT NAME=6_DICE VALUE=0 SIZE=1><BR>
<select NAME=6_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:7 <INPUT TYPE=TEXT NAME=7_DICE VALUE=0 SIZE=1><BR>
<select NAME=7_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD></TR>
<TR><TD>
ID:8 <INPUT TYPE=TEXT NAME=8_DICE VALUE=0 SIZE=1><BR>
<select NAME=8_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:9 <INPUT TYPE=TEXT NAME=9_DICE VALUE=0 SIZE=1><BR>
<select NAME=9_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:10 <INPUT TYPE=TEXT NAME=10_DICE VALUE=0 SIZE=1><BR>
<select NAME=10_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD></TR>
<TR><TD></TD><TD>
ID:11 <INPUT TYPE=TEXT NAME=11_DICE VALUE=0 SIZE=1><BR>
<select NAME=11_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:12 <INPUT TYPE=TEXT NAME=12_DICE VALUE=0 SIZE=1><BR>
<select NAME=12_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD></TR>
<TR><TD>
ID:13 <INPUT TYPE=TEXT NAME=13_DICE VALUE=0 SIZE=1><BR>
<select NAME=13_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:14 <INPUT TYPE=TEXT NAME=14_DICE VALUE=0 SIZE=1><BR>
<select NAME=14_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:15 <INPUT TYPE=TEXT NAME=15_DICE VALUE=0 SIZE=1><BR>
<select NAME=15_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD></TR>
<TR><TD></TD><TD>
ID:16 <INPUT TYPE=TEXT NAME=16_DICE VALUE=0 SIZE=1><BR>
<select NAME=16_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD>
ID:17 <INPUT TYPE=TEXT NAME=17_DICE VALUE=0 SIZE=1><BR>
<select NAME=17_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD></TR>
<TR><TD></TD><TD></TD><TD>
ID:18 <INPUT TYPE=TEXT NAME=18_DICE VALUE=0 SIZE=1><BR>
<select NAME=18_TYPE>
<% for (int i=1; i <= 6; i++) {%>
  <option value="<%=i%>"><%=(new Card(i)).getTypeName()%></option>
  <%}%>
</select>
</TD><TD></TD><TD></TD></TR>
</TABLE>
<INPUT TYPE=SUBMIT NAME=Save VALUE=Save>
</FORM>