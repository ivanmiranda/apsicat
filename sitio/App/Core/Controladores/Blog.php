<?php 
class Controladores_Blog extends Sfphp_Controlador { 
	public function inicio() {
		$_reciente = $this->modeloArticulos->getLast();
		$etiquetas = explode(" ",$_reciente[0]['etiquetas']);;
		$_html_etiquetas = "";
		foreach ($etiquetas as $etiqueta) {
			$_html_etiquetas .= "<a class=\"etiquetas\" href=\"".BASE_URL."blog/etiquetas/etiqueta/".$etiqueta."\">".$etiqueta."</a>&nbsp;";
		}
		$_tags = explode(" ", $_reciente[0]['etiquetas']);
		$_tags = implode("%' OR etiquetas LIKE '%", $_tags);
		$_reciente[0]['etiquetas'] = $_html_etiquetas;
		$_reciente[0]['url'] = urlencode(strtolower(str_replace(" ", "-", $_reciente[0]['titulo'])));
		$_reciente[0]['intro'] = substr(strip_tags($_reciente[0]['contenido']),0,140);
		$this->_vista->reciente = $_reciente;
		$this->_vista->tags = $this->tags();
		$_relacionados = $this->modeloArticulos->getRelated('etiquetas LIKE \'%'.$_tags.'%\'');
		foreach ($_relacionados as $key => $_articulo) {
			$_relacionados[$key]['url'] = urlencode(strtolower(str_replace(" ", "-", $_articulo['titulo'])));
		}
		$this->_vista->relacionados = $_relacionados;
		$this->_vista->dibuja("header_blog");
		$this->_vista->dibuja("blog_leer");
		$this->_vista->dibuja("footer");
	}

	public function etiquetas() {
		$_parametros = Sfphp_Peticion::get('_parametros');
		$this->_vista->etiqueta = $_parametros['etiqueta'];
		$_articulos = $this->modeloArticulos->getByTag($_parametros['etiqueta']);
		foreach ($_articulos as $key => $_articulo) {
			$_articulos[$key]['url'] = urlencode(strtolower(str_replace(" ", "-", $_articulo['titulo'])));
			$_articulos[$key]['intro'] = substr(strip_tags($_articulo['contenido']),0,140);
		}
		$this->_vista->articulos = $_articulos;
		$etiquetas = $this->tags();
		$_html_etiquetas = "";
		foreach ($etiquetas as $etiqueta) {
			$_html_etiquetas .= "<a class=\"etiquetas\" href=\"".BASE_URL."blog/etiquetas/etiqueta/".$etiqueta['tag']."\">".$etiqueta['tag']."</a>&nbsp;";
		}
		$this->_vista->etiquetas = $_html_etiquetas;
		$this->_vista->dibuja("header_servicios");
		$this->_vista->dibuja("blog_historico");
		$this->_vista->dibuja("footer");
	}

	public function leer() {
		$_parametros = Sfphp_Peticion::get('_parametros');
	//Soporte para ligas ya publicadas
		$_llave = array_keys($_parametros);
		if(intval($_parametros['articulo']) == 0) {
			$_reciente = $this->modeloArticulos->getByTitle(str_replace("-", " ", urldecode($_parametros['articulo'])));
		} else {
			$_reciente = $this->modeloArticulos->get($_parametros['articulo']);
		}
		$etiquetas = explode(" ",$_reciente[0]['etiquetas']);;
		$_html_etiquetas = "";
		foreach ($etiquetas as $etiqueta) {
			$_html_etiquetas .= "<a class=\"etiquetas\" href=\"".BASE_URL."blog/etiquetas/etiqueta/".$etiqueta."\">".$etiqueta."</a>&nbsp;";
		}
		$_tags = explode(" ", $_reciente[0]['etiquetas']);
		$_tags = implode("%' OR etiquetas LIKE '%", $_tags);
		$_reciente[0]['etiquetas'] = $_html_etiquetas;
		$_reciente[0]['url'] = urlencode(strtolower(str_replace(" ", "-", $_reciente[0]['titulo'])));
		$_reciente[0]['intro'] = substr(strip_tags($_reciente[0]['contenido']),0,140);
		$this->_vista->reciente = $_reciente;
		$this->_vista->tags = $this->tags();
		$_relacionados = $this->modeloArticulos->getRelated('etiquetas LIKE \'%'.$_tags.'%\'');
		foreach ($_relacionados as $key => $_articulo) {
			$_relacionados[$key]['url'] = urlencode(strtolower(str_replace(" ", "-", $_articulo['titulo'])));
		}
		$this->_vista->relacionados = $_relacionados;
		$this->_vista->dibuja("header_blog");
		$this->_vista->dibuja("blog_leer");
		$this->_vista->dibuja("footer");
	}

	private function tags() {
		$_tags = array_shift($this->modeloArticulos->getTags());
		$_tags = explode(" ", $_tags['etiquetas']);
		$_tags = array_unique($_tags);
		$_respuesta = array();
		foreach ($_tags as $_tag) {
			array_push($_respuesta, array("tag"=>$_tag));
		}
		return $_respuesta;
	}

	private function mes($mes) {
		$meses = array("Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dic");
		return $meses[intval($mes)-1];
	}
}