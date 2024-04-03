<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        
        <html lang="en">
            
            <head>
                <title>Kiabi</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
            </head>
            
            <body>
                <a name="top"></a>
                <header>
                    <nav class="navbar navbar-expand-sm navbar-light bg-light ">
                        <div class="container ">
                            <a class="navbar-brand " href="#"><img src="img/logo.png" class="img-fluid" width="150px" alt=""/></a>
                            <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="collapsibleNavId">
                                <ul class="navbar-nav mx-auto mt-2 mt-lg-0 ">
                                    <xsl:for-each select="kiabi/categoria">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#{@nombre}"><xsl:value-of select="@nombre"/></a>
                                        </li> 
                                    </xsl:for-each>
                                    
                                    
                                    
                                </ul>
                                <div class="d-flex">
                                    <div class="text-center me-3">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <p> Tiendas</p>
                                    </div>
                                    <div class="text-center me-3">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <p> Cuenta</p>
                                    </div>
                                    <div class="text-center me-3">
                                        <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <p> Cesta</p>
                                    </div>
                                </div>
                                
                                
                            </div>
                        </div>
                    </nav>
                    
                </header>
                <main class="container">
                    <section class="mt-4">
                        <div class="row justify-content-center">
                            <xsl:for-each select="kiabi/categoria">
                                <div class="col-6 col-sm-4 col-md-2 text-center mt-2  ">
                                    <a href="#{@nombre}" class="text-decoration-none text-dark">
                                    <img class=" img-fluid rounded-circle " width="100px"
                                         src="{foto}"/>
                                    
                                    <div class="fs-6"><xsl:value-of select="@nombre"/></div>
                                    </a>
                                </div>
                            </xsl:for-each>
                            
                        </div>
                    </section>
                    
                    <section>
                        <xsl:for-each select="kiabi/categoria">
                            <a name="{@nombre}"/>
                            <h4 class="card-title mb-4 "><xsl:value-of select="@nombre"/></h4>
                            <div class="row">
                                <xsl:for-each select="prenda">
                                <xsl:sort select="precio" order="ascending" data-type="number">
                                    
                                </xsl:sort>
                                    <div class="col-md-6 col-lg-4 col-xxl-3 mb-3">
                                        <div class="card h-100">
                                            <img class="card-img-top img-fluid "
                                                 src="{foto}"
                                                 alt="Title" />
                                            <div class="card-body">
                                                <p><xsl:value-of select="producto"/></p>
                                                <p class="card-text fw-bold"><xsl:value-of select="precio" />&euro;</p>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                                
                                
                            </div>
                        </xsl:for-each>
                        
                    </section>
                    
                </main>
                <footer>
                    
                    <a href="#top"><i class="fa fa-arrow-circle-o-up fa-3x position-fixed end-0 bottom-0 me-3 mb-3"
                                          aria-hidden="true"></i></a>
                </footer>
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>