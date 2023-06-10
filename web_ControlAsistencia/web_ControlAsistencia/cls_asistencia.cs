using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace web_ControlAsistencia
{
    public class cls_asistencia
    {
        private string str_nombre;
        private string str_edad;
        private string str_comida; // guarda la pabla si o no
        private string str_mensaje;

        cls_agregarAsistencia  obj_Registrar = new cls_agregarAsistencia();

        public void fnt_agregar(string str_nombre, string str_edad, string str_comida)
        {

            if (Convert.ToInt16(str_edad) >= 18) {

                if (str_nombre != "" && str_comida != "") {
                    obj_Registrar.fnt_crear(str_nombre, str_edad, str_comida);
                    str_mensaje = obj_Registrar.getMensaje();

                }
                else {
                    str_mensaje = "Debes ingresa todos los datos de registro";
                }
                
            }
            else { str_mensaje = "No cumple con la edad adecuada"; }
        }
        public string getNombre() { return this.str_nombre; }
        public string get_Edad() {  return this.str_edad; }
        public string getstr_comida() {  return this.str_comida; } 
        public string getstr_mensaje() {  return this.str_mensaje; }
    }
}