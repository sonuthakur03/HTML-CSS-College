<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/students">
        <html>
            <head>
                <title>Student List</title>
            </head>
            <body>
                <h2>Student List</h2>
                <ul>
                    <xsl:for-each select="student">
                        <li>
                            Name: <xsl:value-of select="name"/> -
                            Grade: <xsl:value-of select="grade"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
