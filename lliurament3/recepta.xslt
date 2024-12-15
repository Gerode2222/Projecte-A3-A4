<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="../css/receptaStyle.css" />
            </head>
            <header>
                <img src="../imatges/Logo-Delicias.png" alt="Logo" />
                <div>
                    <a href="../index.html">INICIO</a>
                    <a href="../sobremi/sobreMi.html">SOBRE MÍ</a>
                    <a href="../llistat/llistat.html">RECETAS</a>
                    <a href="../formulari/formulari.html">CONTACTO</a>
                    <a href="../otros/otros.html">OTRAS COSAS</a>
                </div>
            </header>
            <body>
                <xsl:for-each select="recetas/receta">
                <h1>
                    <xsl:value-of select="name" />
                </h1>
                <main>
                <img><xsl:attribute name="src">
                    <xsl:value-of select="imagen" />
                </xsl:attribute></img>
                    <div class="ingredientes" id="receta-{generate-id()}">
                        <h1>Ingredientes:</h1>
                        <ul>
                            <xsl:for-each select="ingredientes/ingrediente">
                                <li>
                                    <xsl:value-of select="." />
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>    
                    <div class="pasos">
                        <h1 id="pasos">Pasos:</h1>
                        <ol>
                            <xsl:for-each select="pasos/paso">
                                <li>
                                    <xsl:value-of select="." />
                                </li>
                            </xsl:for-each>
                        </ol>
                    </div>
                </main>
                </xsl:for-each>
            </body>
            <footer>
                <div>
                    <a href="https://www.facebook.com/?locale=ca_ES">FACEBOOK</a>
                    <a href="https://x.com/i/flow/login">TWITTER</a>
                    <a href="https://www.instagram.com/accounts/login/">INSTAGRAM</a>
                    <a href="https://es.pinterest.com/login/">PINTEREST</a>
                    <a href="https://workspace.google.com/intl/es/gmail/">EMAIL</a>
                    <a href="https://ca.wikipedia.org/wiki/RSS">RSS</a>
                </div>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>