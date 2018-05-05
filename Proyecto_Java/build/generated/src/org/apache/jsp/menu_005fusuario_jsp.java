package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_005fusuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/Estructura_plantilla/head.jsp");
    _jspx_dependants.add("/Estructura_plantilla/header.jsp");
    _jspx_dependants.add("/Estructura_plantilla/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_out_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_message_key_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_out_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_message_key_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_out_value_nobody.release();
    _jspx_tagPool_fmt_message_key_nobody.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");

    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null){

      out.write("        \n");
      if (true) {
        _jspx_page_context.forward("index.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("error", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Es obligatorio identificarse", request.getCharacterEncoding()));
        return;
      }
      out.write('\n');

    }

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <!--freewall-->\n");
      out.write("        <script type=\"text/javascript\" src=\"freewall/jquery-1.10.2.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"freewall/freewall.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"freewall/style.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("        <!--********-->\n");
      out.write("\n");
      out.write("        <!--fuentes-->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Marck+Script\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!--<script src=\"js/vendor/modernizr-2.8.3-respond-1.4.2.min.js\"></script>-->\n");
      out.write("        \n");
      out.write("        <!-- css y js a ocupar-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Biblioteca Java</title>\n");
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
      out.write("    </style>");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!--css propio-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <style>        \n");
      out.write("            /*boton salir*/\n");
      out.write("            .btn_salir:focus{\n");
      out.write("                outline: 0px;\n");
      out.write("                box-shadow: 0px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            footer{\n");
      out.write("                color:white;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*estilos para freewall*/\n");
      out.write("\n");
      out.write("            .header{\n");
      out.write("                height: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes start {\n");
      out.write("                from {\n");
      out.write("                    transform: scale(0);\n");
      out.write("                }\n");
      out.write("                to {\n");
      out.write("                    transform: scale(1);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @-webkit-keyframes start {\n");
      out.write("                from {\n");
      out.write("                    -webkit-transform: scale(0);\n");
      out.write("                }\n");
      out.write("                to {\n");
      out.write("                    -webkit-transform: scale(1);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .free-wall .cell[data-state=\"init\"] {\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .free-wall .cell[data-state=\"start\"] {\n");
      out.write("                display: block;\n");
      out.write("                animation: start 0.5s;\n");
      out.write("                -webkit-animation: start 0.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .free-wall .brink[data-state=\"move\"] {\n");
      out.write("                transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s;\n");
      out.write("                -webkit-transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            /*Estilos de los cuadros*/\n");
      out.write("            .free-wall {\n");
      out.write("                margin: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .cell {\n");
      out.write("                cursor: move;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .cell .cover {\n");
      out.write("                padding: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .handle {\n");
      out.write("                border: 1px dotted orange;\n");
      out.write("                padding: 4px;\n");
      out.write("                width: auto;\n");
      out.write("                display: inline-block;\n");
      out.write("                border: none;\n");
      out.write("                float:left;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .con_div, .icono_cuadro {\n");
      out.write("                width: 100px;\n");
      out.write("                height: 100px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .icono_cuadro{\n");
      out.write("                margin-top: -40px;\n");
      out.write("                margin-left: -40px;\n");
      out.write("                left: 50%;\n");
      out.write("                top: 50%;\n");
      out.write("                position: absolute;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .cell:hover{\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .handle:hover{\n");
      out.write("                cursor: move;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h5{\n");
      out.write("                text-shadow: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .cover{\n");
      out.write("                height: 100%;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .cell:hover{\n");
      out.write("                box-shadow: inset 0px 0px 220px black;\n");
      out.write("                transform: scale(1.1);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            /*termina estilos freewall*/\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("         <!--codigo del header-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String usuario = "";
    HttpSession sesion_u = request.getSession();
    usuario = (String) sesion_u.getAttribute("usuario");

      out.write("        \n");
      out.write("\n");
      out.write("<header style=\"position:fixed; width: 100%;top:0; z-index: 3;\">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\" style=\"background-color: black !important; height: 90px;\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td Style=\"vertical-align:middle; text-align:center;\">\n");
      out.write("                            <img src=\"imagenes/estudiar.png\" style=\"margin:0 auto;\">\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <h2 style=\"font-family:'Marck Script',cursive;font-size: 50px;color:white\"> &nbsp;");
      if (_jspx_meth_fmt_message_0(_jspx_page_context))
        return;
      out.write("</h2>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            \n");
      out.write("            <div class=\"collapse navbar-collapse \" id=\"navbarText\" style=\"padding: 0px;\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto justify-content-end\" style=\"width: 100%;\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                            <p style=\"color: white; font-size: small; margin-top: 20px;\">\n");
      out.write("                                <span class=\"glyphicon glyphicon-search\"></span> ");
      if (_jspx_meth_fmt_message_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                             </p>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <p style=\"color: white; font-size: small; margin-top: 20px;\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-user\"></span> ");
      if (_jspx_meth_fmt_message_2(_jspx_page_context))
        return;
      out.write(':');
      out.write(' ');
      out.print(usuario);
      out.write("\n");
      out.write("                        </p>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\" style=\"margin-left:5px; margin-top: 15px;\">\n");
      out.write("                        <div class=\"dropdown\">\n");
      out.write("                                <button type=\"button\" class=\"btn dropdown-toggle btn_salir\" data-toggle=\"dropdown\"  style=\"color: white; font-size: large; background-color: transparent; box-shadow: 0px !important;\">\n");
      out.write("                                        \n");
      out.write("                                </button>\n");
      out.write("                                <div class=\"dropdown-menu dropdown-menu-right\">\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\"><h5>");
      if (_jspx_meth_fmt_message_3(_jspx_page_context))
        return;
      out.write("</h5></a>\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\"><h5>");
      if (_jspx_meth_fmt_message_4(_jspx_page_context))
        return;
      out.write("</h5></a>\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"Check_Logout.jsp\"><h5>");
      if (_jspx_meth_fmt_message_5(_jspx_page_context))
        return;
      out.write("</h5></a>\n");
      out.write("                                    </div>\n");
      out.write("                              </div>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <div style=\"width:95%; min-height:550px; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; color:white;\">\n");
      out.write("            \n");
      out.write("            ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"layout\" style=\"margin: 0 auto;\">\n");
      out.write("                <div id=\"freewall\" class=\"free-wall\">\n");
      out.write("\n");
      out.write("                    <div class=\"cell size32\" style=\"background-color:rgb(58, 13, 130);\" data-position=\"0-0\" data-handle=\".handle\">\n");
      out.write("                        <div class='cover'>\n");
      out.write("                            <div class=\"handle\">\n");
      out.write("                                <span class=\"material-icons\">open_with</span>\n");
      out.write("                            </div>\n");
      out.write("                            <h4><strong>Consultar</strong></h4>\n");
      out.write("                            <div class=\"con_div\">\n");
      out.write("                                <img src=\"imagenes/busqueda.png\" class=\"icono_cuadro\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class='cell size22' style=\"background-color:#a53319;\" data-position=\"0-3\" data-handle=\".handle\">\n");
      out.write("                        <div class='cover'>\n");
      out.write("                            <div class=\"handle\">\n");
      out.write("                                <span class=\"material-icons\">open_with</span>\n");
      out.write("                            </div>\n");
      out.write("                            <h4><strong>Reservar</strong></h4>\n");
      out.write("                            <div class=\"con_div\">\n");
      out.write("                                <img src=\"imagenes/calendar-with-a-clock-time-tools.png\" class=\"icono_cuadro\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class='cell size32' style=\"background-color:#078e88;\" data-position=\"0-5\" data-handle=\".handle\">\n");
      out.write("                        <div class='cover'>\n");
      out.write("                            <div class=\"handle\">\n");
      out.write("                                <span class=\"material-icons\">open_with</span>\n");
      out.write("                            </div>\n");
      out.write("                            <h4><strong>Estatus de Biblioteca</strong></h4>\n");
      out.write("                            <div class=\"con_div\">\n");
      out.write("                                <img src=\"imagenes/presentacion-de-informes.png\" class=\"icono_cuadro\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<footer style=\"margin-top: 20px;\">\n");
      out.write("    <div style=\"width: 100%; text-align: center;text-decoration: none; color: white;\">\n");
      out.write("        <a href=\"");
      out.print(request.getRequestURL());
      out.write("?locale=en\"><b>");
      if (_jspx_meth_fmt_message_6(_jspx_page_context))
        return;
      out.write("</b></a>\n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        <a href=\"");
      out.print(request.getRequestURL());
      out.write("?locale=es\"><b>");
      if (_jspx_meth_fmt_message_7(_jspx_page_context))
        return;
      out.write("</b></a>\n");
      out.write("    </div>\n");
      out.write("    <br>\n");
      out.write("    <h5>");
      if (_jspx_meth_fmt_message_8(_jspx_page_context))
        return;
      out.write("</h5>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--script-->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            var wall = new Freewall(\"#freewall\");\n");
      out.write("            wall.reset({\n");
      out.write("                draggable: true,\n");
      out.write("                selector: '.cell',\n");
      out.write("                animate: true,\n");
      out.write("                cellW: 150,\n");
      out.write("                cellH: 150,\n");
      out.write("                onResize: function () {\n");
      out.write("                    wall.refresh();\n");
      out.write("                },\n");
      out.write("                onBlockMove: function () {\n");
      out.write("                    console.log(this);\n");
      out.write("                },\n");
      out.write("                onResize: function () {\n");
      out.write("                    wall.fitWidth();\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("            wall.fitWidth();\n");
      out.write("            // for scroll bar appear;\n");
      out.write("            $(window).trigger(\"resize\");\n");
      out.write("\n");
      out.write("\n");
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

  private boolean _jspx_meth_fmt_message_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_0 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_0.setParent(null);
    _jspx_th_fmt_message_0.setKey("header_lbl_biblioteca");
    int _jspx_eval_fmt_message_0 = _jspx_th_fmt_message_0.doStartTag();
    if (_jspx_th_fmt_message_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_0);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_0);
    return false;
  }

  private boolean _jspx_meth_fmt_message_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_1 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_1.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_1.setParent(null);
    _jspx_th_fmt_message_1.setKey("header_lbl_busqueda");
    int _jspx_eval_fmt_message_1 = _jspx_th_fmt_message_1.doStartTag();
    if (_jspx_th_fmt_message_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_1);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_1);
    return false;
  }

  private boolean _jspx_meth_fmt_message_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_2 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_2.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_2.setParent(null);
    _jspx_th_fmt_message_2.setKey("header_lbl_usuario");
    int _jspx_eval_fmt_message_2 = _jspx_th_fmt_message_2.doStartTag();
    if (_jspx_th_fmt_message_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_2);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_2);
    return false;
  }

  private boolean _jspx_meth_fmt_message_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_3 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_3.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_3.setParent(null);
    _jspx_th_fmt_message_3.setKey("header_lbl_perfil");
    int _jspx_eval_fmt_message_3 = _jspx_th_fmt_message_3.doStartTag();
    if (_jspx_th_fmt_message_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_3);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_3);
    return false;
  }

  private boolean _jspx_meth_fmt_message_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_4 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_4.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_4.setParent(null);
    _jspx_th_fmt_message_4.setKey("header_lbl_Configuración");
    int _jspx_eval_fmt_message_4 = _jspx_th_fmt_message_4.doStartTag();
    if (_jspx_th_fmt_message_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_4);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_4);
    return false;
  }

  private boolean _jspx_meth_fmt_message_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_5 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_5.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_5.setParent(null);
    _jspx_th_fmt_message_5.setKey("header_lbl_Salir");
    int _jspx_eval_fmt_message_5 = _jspx_th_fmt_message_5.doStartTag();
    if (_jspx_th_fmt_message_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_5);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_5);
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.inicio!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <div class=\"alert alert-info alert-dismissible\" style=\"width: 30%;margin: 0 auto; float: none;font-size: initial;text-align: center;\">\n");
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
    _jspx_th_c_out_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.inicio}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_0 = _jspx_th_c_out_0.doStartTag();
    if (_jspx_th_c_out_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
    return false;
  }

  private boolean _jspx_meth_fmt_message_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_6 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_6.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_6.setParent(null);
    _jspx_th_fmt_message_6.setKey("footer_lbl_idioma_ingles");
    int _jspx_eval_fmt_message_6 = _jspx_th_fmt_message_6.doStartTag();
    if (_jspx_th_fmt_message_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_6);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_6);
    return false;
  }

  private boolean _jspx_meth_fmt_message_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_7 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_7.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_7.setParent(null);
    _jspx_th_fmt_message_7.setKey("footer_lbl_idioma_español");
    int _jspx_eval_fmt_message_7 = _jspx_th_fmt_message_7.doStartTag();
    if (_jspx_th_fmt_message_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_7);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_7);
    return false;
  }

  private boolean _jspx_meth_fmt_message_8(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:message
    org.apache.taglibs.standard.tag.rt.fmt.MessageTag _jspx_th_fmt_message_8 = (org.apache.taglibs.standard.tag.rt.fmt.MessageTag) _jspx_tagPool_fmt_message_key_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.MessageTag.class);
    _jspx_th_fmt_message_8.setPageContext(_jspx_page_context);
    _jspx_th_fmt_message_8.setParent(null);
    _jspx_th_fmt_message_8.setKey("footer_lbl_derechos_de_autor");
    int _jspx_eval_fmt_message_8 = _jspx_th_fmt_message_8.doStartTag();
    if (_jspx_th_fmt_message_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_8);
      return true;
    }
    _jspx_tagPool_fmt_message_key_nobody.reuse(_jspx_th_fmt_message_8);
    return false;
  }
}
