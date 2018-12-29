<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/faktura_vat">
<html>
    <head>
        <title><xsl:value-of select="numer_faktury"/></title>
    </head>
    <body>
        <h1 style="margin-left: 100px;"><xsl:value-of select="numer_faktury"/></h1>
        <p style="margin-left: 100px;">
        <br/>
        <table style="display: inline-block;">
            <tr><th>Wystawca:</th></tr>
            <xsl:for-each select="wystawca/podmiot">
                <tr>
                    <tr><td><xsl:value-of select="nazwa"/></td></tr>
                    <tr><td><xsl:value-of select="ulica"/></td></tr>
                    <tr><td><xsl:value-of select="miejscowosc"/></td></tr>
                    <tr><td><xsl:value-of select="nip"/></td></tr>
                </tr>
            </xsl:for-each>
        </table>
        <table style="display: inline-block; margin-left: 35px;">
            <tr><th>Nabywca:</th></tr>
            <xsl:for-each select="nabywca/podmiot">
                <tr>
                    <tr><td><xsl:value-of select="nazwa"/></td></tr>
                    <tr><td><xsl:value-of select="ulica"/></td></tr>
                    <tr><td><xsl:value-of select="miejscowosc"/></td></tr>
                    <tr><td><xsl:value-of select="nip"/></td></tr>
                </tr>
            </xsl:for-each>
        </table>
        <table style="display: inline-block; margin-left: 35px;">
            <tr>
                <td>Data wystawienia:</td><td><xsl:value-of select="data_wystawienia"/></td>
            </tr>
            <tr>
                <td>Miejsce wystawienia:</td><td><xsl:value-of select="miejsce_wystawienia"/></td>
            </tr>
            <tr>
                <td>Data sprzedaży:</td><td><xsl:value-of select="data_sprzedazy"/></td>
            </tr>
        </table>
        <br/>
        <br/>
        <br/>
        <table border="1">
            <tr>
                <th>Lp</th>
                <th>Nazwa</th>
                <th>Ilość</th>
                <th>Cena netto</th>
                <th>Kwota netto</th>
                <th>Vat</th>
                <th>Kwota Vat</th>
                <th>Kwota Brutto</th>
            </tr>
            <xsl:for-each select="lista_produktow/produkt">
            <tr>
                <td><xsl:value-of select="lp"/></td>
                <td><xsl:value-of select="nazwa"/></td>
                <td><xsl:value-of select="ilosc"/></td>
                <td><xsl:value-of select="cena_netto"/></td>
                <td><xsl:value-of select="kwota_netto"/></td>
                <td><xsl:value-of select="vat"/></td>
                <td><xsl:value-of select="kwota_vat"/></td>
                <td><xsl:value-of select="kwota_brutto"/></td>
            </tr>
            </xsl:for-each>
            <tr>
                <td colspan="6"></td>
                <td>Razem:</td>
                <td><xsl:value-of select="razem"/></td>
            </tr>
        </table>
        <br/>
        <br/>
        <br/>
        <table style="display: inline-block;">
            <tr>
                <td>
                    <b>Termin płatności:</b>
                </td>
                <td>
                    <xsl:value-of select="termin_platnosci"/>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Sposób zapłaty:</b>
                </td>
                <td>
                    <xsl:value-of select="sposob_zaplaty"/>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Kwota słownie:</b>
                </td>
                <td>
                    <xsl:value-of select="kwota_slownie"/>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Konto:</b>
                </td>
                <td>
                    <xsl:value-of select="konto"/>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Dok. magazynowe:</b>
                </td>
                <td>
                    <xsl:value-of select="dok_mag"/>
                </td>
            </tr>
        </table>
        <br/>
        <br/>
        <table border="0" width="500" height="50">
            <tr>
                <th>Podpis odbiorcy faktury:</th>
                <th>Podpis wydawcy faktury:</th>
            </tr>
        </table>
        </p>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>