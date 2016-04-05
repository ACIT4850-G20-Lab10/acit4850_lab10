<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : courses.xsl
    Created on : April 3, 2016, 9:13 AM
    Author     : William Hu
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
                <title>courses.xsl</title>
            </head>
            <body>
                <xsl:call-template name="coursesv1"/>
                <xsl:call-template name="coursesv2"/>
                <br/>
                <br/>
              
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="coursesv1">
        <h2>Courses Schedule version 1</h2>
        <table border="solid">
            <tr>
                <td style="text-align:center">Time</td>
                
                <xsl:for-each select="week/courses">
                    <xsl:for-each select="./day">
                        <th bgcolor="#9acd32">
                            <xsl:value-of select="./@type" /> 
                        </th>
                    </xsl:for-each>
                </xsl:for-each>
                <!--<xsl:value-of select="week/courses/day/starttime/name" /> -->
            </tr>

            <xsl:for-each select="week/courses">
                <tr>
                    <th bgcolor="#9acd32">
                        <xsl:value-of select="./id" />
                    </th>
                    <xsl:for-each select="./day">
                        <xsl:for-each select="./starttime">
                            <td>
                                <xsl:value-of select="./name"/>
                                <br/>
                                CRN: <xsl:value-of select="./crn"/>
                                <br/>
                                <xsl:value-of select="./type"/>
                                <br/>
                                <xsl:value-of select="./building"/>
                                <xsl:value-of select="./room"/>
                                <br/>
                                Start time:<xsl:value-of select="./@type" />
                                <br/>
                                <xsl:value-of select="./instructor"/>
                            </td>
                        </xsl:for-each>
                    </xsl:for-each>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
 
    <!--- dddddddddddd -->       
    <xsl:template name="coursesv2">
        <h2>Courses Schedule version 2</h2>
        <table border="solid">
            <tr>
                <th style="text-align:center">
                    Course
                </th>
                <th colspan="2" bgcolor="#9acd32">
                    <xsl:for-each select="week/courses">
                        <xsl:value-of select="./id"/> 
                    </xsl:for-each>
                </th>
            </tr>
         <xsl:for-each select="week/courses">
            <xsl:for-each select="./day">
            <tr>
                <td>
                   <xsl:value-of select="./@type" /> 
                </td>
                <td  bgcolor="#9acd32">
                    <xsl:for-each select="./starttime">
                        <xsl:value-of select="./name"/><br/>
                        CRN: <xsl:value-of select="./crn"/><br/>
                        <xsl:value-of select="./type"/><br/>
                        <xsl:value-of select="./building"/><xsl:value-of select="./room"/><br/>
                        Start time:<xsl:value-of select="./@type" /><br/>
                        <xsl:value-of select="./instructor"/>
                    </xsl:for-each> <!-- start time -->
                </td>
            </tr>
            </xsl:for-each> <!-- day -->
         </xsl:for-each> <!-- week/course  -->
                 
        </table>
    </xsl:template>
</xsl:stylesheet>
