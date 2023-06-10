using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_ControlAsistencia
{
    public partial class frm_registro : System.Web.UI.Page
    {
        cls_consultarAsistencia obj_consultar = new cls_consultarAsistencia();

        protected void Page_Load(object sender, EventArgs e)
        {
            fnt_consultar();
        }
        public void fnt_consultar() 
        {
            obj_consultar.fnt_consultal();
            lbl_contador.Text= Convert.ToString(obj_consultar.getAsistencia());

        }
        protected void btn_Registrar_Click(object sender, EventArgs e)
        {
            cls_asistencia objRegistro = new cls_asistencia();
            objRegistro.fnt_agregar(txt_Nombre.Text, txt_Edad.Text, Convert.ToString(cbx_Comida.SelectedIndex +1));
            lbl_mensaje.Visible = true;
            lbl_mensaje.Text = objRegistro.getstr_mensaje();
            fnt_consultar(); ;
        }
    }
}