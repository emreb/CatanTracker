<%@ page import="com.emreb.catan.model.*" %>
<%@ page import="com.emreb.catan.model.buildings.*" %>
<%@ page import="com.emreb.catan.transactions.*" %>

<script type="text/javascript">
function changeText(t1,t2,t3){
    if (t1 == undefined) t1 = '';
    if (t2 == undefined) t2 = '';
    if (t3 == undefined) t3 = '';
    document.getElementById('TILE1').value = t1;
    document.getElementById('TILE2').value = t2;
    document.getElementById('TILE3').value = t3;
}
</script>
<% Board b = Board.getInstance();
   Robber r = b.getRobber(); 
    if (request.getParameter("Settlement") != null &&
        request.getParameter("Settlement").equals("InitPlaceIt")) {
        
        Player p = b.getPlayer(new Integer(request.getParameter("Player")));    
        Tile[] tiles = new Tile[3];
        for (int i=1; i<=3;i++) {
            try{
            tiles[i-1] = b.getTile(new Integer(request.getParameter("TILE"+i)));
            } catch (Exception e) {}
        }
        p.placeSettlement(tiles);
        
    }
    
    if (request.getParameter("buyBuilding") != null &&
        request.getParameter("buyBuilding").equals("PlaceIt")) {
        
        Player p = b.getPlayer(new Integer(request.getParameter("Player")));    
        Tile[] tiles = new Tile[3];
        for (int i=1; i<=3;i++) {
            try{
            tiles[i-1] = b.getTile(new Integer(request.getParameter("TILE"+i)));
            } catch (Exception e) {}
        }
        if (request.getParameter("buyType") != null) {
            if (request.getParameter("buyType").equals("Settlement")) {
                p.buySettlement(tiles);
            }
            if (request.getParameter("buyType").equals("City")) {
                Settlement s = p.getSettlement(tiles);
                p.upgradeToCity(s);            
            }
        
        
        }
        
    }
    
    if (request.getParameter("Dice") != null &&
        request.getParameter("Dice").equals("Roll")) {
        Dice.roll(new Integer(request.getParameter("Roll")));   
    }

    if (request.getParameter("Buy") != null) {
        if (request.getParameter("Buy").equals("Road")) {
            Player p = b.getPlayer(new Integer(request.getParameter("Player")));
            p.buyRoad();
        }
        if (request.getParameter("Buy").equals("DevelopmentCard")) {
            Player p = b.getPlayer(new Integer(request.getParameter("Player")));
            p.buyDevelopmentCard();
        }   
    }
    
    int id =0;
