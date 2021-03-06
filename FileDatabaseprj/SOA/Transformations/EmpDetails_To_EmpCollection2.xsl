<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/Dbadaptor" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://www.GmindTechnologies.org" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/file/DatabaseApplication/FileDatabaseprj/EmpReadFile"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/DatabaseApplication/FileDatabaseprj/Dbadaptor">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/EmpReadFile.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EmpDetails" namespace="http://www.GmindTechnologies.org"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/Dbadaptor.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EmpCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/Dbadaptor"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.1.0(XSLT Build 160608.1900.0023) AT [WED APR 18 18:42:18 EDT 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:EmpCollection>
         <xsl:for-each select="/ns0:EmpDetails">
            <tns:Emp>
               <tns:empno>
                  <xsl:value-of select="ns0:Empno"/>
               </tns:empno>
               <tns:ename>
                  <xsl:value-of select="ns0:ename"/>
               </tns:ename>
               <tns:sal>
                  <xsl:value-of select="ns0:sal"/>
               </tns:sal>
            </tns:Emp>
         </xsl:for-each>
      </tns:EmpCollection>
   </xsl:template>
</xsl:stylesheet>
