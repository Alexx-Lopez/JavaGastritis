package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_out_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_out_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_out_value_nobody.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Biblioteca Java</title>\n");
      out.write("\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-theme.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fontAwesome.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/hero-slider.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/tooplate-style.css\">\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <script src=\"js/vendor/modernizr-2.8.3-respond-1.4.2.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Marck+Script\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <div class=\"header bg-dark navbar-dark\" style=\"height:100px;\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <nav class=\"navbar navbar-inverse\" role=\"navigation\">\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <button type=\"button\" id=\"nav-toggle\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#main-nav\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                            </button>\n");
      out.write("                            <a href=\"#\" class=\"navbar-brand scroll-top\">\n");
      out.write("                                <div>\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td Style=\"vertical-align:middle; text-align:center;\">\n");
      out.write("                                                <img src=\"imagenes/estudiar.png\" style=\"margin:0 auto;\">\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <h2 style=\"font-family:'Marck Script',cursive;font-size: 50px;\"> &nbsp; Biblioteca</h2>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div id=\"main-nav\" class=\"collapse navbar-collapse\">\n");
      out.write("                            <ul class=\"nav navbar-nav\" style=\"font-family: 'Marck Script', cursive !important;\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\" class=\"scroll-top\">\n");
      out.write("                                        <span class=\"glyphicon glyphicon-home\"></span> Inicio</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\" class=\"scroll-link\" data-id=\"about\">\n");
      out.write("                                        <span class=\"glyphicon glyphicon-eye-open\"></span> Acerca de Nosotros</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\" class=\"scroll-link\" data-id=\"search\">\n");
      out.write("                                        <span class=\"glyphicon glyphicon-search\"></span> Búsqueda</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\" class=\"scroll-link\" data-id=\"inf\">\n");
      out.write("                                        <span class=\"glyphicon glyphicon-earphone\"></span> Contactanós</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <!-- <a href=\"#\" class=\"scroll-link\" data-id=\"contact\">Contact Us</a>-->\n");
      out.write("                                    <a href=\"#\" data-toggle=\"modal\" data-target=\"#exampleModalCenter\">\n");
      out.write("                                        <span class=\"glyphicon glyphicon-user\"></span> Ingresar</a>\n");
      out.write("\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div style=\"width:60%; height:400px; margin: 0 auto;margin-top:200px;\">\n");
      out.write("            ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            <div id=\"carousel-example\" class=\"carousel slide\" data-ride=\"carousel\" style=\" width: 100%; height:400px; margin:0 auto;overflow:hidden;margin-top: 20px;\">\n");
      out.write("                <ol class=\"carousel-indicators\">\n");
      out.write("                    <li data-target=\"#carousel-example\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                    <li data-target=\"#carousel-example\" data-slide-to=\"1\"></li>\n");
      out.write("                    <li data-target=\"#carousel-example\" data-slide-to=\"2\"></li>\n");
      out.write("                </ol>\n");
      out.write("\n");
      out.write("                <div class=\"carousel-inner\">\n");
      out.write("                    <div class=\"item active\">\n");
      out.write("                        <a href=\"#\" style=\"height:100%;\">\n");
      out.write("                            <img src=\"imagenes/1.jpg\" style=\"margin: 0 auto;\" />\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"carousel-caption\">\n");
      out.write("                            <h3>Colegio</h3>\n");
      out.write("                            <p>Amigos de Dosco</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"item\" style=\"height:100%;\">\n");
      out.write("                        <a href=\"#\">\n");
      out.write("                            <img src=\"imagenes/2.jpg\" style=\"margin: 0 auto;\" />\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"carousel-caption\">\n");
      out.write("                            <h3>Colegio</h3>\n");
      out.write("                            <p>Amigos de Dosco</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"item\" style=\"height:100%;\">\n");
      out.write("                        <a href=\"#\">\n");
      out.write("                            <img src=\"imagenes/3.jpg\" style=\"margin: 0 auto;\"/>\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"carousel-caption\">\n");
      out.write("                            <h3>Colegio</h3>\n");
      out.write("                            <p>Amigos de Dosco</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <a class=\"left carousel-control\" href=\"#carousel-example\" data-slide=\"prev\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("                </a>\n");
      out.write("                <a class=\"right carousel-control\" href=\"#carousel-example\" data-slide=\"next\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"about\" class=\"page-section\" style=\"width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;\">\n");
      out.write("            <span>\n");
      out.write("                <h2 style=\"text-align:center;\">Acerca de nosotros</h2>\n");
      out.write("            </span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"search\" class=\"page-section\" style=\"width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;\">\n");
      out.write("            <span>\n");
      out.write("                <h2 style=\"text-align:center;\">Busqueda</h2>\n");
      out.write("            </span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"inf\" class=\"page-section\" style=\"width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;\">\n");
      out.write("            <span>\n");
      out.write("                <h2 style=\"text-align:center;\">Contactanós</h2>\n");
      out.write("            </span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Modal -->\n");
      out.write("        <div class=\"modal fade\" id=\"exampleModalCenter\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog modal-dialog-centered\" role=\"document\" style=\"margin-top:200px; border: 2px solid black; border-radius: 20px; padding: 30px; background-color: #a4b7a3;\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                        <h2 class=\"modal-title\" id=\"exampleModalLongTitle\">Iniciar Sesión</h2>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <form action=\"Check_Login.jsp\" method=\"post\">\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"usuario\">Usuario</label>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"usuario\" placeholder=\"Usuario\" name=\"usuario\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"clave\">Password:</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" id=\"clave\" placeholder=\"Password\" name=\"clave\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-footer\">\n");
      out.write("                            <div class=\"form-group btn-block\">\n");
      out.write("                                <button class=\"btn btn-lg btn-primary btn\" type=\"submit\">Iniciar sesión</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-lg btn-secondary\" data-dismiss=\"modal\">Salir</button>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer style=\"margin-top: 200px;\">\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js\"></script>\n");
      out.write("        <script>window.jQuery || document.write('<script src=\"js/vendor/jquery-1.11.2.min.js\"><\\/script>')</script>\n");
      out.write("\n");
      out.write("        <script src=\"js/vendor/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"js/plugins.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                // navigation click actions \n");
      out.write("                $('.scroll-link').on('click', function (event) {\n");
      out.write("                    event.preventDefault();\n");
      out.write("                    var sectionID = $(this).attr(\"data-id\");\n");
      out.write("                    scrollToID('#' + sectionID, 750);\n");
      out.write("                });\n");
      out.write("                // scroll to top action\n");
      out.write("                $('.scroll-top').on('click', function (event) {\n");
      out.write("                    event.preventDefault();\n");
      out.write("                    $('html, body').animate({scrollTop: 0}, 'slow');\n");
      out.write("                });\n");
      out.write("                // mobile nav toggle\n");
      out.write("                $('#nav-toggle').on('click', function (event) {\n");
      out.write("                    event.preventDefault();\n");
      out.write("                    $('#main-nav').toggleClass(\"open\");\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("            // scroll function\n");
      out.write("            function scrollToID(id, speed) {\n");
      out.write("                var offSet = 50;\n");
      out.write("                var targetOffset = $(id).offset().top - offSet;\n");
      out.write("                var mainNav = $('#main-nav');\n");
      out.write("                $('html,body').animate({scrollTop: targetOffset}, speed);\n");
      out.write("                if (mainNav.hasClass(\"open\")) {\n");
      out.write("                    mainNav.css(\"height\", \"1px\").removeClass(\"in\").addClass(\"collapse\");\n");
      out.write("                    mainNav.removeClass(\"open\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            if (typeof console === \"undefined\") {\n");
      out.write("                console = {\n");
      out.write("                    log: function () { }\n");
      out.write("                };\n");
      out.write("            }\n");
      out.write("        </script>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.error!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <div class=\"alert alert-danger alert-dismissible\" style=\"width:60%;margin: 0 auto; float: none;font-size: initial;text-align: center;\">\n");
        out.write("                    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\n");
        out.write("                    <span>");
        if (_jspx_meth_c_out_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("</span>\n");
        out.write("                </div>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_out_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_0 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_0.setPageContext(_jspx_page_context);
    _jspx_th_c_out_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_out_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.error}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_0 = _jspx_th_c_out_0.doStartTag();
    if (_jspx_th_c_out_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
    return false;
  }
}
