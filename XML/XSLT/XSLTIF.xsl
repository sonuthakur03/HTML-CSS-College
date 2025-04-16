<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/students">
        <html>
            <body>
                <h2>Student List</h2>
                <ul>
                    <xsl:apply-templates select="student"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <li>
            <xsl:value-of select="name"/>
            <xsl:if test="grade &gt;= 50">
                - Passed
            </xsl:if>
        </li>
    </xsl:template>

</xsl:stylesheet>
