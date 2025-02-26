<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Passport Records</title>
            <link rel="stylesheet" type="text/css" href="passports.css"/>
        </head>
        <body>
            <h1>Passport Records</h1>
            <div class="passports-container">
                <xsl:for-each select="passports/passport">
                    <div class="passport-card">
                        <h2>Passport ID: <xsl:value-of select="@id"/></h2>
                        <div class="passport-details">
                            <div class="personal-info">
                                <p>
                                    <strong>Full Name: </strong>
                                    <xsl:value-of select="lastName"/>,
                                    <xsl:value-of select="firstName"/>
                                    <xsl:value-of select="patronymic"/>
                                </p>
                                <p>
                                    <strong>ID Number: </strong>
                                    <xsl:value-of select="idNumber"/>
                                </p>
                                <p>
                                    <strong>Address: </strong>
                                    <xsl:value-of select="address"/>
                                </p>
                            </div>
                            <div class="photo-container">
                                <p>Photo: <xsl:value-of select="photo"/></p>
                                <p>Type: <xsl:value-of select="photo/@type"/></p>
                            </div>
                        </div>
                    </div>
                </xsl:for-each>
            </div>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>