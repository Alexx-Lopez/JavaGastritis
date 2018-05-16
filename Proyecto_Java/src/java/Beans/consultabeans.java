/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;


/**
 *
 * @author darv_
 */

public class consultabeans {
    private String txt_titulo;
    private String txt_autor;
    private int txt_codigo_material;
   
   public String getTxt_titulo() {
        return txt_titulo;
    }

    /**
     * @param txt_titulo the txt_rol to set
     */
    public void setTxt_titulo(String txt_titulo) {
        this.txt_titulo = txt_titulo;
    }
    
     public String getTxt_autor() {
        return txt_autor;
    }

    /**
     * @param txt_autor the txt_rol to set
     */
    public void setTxt_autor(String txt_autor) {
        this.txt_autor = txt_autor;
    }
    
    
    
       public int getTxt_codigo_material() {
        return txt_codigo_material;
    }

    /**
     * @param txt_codigo_material the txt_rol to set
     */
    public void setTxt_codigo_material(int txt_codigo_material) {
        this.txt_codigo_material = txt_codigo_material;
    }
  

}
