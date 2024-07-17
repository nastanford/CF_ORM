<cfscript>
  // Retrieve a specific artist
  specificArtist = entityLoadByPK("Artist", form.id);
</cfscript>
<cftry>
  <cfif structKeyExists(form, "submitArtist")>
    <cfscript>
      specificArtist.setArtistID(form.id);
      specificArtist.setFirstname(form.firstname);
      specificArtist.setLastname(form.lastname);
      specificArtist.setAddress(form.address);
      specificArtist.setCity(form.city);
      specificArtist.setState(form.state);
      specificArtist.setPostalcode(form.postalcode);
      specificArtist.setEmail(form.email);
      specificArtist.setPhone(form.phone);
      specificArtist.setFax(form.fax);
      specificArtist.setThepassword(form.thepassword);
      // specificArtist.setThepassword(hash(form.thepassword));
      
      transaction {
        entitySave(specificArtist);
        transactionCommit();
      }
      
      session.message = {
        type = "success",
        text = "Artist updated successfully!"
      };
      
      location(url="index.cfm", addToken=false);
    </cfscript>
  </cfif>
  
  <cfcatch type="any">
    <cfdump var="#cfcatch#" label="Error Details">
    <cfabort>
  </cfcatch>
</cftry>