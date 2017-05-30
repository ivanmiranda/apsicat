<?php 
class Controladores_Contacto extends Sfphp_Controlador { 
	public function inicio(){
	//Salida
		$this->_vista->dibuja("header_contacto");
		$this->_vista->dibuja("contacto");
		$this->_vista->dibuja("footer");
	}
}