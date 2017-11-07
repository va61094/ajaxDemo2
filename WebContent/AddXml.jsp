<% int f=Integer.parseInt(request.getParameter("x"));
int s=Integer.parseInt(request.getParameter("y"));
String btnPress=request.getParameter("z");
if(f!=0 && s!=0){
	response.setContentType("text/xml");
	String sumXml="<?xml version='1.0' encoding='UTF-8'?>"+"<result>";
	if(btnPress.equals("ADD")){
	sumXml+=(f+s);
	}
	sumXml+="</result>";
	response.getWriter().write(sumXml);
}else{
	response.setStatus(HttpServletResponse.SC_NO_CONTENT);
}
%>