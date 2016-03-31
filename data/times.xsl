<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : times.xsl
    Created on : March 31, 2016, 11:15 AM
    Author     : Emilio
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>times.xsl</title>
            </head>
            <body>
                <xsl:call-template name="timev1"/>
                <br/><br/>
                <xsl:call-template name="timev2"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="timev1">
        <h2>Times Schedule version 1</h2>
        <table border="solid">
            <tr>
                <td style="text-align:center">Day</td>
                <th bgcolor="#9acd32"><xsl:value-of select="week/times/start"/></th>
            </tr>
            <xsl:for-each select="week/times/days">
                <tr>
                    <th bgcolor="#9acd32"><xsl:value-of select="./@type"/></th>
                    <td>
                        ACIT <xsl:value-of select="./course/id"/><br/>
                        <xsl:value-of select="./course/name"/><br/>
                        CRN: <xsl:value-of select="./course/crn"/><br/>
                        <xsl:value-of select="./course/type"/><br/>
                        <xsl:value-of select="./course/building"/>-<xsl:value-of select="./course/room"/><br/>
                        <xsl:value-of select="./course/instructor"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    
    <xsl:template name="timev2">
        <h2>Times Schedule version 2</h2>
        <table border="solid">
            <tr>
                <td style="text-align:center">Day</td>
                <xsl:for-each select="week/times/days">
                    <th bgcolor="#9acd32"><xsl:value-of select="./@type"/></th>
                </xsl:for-each>
            </tr>
                <tr>
                    <th bgcolor="#9acd32"><xsl:value-of select="week/times/start"/></th>
                    <xsl:for-each select="week/times/days">
                        <td>
                            ACIT <xsl:value-of select="./course/id"/><br/>
                            <xsl:value-of select="./course/name"/><br/>
                            CRN: <xsl:value-of select="./course/crn"/><br/>
                            <xsl:value-of select="./course/type"/><br/>
                            <xsl:value-of select="./course/building"/>-<xsl:value-of select="./course/room"/><br/>
                            <xsl:value-of select="./course/instructor"/>
                        </td>
                    </xsl:for-each>
                </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>
