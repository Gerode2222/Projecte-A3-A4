<?xml version="1.0" encoding="UTF-8"?>
<xsl-stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
<html>
<head><link rel="stylesheet" href="../css/pastaStyle.css"></link></head>
<body>
    <header>
            <img src="../imatges/Logo-Delicias.png" alt="Logo"/>
            <div>
                <a href="../index.html">INICIO</a>
                <a href="../sobremi/sobreMi.html">SOBRE MÍ</a>
                <a href="../llistat/llistat.html">RECETAS</a>
                <a href="../formulari/formulari.html">CONTACTO</a>
                <a href="../otros/otros.html">OTRAS COSAS</a>
            </div>
    </header>
    <main>
        <img src="{imagen}" alt="Imagen de la receta"/>
        <div>
            <xsl:for-each select="/ingredientes/ingrediente">
                <p><xsl:value-of select=""/></p>
            </xsl:for-each>
        </div>
        <div>
            <xsl:for-each select="/pasos/paso">
                <p></p>
            </xsl:for-each>
        </div>
    </main>
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
</body>
</html>
</xsl:template>
</xsl-stylesheet>