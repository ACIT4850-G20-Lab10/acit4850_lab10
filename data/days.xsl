<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : days.xsl
    Created on : April 3, 2016, 3:01 PM
    Author     : ziqimiao
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
                <title>days.xsl</title>
            </head>
            <body>
                <xsl:call-template name='dayv1' />
                <br/>
                <xsl:call-template name='dayv2' />
            </body>
        </html>
    </xsl:template>
<xsl:template name="dayv1">
    <h2>Days Schedule version 1</h2>
     <table border="solid">
            <tr>
                <td style="text-align:center">Day</td>
                <xsl:for-each select="week/days">
                    <th bgcolor="#9acd32"><xsl:value-of select="./@type"/></th>
                </xsl:for-each>
            </tr>
            <xsl:for-each select="week/days">
                <xsl:for-each select="./course">
                <tr>
                    <th bgcolor="#9acd32"><xsl:value-of select="./start"/></th>
                    <td>
                        ACIT <xsl:value-of select="./id"/><br/>
                        <xsl:value-of select="./name"/><br/>
                        CRN: <xsl:value-of select="./crn"/><br/>
                        <xsl:value-of select="./type"/><br/>
                        <xsl:value-of select="./building"/>-<xsl:value-of select="./room"/><br/>
                        <xsl:value-of select="./instructor"/>
                    </td>
                </tr>
                </xsl:for-each>
            </xsl:for-each>
        </table>
</xsl:template>    

<xsl:template name="dayv2">
    <h2>Days Schedule version 2</h2>
     <table border="solid">
            <tr>
                <td style="text-align:center">Day</td>
                <xsl:for-each select="week/days/course">
                    <th bgcolor="#9acd32"><xsl:value-of select="./start"/></th>
                </xsl:for-each>
            </tr>
            <xsl:for-each select="week/days">
                <tr>
                    <th bgcolor="#9acd32"><xsl:value-of select="./@type"/></th>
                <xsl:for-each select="./course">
                
                    
                    <td>
                        ACIT <xsl:value-of select="./id"/><br/>
                        <xsl:value-of select="./name"/><br/>
                        CRN: <xsl:value-of select="./crn"/><br/>
                        <xsl:value-of select="./type"/><br/>
                        <xsl:value-of select="./building"/>-<xsl:value-of select="./room"/><br/>
                        <xsl:value-of select="./instructor"/>
                    </td>
                
                </xsl:for-each>
                </tr>
            </xsl:for-each>
        </table>
</xsl:template>    
</xsl:stylesheet>
