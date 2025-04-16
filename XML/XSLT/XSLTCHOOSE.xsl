<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/students">
        <html>
            <head>
                <title>Student Results</title>
            </head>
            <body>
                <h2>Student Results</h2>
                <ul>
                    <xsl:apply-templates select="student"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <li>
            <xsl:value-of select="name"/> - 
            <xsl:choose>
                <xsl:when test="grade &gt;= 80">Excellent</xsl:when>
                <xsl:when test="grade &gt;= 50">Passed</xsl:when>
                <xsl:otherwise>Failed</xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>

</xsl:stylesheet>
