<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/students">
        <html>
            <head>
                <title>Sorted Students</title>
            </head>
            <body>
                <h2>Sorted Students</h2>
                <ul>
                    <xsl:apply-templates select="student">
                        <xsl:sort select="grade" data-type="number" order="descending"/>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <li>
            Student: <xsl:value-of select="name"/> -
            Grade: <xsl:value-of select="grade"/>
        </li>
    </xsl:template>

</xsl:stylesheet>
