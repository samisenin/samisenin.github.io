<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:vcard="http://www.w3.org/2006/vcard/ns#"
  xmlns:foaf="http://xmlns.com/foaf/0.1/">

  <xsl:template match="/">
    <html>
    <head>
      <title>Amine Boujemaaoui - CV</title>
      <style type="text/css">
        body {
          font-family: Arial, sans-serif;
          background-color: #f4f4f9;
          color: #333;
          line-height: 1.6;
          margin: 0;
          padding: 0;
        }
        .container {
          width: 80%;
          margin: auto;
          overflow: hidden;
        }
        header {
          background: #35424a;
          color: #ffffff;
          padding-top: 30px;
          min-height: 70px;
          border-bottom: #e8491d 3px solid;
        }
        header a {
          color: #ffffff;
          text-decoration: none;
          text-transform: uppercase;
          font-size: 16px;
        }
        header ul {
          padding: 0;
          list-style: none;
        }
        header li {
          float: right;
          display: inline;
          padding: 0 20px 0 20px;
        }
        header #branding {
          float: left;
        }
        header #branding h1 {
          margin: 0;
        }
        section {
          padding: 20px;
          background: #ffffff;
        }
        footer {
          background: #35424a;
          color: #ffffff;
          text-align: center;
          padding: 10px;
          margin-top: 20px;
        }
      </style>
    </head>
    <body>
      <header>
        <div class="container">
          <div id="branding">
            <h1>Amine Boujemaaoui</h1>
          </div>
          <nav>
            <ul>
              <li><a href="index_en.html">Home</a></li>
              <li><a href="resume_en.html">Resume</a></li>
              <li><a href="contact_en.html">Contact</a></li>
            </ul>
          </nav>
        </div>
      </header>

      <section id="main">
        <div class="container">
          <h1>Apprentice Computer Engineer</h1>
          <p><strong>Name:</strong> <xsl:value-of select="//foaf:name"/></p>
          <p><strong>Title:</strong> <xsl:value-of select="//foaf:title"/></p>
          <p><strong>Email:</strong> <xsl:value-of select="//vcard:hasEmail/@rdf:resource"/></p>
          <p><strong>Address:</strong> <xsl:value-of select="//vcard:Address/vcard:street-address"/>, 
            <xsl:value-of select="//vcard:Address/vcard:locality"/>, 
            <xsl:value-of select="//vcard:Address/vcard:postal-code"/>, 
            <xsl:value-of select="//vcard:Address/vcard:country-name"/>
          </p>
          <p><strong>Age:</strong> <xsl:value-of select="//foaf:age"/></p>
          <p><strong>Phone:</strong> <xsl:value-of select="//vcard:hasTelephone/@rdf:resource"/></p>
          <p><strong>Date of Birth:</strong> <xsl:value-of select="//vcard:bday"/></p>
          <p><strong>Driving License:</strong> <xsl:value-of select="//vcard:hasDrivingLicense"/></p>

          <h2>Professional Experience</h2>
          <div>
            <h3><xsl:value-of select="//foaf:currentProject/foaf:name"/></h3>
            <p><strong>Company:</strong> <xsl:value-of select="//foaf:currentProject/foaf:homepage/@rdf:resource"/></p>
            <p><strong>Description:</strong> <xsl:value-of select="//foaf:currentProject/rdfs:comment"/></p>
            <p><strong>Role:</strong> <xsl:value-of select="//foaf:currentProject/vcard:role"/></p>
            <p><strong>Organization:</strong> <xsl:value-of select="//foaf:currentProject/vcard:org/vcard:Organization/vcard:organization-name"/></p>
            <p><strong>Start Date:</strong> <xsl:value-of select="//foaf:currentProject/vcard:hasPeriod/vcard:Period/vcard:start-date"/></p>
          </div>
        </div>
      </section>

      <footer>
        <p>Amine Boujemaaoui - CV</p>
      </footer>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
