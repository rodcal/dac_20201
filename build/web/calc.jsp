<%-- 
    Document   : calc
    Created on : 23/09/2020, 09:49:06
    Author     : RodrigoCavotre
--%>
        <% 
            try 
            {
                if(request.getParameter("num1") != null){
                 String num1_s = request.getParameter("num1");
                 out.println("Primeiro operador:" + num1_s+"<br></br>");
                 String num2_s = request.getParameter("num2");
                 out.println("Segundo operador:" + num2_s+"<br></br>");
                 String op = request.getParameter("op");
                 out.println("Operação:" + op+"<br></br>");
                 int num1 = Integer.parseInt(num1_s);
                 int num2 = Integer.parseInt(num2_s);
                 int resp = 0;
                 if (op.equals("+")){
                   resp = num1+num2;
                   out.println("Resultado:"+ String.valueOf(num1+num2));
                 }
                 if(op.equals("-")){
                   out.println("Resultado:"+ String.valueOf(num1-num2));
                 }
                 if(op.equals("*")){
                    out.println("Resultado:"+ String.valueOf(num1*num2));
                 }
                 if(op.equals("/")){
                    out.println("Resultado:"+ String.valueOf(num1/num2));
                 }
                Integer contador_visitas = (Integer)application.getAttribute("hitCounter");
                if( contador_visitas == null || contador_visitas == 0 ) {
                   contador_visitas = 1;
                } else {
                   contador_visitas += 1;
                }
                application.setAttribute("hitCounter", contador_visitas);
                out.println("<br></br>"+"Você já utilizou a calculadora:"+contador_visitas+" vezes");

                }
            }
            catch(Exception ex){}

        %>
