require "xml/xslt"

xslt = XML::XSLT.new
xslt.xsl = "alunos3.xsl"
xslt.xml = "alunos.xml"
xslt.save("alunos.html")
pust xslt.serve