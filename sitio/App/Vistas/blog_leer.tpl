<section id="blog" class="container">
    <div class="blog">
        <div class="row">
            <div class="col-md-8">
                <ciclo reciente>
                    <div class="blog-item wow fadeInDown">
                        <div class="row">
                            <div class="col-xs-12 col-sm-2 text-center">
                                <div class="entry-meta">
                                    <span id="publish_date">{fecha}</span>
                                    <span><i class="fa fa-user"></i> <a href="#">Redacción</a></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-10 blog-content">
                            	<h2>{titulo}</h2>
                                <img class="img-responsive img-blog" src="{BASE_URL}html/images/blog/{imagen}" width="100%" alt="" />
                                {contenido}
                                <div class="post-tags">
                                    <strong>Publicado en: </strong>{etiquetas}
                                </div>
                            </div>
                        </div>
                    </div><!--/.blog-item-->
                    
                    <div class="media reply_section wow fadeInDown">
                        <div class="pull-left post_reply text-center">
                            <ul>
                                <li><a href="https://twitter.com/share?text=APSICAT - {titulo}" data-text="{titulo}" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="http://www.facebook.com/share.php?u={BASE_URL}blog/leer/articulo/{url}&amp;t=APSICAT - {titulo}" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://plus.google.com/share?url={BASE_URL}blog/leer/articulo/{url}" target="_blank"><i class="fa fa-google-plus"></i> </a></li>
                            </ul>
                        </div>
                        <div class="media-body post_reply_content">
                            <h3>Te gusta este contenido?</h3>
                            <p class="lead">Compartelo en tus redes sociales.
                        </div>
                    </div> 
                </ciclo reciente>
            </div><!--/.col-md-8-->

            <aside class="col-md-4">
            	<!--
                <div class="widget search">
                    <form role="form">
                            <input type="text" class="form-control search_box" autocomplete="off" placeholder="Buscar contenido">
                    </form>
                </div>-->
				
		<div class="widget categories wow fadeInDown">
                    <h3>Publicaciones relacionadas</h3>
                    <div class="row">
                    	<div class="col-sm-12">
                            <ciclo relacionados>
                        	<div class="single_comments">
                        		<a href="{BASE_URL}blog/leer/articulo/{url}">
                                    <img class="img-responsive img-blog" src="{BASE_URL}html/images/blog/min_{imagen}" width="50px" style="border-radius:15px;" alt="{titulo}" />
                        		<h4><a href="{BASE_URL}blog/leer/articulo/{url}">{titulo}</a></h4>
								<p>{contenido}...</p>
							</div>
							</ciclo relacionados>
                        </div>
                    </div>                     
                </div>

		<div class="widget categories wow fadeInDown">
                    <h3>Paga tu sesi&oacute;n en l&iacute;nea</h3>
                    <div class="row">
                        <div class="col-sm-12">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="7UQVT6LN8EVSS">
<table>
<tr><td><input type="hidden" name="on0" value="Precio acordado">Precio acordado</td></tr><tr><td><select name="os0">
	<option value="A">A $350.00 MXN</option>
	<option value="B">B $400.00 MXN</option>
	<option value="C">C $500.00 MXN</option>
	<option value="D">D $600.00 MXN</option>
	<option value="E">E $700.00 MXN</option>
	<option value="F">F $800.00 MXN</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="MXN">
<input type="image" src="https://www.paypalobjects.com/es_XC/MX/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal, la forma más segura y rápida de pagar en línea.">
<img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
</form>
</div>
</div>
</div>

		<div class="widget tags wow fadeInDown">
			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- Anuncios blog apsicat -->
			<ins class="adsbygoogle"
			     style="display:inline-block;width:728px;height:90px"
			     data-ad-client="ca-pub-2897824327351566"
			     data-ad-slot="6650608937"></ins>
			<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
                </div>		
				
            </aside>     
        </div><!--/.row-->
     </div><!--/.blog-->
</section><!--/#blog-->
