<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <head>
      <title>Amine Boujemaaoui - CV</title>
      <style type="text/css">
        body {
          font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          background-color: #f0f0f5;
          color: #333;
          margin: 0;
          padding: 0;
        }
        .container {
          width: 70%;
          margin: 30px auto;
          padding: 20px;
          background-color: #fff;
          box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        header {
          background: #283593;
          color: #fff;
          padding: 20px 0;
          text-align: center;
          margin-bottom: 20px;
        }
        header h1 {
          margin: 0;
          font-size: 24px;
        }
        section {
          padding: 20px;
          border-bottom: 1px solid #ddd;
        }
        section:last-child {
          border: none;
        }
        h2 {
          color: #283593;
          font-size: 20px;
          margin-bottom: 10px;
        }
        p {
          margin: 5px 0;
        }
        .label {
          font-weight: bold;
        }
      </style>
    </head>
    <body>
      <div class="container">
        <header>
          <h1>Amine Boujemaaoui</h1>
          <p>Apprentice Computer Engineer</p>
        </header>

        <section>
          <h2>Personal Information</h2>
          <p><span class="label">Name:</span> <xsl:value-of select="//name"/></p>
          <p><span class="label">Title:</span> <xsl:value-of select="//title"/></p>
          <p><span class="label">Email:</span> <xsl:value-of select="//email"/></p>
          <p><span class="label">Address:</span>
            <xsl:value-of select="//address/street"/>,
            <xsl:value-of select="//address/city"/>,
            <xsl:value-of select="//address/postal_code"/>,
            <xsl:value-of select="//address/country"/>
          </p>
          <p><span class="label">Age:</span> <xsl:value-of select="//age"/></p>
          <p><span class="label">Phone:</span> <xsl:value-of select="//phone"/></p>
          <p><span class="label">Date of Birth:</span> <xsl:value-of select="//dob"/></p>
          <p><span class="label">Driving License:</span> <xsl:value-of select="//driving_license"/></p>
        </section>

        <section>
          <h2>Professional Experience</h2>
          <p><span class="label">Position:</span> <xsl:value-of select="//job/position"/></p>
          <p><span class="label">Company:</span> <xsl:value-of select="//job/company"/></p>
          <p><span class="label">Description:</span> <xsl:value-of select="//job/description"/></p>
          <p><span class="label">Start Date:</span> <xsl:value-of select="//job/start_date"/></p>
        </section>
      </div>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
