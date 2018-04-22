package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class plantilla_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Biblioteca</title>\n");
      out.write("\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/tooplate-style.css\">\n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js\"></script>\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Marck+Script\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        \n");
      out.write("        /*boton salir*/\n");
      out.write("        .btn_salir:focus{\n");
      out.write("            outline: 0px;\n");
      out.write("            box-shadow: 0px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        h5{\n");
      out.write("            text-shadow: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        footer{\n");
      out.write("            color:white;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header style=\"position:fixed; width: 100%;top:0;\">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\" style=\"background-color: black !important; height: 90px;\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td Style=\"vertical-align:middle; text-align:center;\">\n");
      out.write("                            <img src=\"imagenes/estudiar.png\" style=\"margin:0 auto;\">\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <h2 style=\"font-family:'Marck Script',cursive;font-size: 50px;color:white\"> &nbsp; Biblioteca</h2>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            \n");
      out.write("            <div class=\"collapse navbar-collapse \" id=\"navbarText\" style=\"padding: 0px;\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto justify-content-end\" style=\"width: 100%;\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                            <p style=\"color: white; font-size: small; margin-top: 20px;\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-search\"></span> Busqueda\n");
      out.write("                             </p>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <p style=\"color: white; font-size: small; margin-top: 20px;\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-user\"></span> Usuario\n");
      out.write("                        </p>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\" style=\"margin-left:5px; margin-top: 15px;\">\n");
      out.write("                        <div class=\"dropdown\">\n");
      out.write("                                <button type=\"button\" class=\"btn dropdown-toggle btn_salir\" data-toggle=\"dropdown\"  style=\"color: white; font-size: large; background-color: transparent; box-shadow: 0px !important;\">\n");
      out.write("                                        \n");
      out.write("                                </button>\n");
      out.write("                                <div class=\"dropdown-menu dropdown-menu-right\">\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\"><h5>Perfil</h5></a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\"><h5>Configuración</h5></a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\"><h5>Salir</h5></a>\n");
      out.write("                                    </div>\n");
      out.write("                              </div>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div style=\"width:95%; height:500px; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px\">\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <footer style=\"margin-top: 20px;\">\n");
      out.write("        <h5>&copy; 2018 . Todos los derechos reservados</h5>\n");
      out.write("    </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
