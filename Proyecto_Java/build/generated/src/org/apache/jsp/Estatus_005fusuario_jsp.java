package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Estatus_005fusuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/Sesion/scriptlet_sesion_usuario.jsp");
    _jspx_dependants.add("/Estructura_plantilla/head.jsp");
    _jspx_dependants.add("/Estructura_plantilla/header.jsp");
    _jspx_dependants.add("/Estructura_plantilla/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_out_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_catch_var;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_message_key_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_out_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_catch_var = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_message_key_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_out_value_nobody.release();
    _jspx_tagPool_c_catch_var.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_fmt_message_key_nobody.release();
    _jspx_tagPool_sql_query_var_dataSource.release();
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
      out.write("<!-- scriptlet para mantener la pagina con sesión-->\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');

    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null) {

      out.write("        \n");
      if (true) {
        _jspx_page_context.forward("index.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("error", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Es obligatorio identificarse", request.getCharacterEncoding()));
        return;
      }
      out.write('\n');

} else {

      out.write('\n');
      //  c:catch
      org.apache.taglibs.standard.tag.common.core.CatchTag _jspx_th_c_catch_0 = (org.apache.taglibs.standard.tag.common.core.CatchTag) _jspx_tagPool_c_catch_var.get(org.apache.taglibs.standard.tag.common.core.CatchTag.class);
      _jspx_th_c_catch_0.setPageContext(_jspx_page_context);
      _jspx_th_c_catch_0.setParent(null);
      _jspx_th_c_catch_0.setVar("error_sql");
      int[] _jspx_push_body_count_c_catch_0 = new int[] { 0 };
      try {
        int _jspx_eval_c_catch_0 = _jspx_th_c_catch_0.doStartTag();
        if (_jspx_eval_c_catch_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("    ");
            //  sql:query
            org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
            _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
            _jspx_th_sql_query_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_catch_0);
            _jspx_th_sql_query_0.setDataSource(new String("jdbc/mysql"));
            _jspx_th_sql_query_0.setVar("con");
            int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
            try {
              int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
              if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
                  out = _jspx_page_context.pushBody();
                  _jspx_push_body_count_sql_query_0[0]++;
                  _jspx_th_sql_query_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
                  _jspx_th_sql_query_0.doInitBody();
                }
                do {
                  out.write("\n");
                  out.write("        select * from usuarioadmon where idUsuarios=");
                  out.print(sesionOk.getAttribute("usuario"));
                  out.write("\n");
                  out.write("    ");
                  int evalDoAfterBody = _jspx_th_sql_query_0.doAfterBody();
                  if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                    break;
                } while (true);
                if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
                  out = _jspx_page_context.popBody();
                  _jspx_push_body_count_sql_query_0[0]--;
              }
              if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                return;
              }
            } catch (Throwable _jspx_exception) {
              while (_jspx_push_body_count_sql_query_0[0]-- > 0)
                out = _jspx_page_context.popBody();
              _jspx_th_sql_query_0.doCatch(_jspx_exception);
            } finally {
              _jspx_th_sql_query_0.doFinally();
              _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_0);
            }
            out.write('\n');
            int evalDoAfterBody = _jspx_th_c_catch_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_catch_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_catch_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_catch_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_catch_0.doFinally();
        _jspx_tagPool_c_catch_var.reuse(_jspx_th_c_catch_0);
      }
      out.write('\n');
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      _jspx_th_c_if_0.setPageContext(_jspx_page_context);
      _jspx_th_c_if_0.setParent(null);
      _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty error_sql}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
      if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("    ");

        sesionOk.invalidate();
    
          out.write("\n");
          out.write("    ");
          if (true) {
            _jspx_page_context.forward("index.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("error", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Acceso no permitido", request.getCharacterEncoding()));
            return;
          }
          out.write('\n');
          int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
        return;
      }
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      out.write('\n');
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      _jspx_th_c_if_1.setPageContext(_jspx_page_context);
      _jspx_th_c_if_1.setParent(null);
      _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${con.rowCount == 0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
      if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("    ");

        sesionOk.invalidate();
    
          out.write("\n");
          out.write("    ");
          if (true) {
            _jspx_page_context.forward("index.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("error", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Acceso no permitido", request.getCharacterEncoding()));
            return;
          }
          out.write('\n');
          int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
        return;
      }
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      out.write('\n');

    }

      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

    //se extrae el id del empleado que ha iniciado sesión  y luego se realiza un set en el 
    //beans
    String id_usu = "";

    //se crea una variable de sesion para almacenar el id de la persona que ingreso
    HttpSession sesion_emp = request.getSession();
    id_usu=(String)sesion_emp.getAttribute("usuario");

      out.write("\n");
      out.write("\n");
      out.write("<!-- consulta sql para llenar la información personal -->\n");
      //  sql:query
      org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_1 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
      _jspx_th_sql_query_1.setPageContext(_jspx_page_context);
      _jspx_th_sql_query_1.setParent(null);
      _jspx_th_sql_query_1.setDataSource(new String("jdbc/mysql"));
      _jspx_th_sql_query_1.setVar("consulta_inf");
      int[] _jspx_push_body_count_sql_query_1 = new int[] { 0 };
      try {
        int _jspx_eval_sql_query_1 = _jspx_th_sql_query_1.doStartTag();
        if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
            out = _jspx_page_context.pushBody();
            _jspx_push_body_count_sql_query_1[0]++;
            _jspx_th_sql_query_1.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
            _jspx_th_sql_query_1.doInitBody();
          }
          do {
            out.write("\n");
            out.write("    select ua.idUsuarios, ua.Usuario, ua.Activo, r.Nombre from usuarioadmon ua INNER JOIN  usuarioadmonrol uar on ua.idUsuarios=uar.idUsuarios \n");
            out.write("                              INNER JOIN  rol r on uar.idRol=r.idRol where ua.idUsuarios=");
            out.print(id_usu);
            out.write('\n');
            int evalDoAfterBody = _jspx_th_sql_query_1.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
          if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
            out = _jspx_page_context.popBody();
            _jspx_push_body_count_sql_query_1[0]--;
        }
        if (_jspx_th_sql_query_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_sql_query_1[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_sql_query_1.doCatch(_jspx_exception);
      } finally {
        _jspx_th_sql_query_1.doFinally();
        _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_1);
      }
      out.write("\n");
      out.write("                             \n");
      out.write("<!-- consulta sql para mostrar la multa total -->\n");
      //  sql:query
      org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_2 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
      _jspx_th_sql_query_2.setPageContext(_jspx_page_context);
      _jspx_th_sql_query_2.setParent(null);
      _jspx_th_sql_query_2.setDataSource(new String("jdbc/mysql"));
      _jspx_th_sql_query_2.setVar("consulta_multa");
      int[] _jspx_push_body_count_sql_query_2 = new int[] { 0 };
      try {
        int _jspx_eval_sql_query_2 = _jspx_th_sql_query_2.doStartTag();
        if (_jspx_eval_sql_query_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspx_eval_sql_query_2 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
            out = _jspx_page_context.pushBody();
            _jspx_push_body_count_sql_query_2[0]++;
            _jspx_th_sql_query_2.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
            _jspx_th_sql_query_2.doInitBody();
          }
          do {
            out.write("\n");
            out.write("    select SUM(Multa) as 'Multa' from registro where idUsuarios=");
            out.print(id_usu);
            out.write('\n');
            int evalDoAfterBody = _jspx_th_sql_query_2.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
          if (_jspx_eval_sql_query_2 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
            out = _jspx_page_context.popBody();
            _jspx_push_body_count_sql_query_2[0]--;
        }
        if (_jspx_th_sql_query_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_sql_query_2[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_sql_query_2.doCatch(_jspx_exception);
      } finally {
        _jspx_th_sql_query_2.doFinally();
        _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_2);
      }
      out.write("\n");
      out.write("               \n");
      out.write("<!-- consulta sql para llenar la tabla prestamos-->\n");
      //  sql:query
      org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_3 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
      _jspx_th_sql_query_3.setPageContext(_jspx_page_context);
      _jspx_th_sql_query_3.setParent(null);
      _jspx_th_sql_query_3.setDataSource(new String("jdbc/mysql"));
      _jspx_th_sql_query_3.setVar("consulta_pre");
      int[] _jspx_push_body_count_sql_query_3 = new int[] { 0 };
      try {
        int _jspx_eval_sql_query_3 = _jspx_th_sql_query_3.doStartTag();
        if (_jspx_eval_sql_query_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspx_eval_sql_query_3 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
            out = _jspx_page_context.pushBody();
            _jspx_push_body_count_sql_query_3[0]++;
            _jspx_th_sql_query_3.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
            _jspx_th_sql_query_3.doInitBody();
          }
          do {
            out.write("\n");
            out.write("    select c.Item, m.Titulo, c.EstadoMaterial, c.Ubicacion, r.Multa, r.F_Prestamo, r.F_Devuelto from usuarioadmon u\n");
            out.write("    INNER JOIN registro r on u.idUsuarios=r.idUsuarios\n");
            out.write("    INNER JOIN copia c on r.Item=c.Item\n");
            out.write("    INNER JOIN material m on c.Codigo_Material=m.Codigo_Material where u.idUsuarios=");
            out.print(id_usu);
            out.write(" and r.Estado_registro=1;\n");
            int evalDoAfterBody = _jspx_th_sql_query_3.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
          if (_jspx_eval_sql_query_3 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
            out = _jspx_page_context.popBody();
            _jspx_push_body_count_sql_query_3[0]--;
        }
        if (_jspx_th_sql_query_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_sql_query_3[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_sql_query_3.doCatch(_jspx_exception);
      } finally {
        _jspx_th_sql_query_3.doFinally();
        _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_3);
      }
      out.write("\n");
      out.write("\n");
      out.write("<!-- consulta sql para llenar la tabla de reservas-->\n");
      //  sql:query
      org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_4 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
      _jspx_th_sql_query_4.setPageContext(_jspx_page_context);
      _jspx_th_sql_query_4.setParent(null);
      _jspx_th_sql_query_4.setDataSource(new String("jdbc/mysql"));
      _jspx_th_sql_query_4.setVar("consulta_re");
      int[] _jspx_push_body_count_sql_query_4 = new int[] { 0 };
      try {
        int _jspx_eval_sql_query_4 = _jspx_th_sql_query_4.doStartTag();
        if (_jspx_eval_sql_query_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspx_eval_sql_query_4 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
            out = _jspx_page_context.pushBody();
            _jspx_push_body_count_sql_query_4[0]++;
            _jspx_th_sql_query_4.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
            _jspx_th_sql_query_4.doInitBody();
          }
          do {
            out.write("\n");
            out.write("    select c.Item, m.Titulo, c.EstadoMaterial, c.Ubicacion, r.F_Inicio, r.F_Final from usuarioadmon u \n");
            out.write("    INNER JOIN reserva r on u.idUsuarios=r.idUsuarios \n");
            out.write("    INNER JOIN copia c on r.Item=c.Item \n");
            out.write("    INNER JOIN material m on c.Codigo_Material=m.Codigo_Material where u.idUsuarios=");
            out.print(id_usu);
            out.write(';');
            out.write('\n');
            int evalDoAfterBody = _jspx_th_sql_query_4.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
          if (_jspx_eval_sql_query_4 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
            out = _jspx_page_context.popBody();
            _jspx_push_body_count_sql_query_4[0]--;
        }
        if (_jspx_th_sql_query_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_sql_query_4[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_sql_query_4.doCatch(_jspx_exception);
      } finally {
        _jspx_th_sql_query_4.doFinally();
        _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_4);
      }
      out.write("\n");
      out.write("    \n");
      out.write("<!-- consulta sql para llenar la tabla historial de prestamos-->\n");
      //  sql:query
      org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_5 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
      _jspx_th_sql_query_5.setPageContext(_jspx_page_context);
      _jspx_th_sql_query_5.setParent(null);
      _jspx_th_sql_query_5.setDataSource(new String("jdbc/mysql"));
      _jspx_th_sql_query_5.setVar("consulta_his_pre");
      int[] _jspx_push_body_count_sql_query_5 = new int[] { 0 };
      try {
        int _jspx_eval_sql_query_5 = _jspx_th_sql_query_5.doStartTag();
        if (_jspx_eval_sql_query_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspx_eval_sql_query_5 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
            out = _jspx_page_context.pushBody();
            _jspx_push_body_count_sql_query_5[0]++;
            _jspx_th_sql_query_5.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
            _jspx_th_sql_query_5.doInitBody();
          }
          do {
            out.write("\n");
            out.write("    select c.Item, m.Titulo, r.F_Prestamo, r.F_Devuelto from usuarioadmon u\n");
            out.write("    INNER JOIN registro r on u.idUsuarios=r.idUsuarios\n");
            out.write("    INNER JOIN copia c on r.Item=c.Item\n");
            out.write("    INNER JOIN material m on c.Codigo_Material=m.Codigo_Material where u.idUsuarios=");
            out.print(id_usu);
            out.write(" and r.Estado_registro=0;\n");
            int evalDoAfterBody = _jspx_th_sql_query_5.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
          if (_jspx_eval_sql_query_5 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
            out = _jspx_page_context.popBody();
            _jspx_push_body_count_sql_query_5[0]--;
        }
        if (_jspx_th_sql_query_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_sql_query_5[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_sql_query_5.doCatch(_jspx_exception);
      } finally {
        _jspx_th_sql_query_5.doFinally();
        _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_5);
      }
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!-- css y js a ocupar-->\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("    <title>Biblioteca Java</title>\r\n");
      out.write("\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/tooplate-style.css\">\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css\">\r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Marck+Script\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("        \r\n");
      out.write("        /*boton salir*/\r\n");
      out.write("        .btn_salir:focus{\r\n");
      out.write("            outline: 0px;\r\n");
      out.write("            box-shadow: 0px;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        h5{\r\n");
      out.write("            text-shadow: none;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        footer{\r\n");
      out.write("            color:white;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("    </style>");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .selector{\n");
      out.write("                height: 35px !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            legend{\n");
      out.write("                border-bottom: 0px !important;\n");
      out.write("                width: auto !important;\n");
      out.write("                margin-bottom: 0px !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            fieldset{\n");
      out.write("                border: 1px solid black !important;\n");
      out.write("                padding: 10px;\n");
      out.write("            }\n");
      out.write("            /*estilos tabla de registros*/\n");
      out.write("            #tabla_registro table, #tabla_registro th, #tabla_registro td \n");
      out.write("            {\n");
      out.write("                border: 1px solid black;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #tabla_registro thead\n");
      out.write("            {\n");
      out.write("                height: 50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #tabla_registro\n");
      out.write("            {\n");
      out.write("                background-color: #1ABC9C !important;\n");
      out.write("                width: 100%;\n");
      out.write("                display: table !important;\n");
      out.write("                border-collapse: separate !important;\n");
      out.write("                border-spacing: 1px !important;\n");
      out.write("                border-color: black !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #tabla_registro tr:hover\n");
      out.write("            {\n");
      out.write("                background-color: #08463a !important;\n");
      out.write("                color:white !important;\n");
      out.write("                border-color: white !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #regresar{\n");
      out.write("                background-color: #7d8384;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #regresar:hover{\n");
      out.write("                background-color: #535b5d;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input:focus{\n");
      out.write("                z-index: 0 !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .columna_icono{\n");
      out.write("                border: none;\n");
      out.write("                background-color: transparent;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .fila_tabla{\n");
      out.write("                height: 50px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--codigo del header-->\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      Beans.sesionBeans c_sesion = null;
      synchronized (session) {
        c_sesion = (Beans.sesionBeans) _jspx_page_context.getAttribute("c_sesion", PageContext.SESSION_SCOPE);
        if (c_sesion == null){
          c_sesion = new Beans.sesionBeans();
          _jspx_page_context.setAttribute("c_sesion", c_sesion, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");

    String usuario = "";
    String nombre = "";
    
    //se crea una variable de sesion para almacenar el id de la persona que ingreso
    HttpSession sesion_u = request.getSession();
    usuario =(String)sesion_u.getAttribute("usuario");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<header style=\"position:fixed; width: 100%;top:0; z-index: 3;\">\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\" style=\"background-color: black !important; height: 90px;\">\r\n");
      out.write("                <table>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td Style=\"vertical-align:middle; text-align:center;\">\r\n");
      out.write("                            <img src=\"imagenes/estudiar.png\" style=\"margin:0 auto;\">\r\n");
      out.write("                        </td>\r\n");
      out.write("                        <td>\r\n");
      out.write("                            <h2 style=\"font-family:'Marck Script',cursive;font-size: 50px;color:white\"> &nbsp;");
      if (_jspx_meth_fmt_message_0(_jspx_page_context))
        return;
      out.write("</h2>\r\n");
      out.write("                        </td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </table>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"collapse navbar-collapse \" id=\"navbarText\" style=\"padding: 0px;\">\r\n");
      out.write("                <ul class=\"navbar-nav mr-auto justify-content-end\" style=\"width: 100%;\">\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                            <p style=\"color: white; font-size: small; margin-top: 20px;\">\r\n");
      out.write("                                <span class=\"glyphicon glyphicon-search\"></span> ");
      if (_jspx_meth_fmt_message_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                             </p>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <p style=\"color: white; font-size: small; margin-top: 20px;\">\r\n");
      out.write("                            <span class=\"glyphicon glyphicon-user\"></span> ");
      if (_jspx_meth_fmt_message_2(_jspx_page_context))
        return;
      out.write(':');
      out.write(' ');
      if (_jspx_meth_c_out_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                        </p>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item\" style=\"margin-left:5px; margin-top: 15px;\">\r\n");
      out.write("                        <div class=\"dropdown\">\r\n");
      out.write("                                <button type=\"button\" class=\"btn dropdown-toggle btn_salir\" data-toggle=\"dropdown\"  style=\"color: white; font-size: large; background-color: transparent; box-shadow: 0px !important;\">\r\n");
      out.write("                                        \r\n");
      out.write("                                </button>\r\n");
      out.write("                                <div class=\"dropdown-menu dropdown-menu-right\">\r\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\"><h5>");
      if (_jspx_meth_fmt_message_3(_jspx_page_context))
        return;
      out.write("</h5></a>\r\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\"><h5>");
      if (_jspx_meth_fmt_message_4(_jspx_page_context))
        return;
      out.write("</h5></a>\r\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"Check_Logout.jsp\"><h5>");
      if (_jspx_meth_fmt_message_5(_jspx_page_context))
        return;
      out.write("</h5></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                              </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </header>\r\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--contenedor-->\n");
      out.write("        <form name=\"datos\" role=\"form\" action=\"Consultas_Empleado.jsp\" method=\"POST\" accept-charset=\"ISO-8859-1\">\n");
      out.write("            <div style=\"width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;\">\n");
      out.write("\n");
      out.write("                <a href=\"menu_admin.jsp\" class=\"btn btn-info\" role=\"button\" id=\"regresar\">\n");
      out.write("                    <img alt=\"Regresar\" width=\"40px\" height=\"30px\" onmouseout=\"this.src = 'imagenes/flecha-de-deshacer.png';\" onmouseover=\"this.src = 'imagenes/flecha_azul.png';\" src=\"imagenes/flecha-de-deshacer.png\"/>\n");
      out.write("                </a>\n");
      out.write("\n");
      out.write("                <div style=\"width:32%; margin:0 auto;\">\n");
      out.write("                    <h1 style=\"text-align:center;\"><b>Estatus de Usuario</b></h1>\n");
      out.write("                    <hr style=\"border:2px solid grey;\">\n");
      out.write("                    <br>\n");
      out.write("\n");
      out.write("                    <h4 style=\"text-align:center;\"><span><b>Información Personal</b></span></h4>\n");
      out.write("                    <br>\n");
      out.write("                    <table style=\"border-collapse: separate; border-spacing: 10px 5px;\">\n");
      out.write("                        <tr class=\"fila_tabla\">\n");
      out.write("                            <td>\n");
      out.write("                                <span class=\"input-group-addon columna_icono\"><i class=\"material-icons\" style=\"font-size:18px\">assignment_ind</i></span>\n");
      out.write("                            </td>\n");
      out.write("                            <td align=\"\">\n");
      out.write("                                <b>ID:</b>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <b>");
      if (_jspx_meth_c_out_1(_jspx_page_context))
        return;
      out.write("</b>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"fila_tabla\">\n");
      out.write("                            <td>\n");
      out.write("                                <span class=\"input-group-addon columna_icono\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("                            </td>\n");
      out.write("                            <td align=\"\">\n");
      out.write("                                <b>Usuario:</b>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <b> ");
      if (_jspx_meth_c_out_2(_jspx_page_context))
        return;
      out.write("</b>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"fila_tabla\">\n");
      out.write("                            <td>\n");
      out.write("                                <span class=\"input-group-addon columna_icono\"><i class=\"glyphicon glyphicon-ok-sign\"></i></span>\n");
      out.write("                            </td>\n");
      out.write("                            <td align=\"\">\n");
      out.write("                                <b>Estado:</b>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"fila_tabla\">\n");
      out.write("                            <td>\n");
      out.write("                                <span class=\"input-group-addon columna_icono\"><i class=\"fa fa-group\" style=\"font-size:18px\"></i></span>\n");
      out.write("                            </td>\n");
      out.write("                            <td align=\"\" >\n");
      out.write("                                <b>Rol:</b>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <b>");
      if (_jspx_meth_c_out_3(_jspx_page_context))
        return;
      out.write("</b>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"fila_tabla\">\n");
      out.write("                            <td>\n");
      out.write("                                <span class=\"input-group-addon columna_icono\"><i class=\"glyphicon glyphicon-usd\"></i></span>\n");
      out.write("                            </td>\n");
      out.write("                            <td align=\"\" >\n");
      out.write("                                <b>Multa:</b>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <b>");
      if (_jspx_meth_c_out_4(_jspx_page_context))
        return;
      out.write("</b>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"panel-group\" id=\"accordion\" style=\"width:100%; margin:0 auto;\">\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse_1\" style=\"text-decoration: none;\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            <h4 class=\"panel-title\" style=\"text-align:center;color:black;\">\n");
      out.write("                                <b>Préstamos</b>\n");
      out.write("                            </h4>\n");
      out.write("                        </div>\n");
      out.write("                        </a>\n");
      out.write("                        <div id=\"collapse_1\" class=\"panel-collapse collapse\">\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <table id=\"tabla_registro\" class=\"table table-striped table-hover table-bordered\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td align=\"center\"><b>Item</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Material</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Estado</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Ubicación</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Multa</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Prestado</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Devuelto</b></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse_2\" style=\"text-decoration: none;\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            <h4 class=\"panel-title\" style=\"text-align:center;color:black;\">\n");
      out.write("                                <b>Materiales Reservados</b>\n");
      out.write("                            </h4>\n");
      out.write("                        </div>\n");
      out.write("                        </a>\n");
      out.write("                        <div id=\"collapse_2\" class=\"panel-collapse collapse\">\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <table id=\"tabla_registro\" class=\"table table-striped table-hover table-bordered\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td align=\"center\"><b>Item</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Material</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Estado</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Ubicación</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Fecha de Reserva</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Fecha de Expiración</b></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse_3\" style=\"text-decoration: none;\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            <h4 class=\"panel-title\" style=\"text-align:center;color:black;\">\n");
      out.write("                                <b>Historial de Préstamos</b>\n");
      out.write("                            </h4>\n");
      out.write("                        </div>\n");
      out.write("                        </a>\n");
      out.write("                        <div id=\"collapse_3\" class=\"panel-collapse collapse\">\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <table id=\"tabla_registro\" class=\"table table-striped table-hover table-bordered\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td align=\"center\"><b>Item</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Material</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Prestado</b></td>\n");
      out.write("                                            <td align=\"center\"><b>Devuelto</b></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <br>\n");
      out.write("                 \n");
      out.write("            </div>                        \n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <!--codigo del footer-->\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer style=\"margin-top: 20px;\">\r\n");
      out.write("    <div style=\"width: 100%; text-align: center;text-decoration: none; color: white;\">\r\n");
      out.write("        <a href=\"");
      out.print(request.getRequestURL());
      out.write("?locale=en\"><b>");
      if (_jspx_meth_fmt_message_6(_jspx_page_context))
        return;
      out.write("</b></a>\r\n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("        <a href=\"");
      out.print(request.getRequestURL());
      out.write("?locale=es\"><b>");
      if (_jspx_meth_fmt_message_7(_jspx_page_context))
        return;
      out.write("</b></a>\r\n");
      out.write("    </div>\r\n");
      out.write("    <br>\r\n");
      out.write("    <h5>");
      if (_jspx_meth_fmt_message_8(_jspx_page_context))
        return;
      out.write("</h5>\r\n");
      out.write("</footer>\r\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_out_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_0 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_0.setPageContext(_jspx_page_context);
    _jspx_th_c_out_0.setParent(null);
    _jspx_th_c_out_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c_sesion.user}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_0 = _jspx_th_c_out_0.doStartTag();
    if (_jspx_th_c_out_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
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

  private boolean _jspx_meth_c_out_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_1 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_1.setPageContext(_jspx_page_context);
    _jspx_th_c_out_1.setParent(null);
    _jspx_th_c_out_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_inf.rows[0].idUsuarios}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_1 = _jspx_th_c_out_1.doStartTag();
    if (_jspx_th_c_out_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
    return false;
  }

  private boolean _jspx_meth_c_out_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_2 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_2.setPageContext(_jspx_page_context);
    _jspx_th_c_out_2.setParent(null);
    _jspx_th_c_out_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_inf.rows[0].Usuario}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_2 = _jspx_th_c_out_2.doStartTag();
    if (_jspx_th_c_out_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
    return false;
  }

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_inf.rows[0].Activo==1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    <b>Activo</b>\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_inf.rows[0].Activo==0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    <b>Inactivo</b>\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_out_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_3 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_3.setPageContext(_jspx_page_context);
    _jspx_th_c_out_3.setParent(null);
    _jspx_th_c_out_3.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_inf.rows[0].Nombre}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_3 = _jspx_th_c_out_3.doStartTag();
    if (_jspx_th_c_out_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_3);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_3);
    return false;
  }

  private boolean _jspx_meth_c_out_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_4 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_4.setPageContext(_jspx_page_context);
    _jspx_th_c_out_4.setParent(null);
    _jspx_th_c_out_4.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_multa.rows[0].Multa}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_4 = _jspx_th_c_out_4.doStartTag();
    if (_jspx_th_c_out_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_4);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_4);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("name");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_pre.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <tr>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_6((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_7((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_8((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_9((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_10((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td> \n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_11((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</td> \n");
          out.write("                                            </tr>\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_out_5(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_5 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_5.setPageContext(_jspx_page_context);
    _jspx_th_c_out_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_5.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Item}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_5 = _jspx_th_c_out_5.doStartTag();
    if (_jspx_th_c_out_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_5);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_5);
    return false;
  }

  private boolean _jspx_meth_c_out_6(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_6 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_6.setPageContext(_jspx_page_context);
    _jspx_th_c_out_6.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_6.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Titulo}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_6 = _jspx_th_c_out_6.doStartTag();
    if (_jspx_th_c_out_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_6);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_6);
    return false;
  }

  private boolean _jspx_meth_c_out_7(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_7 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_7.setPageContext(_jspx_page_context);
    _jspx_th_c_out_7.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_7.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.EstadoMaterial}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_7 = _jspx_th_c_out_7.doStartTag();
    if (_jspx_th_c_out_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_7);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_7);
    return false;
  }

  private boolean _jspx_meth_c_out_8(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_8 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_8.setPageContext(_jspx_page_context);
    _jspx_th_c_out_8.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_8.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Ubicacion}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_8 = _jspx_th_c_out_8.doStartTag();
    if (_jspx_th_c_out_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_8);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_8);
    return false;
  }

  private boolean _jspx_meth_c_out_9(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_9 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_9.setPageContext(_jspx_page_context);
    _jspx_th_c_out_9.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_9.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Multa}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_9 = _jspx_th_c_out_9.doStartTag();
    if (_jspx_th_c_out_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_9);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_9);
    return false;
  }

  private boolean _jspx_meth_c_out_10(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_10 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_10.setPageContext(_jspx_page_context);
    _jspx_th_c_out_10.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_10.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.F_Prestamo}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_10 = _jspx_th_c_out_10.doStartTag();
    if (_jspx_th_c_out_10.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_10);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_10);
    return false;
  }

  private boolean _jspx_meth_c_out_11(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_11 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_11.setPageContext(_jspx_page_context);
    _jspx_th_c_out_11.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_11.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.F_Devuelto}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_11 = _jspx_th_c_out_11.doStartTag();
    if (_jspx_th_c_out_11.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_11);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_11);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setVar("name");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_re.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <tr>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_12((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_13((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_14((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_15((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_16((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_17((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("</td>\n");
          out.write("                                            </tr>\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_out_12(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_12 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_12.setPageContext(_jspx_page_context);
    _jspx_th_c_out_12.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_out_12.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Item}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_12 = _jspx_th_c_out_12.doStartTag();
    if (_jspx_th_c_out_12.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_12);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_12);
    return false;
  }

  private boolean _jspx_meth_c_out_13(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_13 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_13.setPageContext(_jspx_page_context);
    _jspx_th_c_out_13.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_out_13.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Titulo}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_13 = _jspx_th_c_out_13.doStartTag();
    if (_jspx_th_c_out_13.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_13);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_13);
    return false;
  }

  private boolean _jspx_meth_c_out_14(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_14 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_14.setPageContext(_jspx_page_context);
    _jspx_th_c_out_14.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_out_14.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.EstadoMaterial}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_14 = _jspx_th_c_out_14.doStartTag();
    if (_jspx_th_c_out_14.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_14);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_14);
    return false;
  }

  private boolean _jspx_meth_c_out_15(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_15 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_15.setPageContext(_jspx_page_context);
    _jspx_th_c_out_15.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_out_15.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Ubicacion}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_15 = _jspx_th_c_out_15.doStartTag();
    if (_jspx_th_c_out_15.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_15);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_15);
    return false;
  }

  private boolean _jspx_meth_c_out_16(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_16 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_16.setPageContext(_jspx_page_context);
    _jspx_th_c_out_16.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_out_16.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.F_Inicio}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_16 = _jspx_th_c_out_16.doStartTag();
    if (_jspx_th_c_out_16.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_16);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_16);
    return false;
  }

  private boolean _jspx_meth_c_out_17(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_17 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_17.setPageContext(_jspx_page_context);
    _jspx_th_c_out_17.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_out_17.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.F_Final}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_17 = _jspx_th_c_out_17.doStartTag();
    if (_jspx_th_c_out_17.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_17);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_17);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setVar("name");
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${consulta_his_pre.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <tr>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_18((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_19((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_20((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("</td>\n");
          out.write("                                                <td align=\"center\">");
          if (_jspx_meth_c_out_21((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("</td>\n");
          out.write("                                            </tr>\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_out_18(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_18 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_18.setPageContext(_jspx_page_context);
    _jspx_th_c_out_18.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_out_18.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Item}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_18 = _jspx_th_c_out_18.doStartTag();
    if (_jspx_th_c_out_18.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_18);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_18);
    return false;
  }

  private boolean _jspx_meth_c_out_19(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_19 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_19.setPageContext(_jspx_page_context);
    _jspx_th_c_out_19.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_out_19.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.Titulo}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_19 = _jspx_th_c_out_19.doStartTag();
    if (_jspx_th_c_out_19.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_19);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_19);
    return false;
  }

  private boolean _jspx_meth_c_out_20(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_20 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_20.setPageContext(_jspx_page_context);
    _jspx_th_c_out_20.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_out_20.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.F_Prestamo}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_20 = _jspx_th_c_out_20.doStartTag();
    if (_jspx_th_c_out_20.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_20);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_20);
    return false;
  }

  private boolean _jspx_meth_c_out_21(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_21 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_21.setPageContext(_jspx_page_context);
    _jspx_th_c_out_21.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_out_21.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.F_Devuelto}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_21 = _jspx_th_c_out_21.doStartTag();
    if (_jspx_th_c_out_21.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_21);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_21);
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
