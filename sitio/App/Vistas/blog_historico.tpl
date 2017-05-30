<section id="blog" class="container">
    <div class="blog">
        <div class="row">
        	<div class="center wow fadeInDown">
	            <h2>Lectura de apoyo sobre <i>{etiqueta}</i></h2>
	        </div>
            <div class="col-md-8">
            	<ciclo articulos>
                <div class="blog-item wow fadeInDown">
                    <div class="row">
                        <div class="col-xs-4 col-sm-2 text-center">
                            <div class="entry-meta">
                                <span id="publish_date">{fecha}</span>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-10 blog-content">
                        	<a href="{BASE_URL}blog/leer/articulo/{url}" class="image">
                                <img class="img-responsive img-blog" src="{BASE_URL}html/images/blog/min_{imagen}" width="150px" style="float:left;border-radius:15px;padding:10px" alt="" />
                        	<h4><a href="{BASE_URL}blog/leer/articulo/{url}">{titulo}</a></h4>
                            {intro}...
                        </div>
                    </div>
                </div><!--/.blog-item-->
                </ciclo articulos>
            </div><!--/.col-md-8-->

            <aside class="col-md-4 wow fadeInDown">
            	<!--
                <div class="widget search">
                    <form role="form">
                            <input type="text" class="form-control search_box" autocomplete="off" placeholder="Buscar contenido">
                    </form>
                </div>-->

                <div class="widget tags">
                    <h3>Categorías</h3>
                    <ul class="tag-cloud">
                    	{etiquetas}
                    </ul>
                </div><!--/.tags-->
				
				<!--
				<div class="widget archieve">
                    <h3>Archieve</h3>
                    <div class="row">
                        <div class="col-sm-12">
                            <ul class="blog_archieve">
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> December 2013 <span class="pull-right">(97)</span></a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> November 2013 <span class="pull-right">(32)</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> October 2013 <span class="pull-right">(19)</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> September 2013 <span class="pull-right">(08)</a></li>
                            </ul>
                        </div>
                    </div>                     
                </div>-->
            </aside>     
        </div><!--/.row-->
     </div><!--/.blog-->
</section><!--/#blog-->
