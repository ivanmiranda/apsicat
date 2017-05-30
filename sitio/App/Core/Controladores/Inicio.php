<?php 
class Controladores_Inicio extends Sfphp_Controlador { 
	public function inicio(){
		$_articulos = $this->modeloArticulos->getRandom(8);
		foreach ($_articulos as $key => $_articulo) {
			$_articulos[$key]['url'] = urlencode(strtolower(str_replace(" ", "-", $_articulo['titulo'])));
		}
	//Ultimas entradas del blog
		$this->_vista->articulos = $_articulos;
	//Salida
		$this->_vista->dibuja("header");
		$this->_vista->dibuja("principal");
		$this->_vista->dibuja("footer");
	}
}