%>
<FORM METHOD=GET> 
<TABLE BORDER="1">
<TR><TD></TD><TD></TD><TD></TD><TD>
<CENTER><input type="radio" name="corner" onClick="changeText(0);"></CENTER>
</TD><TD></TD><TD></TD><TD></TD></TR>
<TR><TD></TD><TD><CENTER><input type="radio" name="corner" onClick="changeText(1);"></CENTER></TD>
<TD><CENTER><input type="radio" name="corner" onClick="changeText(0,1);" ></CENTER></TD><TD>
<%id=0;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER><input type="radio" name="corner" onClick="changeText(0,2);"></CENTER></TD>
<TD><CENTER><input type="radio" name="corner" onClick="changeText(2);"></CENTER></TD><TD></TD></TR>
<TR><TD></TD>
<TD><CENTER><input type="radio" name="corner" onClick="changeText(1,3);" ></CENTER></TD><TD>
<%id=1;%>
<%@ include file = "tile.inc"%>
</TD><TD>
<CENTER>
<input type="radio" name="corner" onClick="changeText(0,1,4);">
<input type="radio" name="corner" onClick="changeText(0,2,4);">
</CENTER>
</TD><TD>
<%id=2;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER><input type="radio" name="corner" onClick="changeText(2,5);" ></CENTER></TD>
<TD></TD></TR>
<TR><TD><CENTER><input type="radio" name="corner" onClick="changeText(3);" ></CENTER></TD><TD>
<%id=3;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(1,3,6);">
<input type="radio" name="corner" onClick="changeText(1,4,6);">
</CENTER></TD><TD>
<%id=4;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(2,4,7);">
<input type="radio" name="corner" onClick="changeText(2,5,7);">
</CENTER></TD><TD>
<%id=5;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER><input type="radio" name="corner" onClick="changeText(5);" ></CENTER></TD></TR>
<TR><TD></TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(3,8,6);">
</CENTER></TD><TD>
<%id=6;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(4,6,9);">
<input type="radio" name="corner" onClick="changeText(4,7,9);">
</CENTER></TD><TD>
<%id=7;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(5,7,10);">
</CENTER></TD><TD></TD></TR>
<TR><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(8);">
</CENTER></TD><TD>
<%id=8;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(6,8,11);">
<input type="radio" name="corner" onClick="changeText(6,9,11);">
</CENTER></TD><TD>
<%id=9;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(7,9,12);">
<input type="radio" name="corner" onClick="changeText(7,10,12);">
</CENTER></TD><TD>
<%id=10;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(10);">
</CENTER></TD></TR>
<TR><TD></TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(8,11,13);">
</CENTER></TD><TD>
<%id=11;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(9,11,14);">
<input type="radio" name="corner" onClick="changeText(9,12,14);">
</CENTER></TD><TD>
<%id=12;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(10,12,15);">
</CENTER></TD><TD></TD></TR>
<TR><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(13);">
</CENTER></TD><TD>
<%id=13;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(11,13,16);">
<input type="radio" name="corner" onClick="changeText(11,14,16);">
</CENTER></TD><TD>
<%id=14;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(12,14,17);">
<input type="radio" name="corner" onClick="changeText(12,15,17);">
</CENTER></TD><TD>
<%id=15;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(15);">
</CENTER></TD></TR>
<TR><TD></TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(13,16);">
</CENTER>
</TD><TD>
<%id=16;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(14,16,18);">
<input type="radio" name="corner" onClick="changeText(14,17,18);">
</CENTER></TD><TD>
<%id=17;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(17,15);">
</CENTER></TD><TD></TD></TR>
<TR><TD></TD><TD>
<CENTER>
<input type="radio" name="corner" onClick="changeText(16);">
</CENTER></TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(16,18);">
</CENTER></TD><TD>
<%id=18;%>
<%@ include file = "tile.inc"%>
</TD><TD><CENTER>
<input type="radio" name="corner" onClick="changeText(17,18);">
</CENTER></TD><TD>
<CENTER>
<input type="radio" name="corner" onClick="changeText(17);">
</CENTER></TD><TD></TD></TR>
<TR><TD></TD><TD></TD><TD></TD><TD>
<CENTER><input type="radio" name="corner" onClick="changeText(18);"></CENTER>
</TD><TD></TD><TD></TD><TD></TD></TR>
</TABLE>
<INPUT TYPE=SUBMIT NAME=Save VALUE=Save>
</FORM>
<HR>
<FORM>
Roll: 
<input type="radio" name="Roll" value="2">2,
<input type="radio" name="Roll" value="3">3,
<input type="radio" name="Roll" value="4">4,
<input type="radio" name="Roll" value="5">5,
<input type="radio" name="Roll" value="6">6,
<input type="radio" name="Roll" value="8">8,
<input type="radio" name="Roll" value="9">9,
<input type="radio" name="Roll" value="10">10,
<input type="radio" name="Roll" value="11">11,
<input type="radio" name="Roll" value="12">12

<INPUT TYPE=SUBMIT NAME=Dice Value=Roll>
</FORM>
<HR>

<FORM>
<input type="radio" name="Player" value="0">P0,
<input type="radio" name="Player" value="1">P1,
<input type="radio" name="Player" value="2">P2,
<input type="radio" name="Player" value="3">P3 
buys 
<input type="radio" name="buyType" value="Settlement">Settlement
<input type="radio" name="buyType" value="City">City 

<INPUT TYPE=TEXT NAME=TILE1 ID=TILE1 SIZE=2 READONLY>
<INPUT TYPE=TEXT NAME=TILE2 ID=TILE2 SIZE=2 READONLY>
<INPUT TYPE=TEXT NAME=TILE3 ID=TILE3 SIZE=2 READONLY>
<INPUT TYPE=SUBMIT NAME=Settlement VALUE=InitPlaceIt>
<INPUT TYPE=SUBMIT NAME=buyBuilding VALUE=PlaceIt>

</FORM>

<HR>
<FORM>
<input type="radio" name="Player" value="0">P0,
<input type="radio" name="Player" value="1">P1,
<input type="radio" name="Player" value="2">P2,
<input type="radio" name="Player" value="3">P3  buys
<INPUT TYPE=SUBMIT NAME=Buy VALUE=Road>
<INPUT TYPE=SUBMIT NAME=Buy VALUE=DevelopmentCard>
</FORM>
<HR>
<%  for (int pi=0; pi<4; pi++) {
	    Player p = b.getPlayer(pi);
	    CardCollection cards = p.getCards();
	    for (int i : cards.getCardTypes()) {
	      Card c = new Card(i);
	      %>
	      <%=p.getName()%>, <%=c.getTypeName()%>:<%=cards.getCount(c)%><BR>
	      <%
	    }
	%>---<BR><%
	}
 %>