<?php 
class Controladores_Info extends Sfphp_Controlador { 
	public function inicio(){
	//Salida
		$this->_vista->dibuja("header_terapia");
		$this->_vista->dibuja("infoterapiaindividual");
		$this->_vista->dibuja("footer");
	}
	public function individual(){
	//Salida
		$this->_vista->dibuja("header_terapia");
		$this->_vista->dibuja("infoterapiaindividual");
		$this->_vista->dibuja("footer");
	}
	public function pareja(){
	//Salida
		$this->_vista->dibuja("header_terapia");
		$this->_vista->dibuja("infoterapiapareja");
		$this->_vista->dibuja("footer");
	}
}