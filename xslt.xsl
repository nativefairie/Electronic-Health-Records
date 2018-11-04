<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" xpath-default-namespace="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/ELH/patient/personalInformations">
    	<div class="side" id="personalInformations">
        <ul style="list-style:none">
            <li>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="photo"/>
                    </xsl:attribute>
                </img>
            </li>

            <li>
            	<p>First Name:&#160;</p>
	            	<xsl:value-of select="firstName"/>
            </li>
            <li>
            	<p>Last Name:&#160;</p>
	            	<xsl:value-of select="lastName"/>
            </li>
            <li><p>Gender:&#160; </p><xsl:value-of select="gender"/></li>
            <li><p>CNP:&#160; </p><xsl:value-of select="CNP"/></li>
            <li><p>Age:&#160; </p><xsl:value-of select="age"/></li>
            <li><p>Address:&#160; </p><xsl:value-of select="address"/>&#160;</li>
            <li><p>Phone Number:&#160; </p><xsl:value-of select="phoneNumber"/>&#160;</li>
        </ul>
    </div>
    </xsl:template>
    <xsl:template match="/ELH/patient/medicalInformations">            
        <div class="main" id="medicalInformations">
    	<ul style="list-style:none">
    		<xsl:for-each select="medicalHistory/medicalObservations">
		    	<li>
		    		<h4>Observation Date: <span class="spanish"> <xsl:value-of select="@date"/></span></h4>
		    		<xsl:value-of select="."/>
		    	</li>
	    	</xsl:for-each>
	    	<xsl:for-each select="diagnoses/diagnose">
		    	<li>
		    		<h4>Diagnose: <span class="spanish"> <xsl:value-of select="@date"/></span></h4>
		    		<xsl:value-of select="."/>
		    	</li>
	    	</xsl:for-each>
	    	<xsl:for-each select="diagnoses/treatmentPlans/treatmentPlan">
		    	<li>
		    		<h4>Treatment Plan: <span class="spanish"> <xsl:value-of select="@date"/></span></h4>
		    		<xsl:value-of select="."/>
		    	</li>
	    	</xsl:for-each>
	    	<h4>Medications:</h4>
	    	<xsl:for-each select="diagnoses/treatmentPlans/medications/medicine">
		    	<li>
		    		<xsl:value-of select="."/>
		    	</li>
	    	</xsl:for-each>
	    	<xsl:for-each select="immunizations/immunization">
		    	<li>
		    		<h4>Immunizations: 
		    			<span class="spanish">             	
			    			<input type="text" id="immunization">
	            				<xsl:attribute name="value">
		            				<xsl:value-of select="@date"/>
	            				</xsl:attribute>
	            			</input>
	            			<button class="tooltip" type="submit" id="submit" name="submit" onclick="modifyImmunization()">
	            				<span class="tooltiptext">After editing text, click to update</span>
	            				<i class="fa fa-edit"></i>
	            			</button>
            			</span>
            		</h4>
		    		<xsl:value-of select="."/>
		    	</li>
	    	</xsl:for-each>
	    </ul>
	</div>
	<div class="sideright">
		<ul style="list-style:none">
	    	<h4>Allergies:</h4>
	    	<xsl:for-each select="allergies/allergie">
		    	<li>
		    		<xsl:value-of select="."/><button class="tooltip" type="submit" id="submit" name="submit" onclick="deleteAllergie()">
	            				<i class="fa fa-trash"></i>
	            				<span class="tooltiptext">Click to delete from DOM</span>
	            			</button>
		    	</li>
	    	</xsl:for-each>
	    	<xsl:for-each select="radiologyImages/radiologyImage">
	    		<li>
	                <a>
	                    <xsl:attribute name="href">
	                        <xsl:value-of select="."/>
	                    </xsl:attribute>
	                    <h4>Radiology Image from <xsl:value-of select="@date"/></h4>
	                </a>
            	</li>
	    	</xsl:for-each>
	    	<xsl:for-each select="radiologyImages/radiologyImage">
	    		<li>
	                <a>
	                    <xsl:attribute name="href">
	                        <xsl:value-of select="."/>
	                    </xsl:attribute>
	                    <h4>Test Results from <xsl:value-of select="@date"/></h4>
	                </a>
            	</li>
	    	</xsl:for-each>
	    </ul>
	    </div>
    </xsl:template>
</xsl:stylesheet>