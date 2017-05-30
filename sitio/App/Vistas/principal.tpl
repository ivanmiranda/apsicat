<section id="recent-works">
    <div class="container">
        <div class="center wow fadeInDown">
            <h2>Lectura de apoyo</h2>
            <p class="lead">En nuestro blog compartimos información que esperamos pueda ser útil sobre diversos temas.<br/>Estas son las últimas publicaciones.</p>
        </div>
        <div class="row">
            <ciclo articulos>
            <div class="col-xs-12 col-sm-4 col-md-3">
                <div class="recent-work-wrap">
                    <img class="img-responsive" src="{BASE_URL}html/images/blog/prev_{imagen}" alt="">
                    <div class="overlay">
                        <div class="recent-work-inner">
                            <h3><a href="{BASE_URL}blog/leer/articulo/{url}">{titulo}</a> </h3>
                            <p>{contenido}</p>
                            <a class="preview" href="{BASE_URL}blog/leer/arituclo/{url}"><i class="fa fa-eye"></i>Leer</a>
                        </div> 
                    </div>
                </div>
            </div>
            </ciclo articulos>
        </div><!--/.row-->
        <?php } ?>
    </div><!--/.container-->
</section><!--/#recent-works-->