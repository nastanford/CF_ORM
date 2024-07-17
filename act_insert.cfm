<cfdump var="#form#">

<cftry>
  <cfif structKeyExists(form, "submitArtist")>
    <cfscript>
      newArtist = entityNew("Artist");
      newArtist.setFirstname(form.firstname);
      newArtist.setLastname(form.lastname);
      newArtist.setAddress(form.address);
      newArtist.setCity(form.city);
      newArtist.setState(form.state);
      newArtist.setPostalcode(form.postalcode);
      newArtist.setEmail(form.email);
      newArtist.setPhone(form.phone);
      newArtist.setFax(form.fax);
      newArtist.setThepassword(form.thepassword);
      // newArtist.setThepassword(hash(form.thepassword));
      
      transaction {
        entitySave(newArtist);
        transactionCommit();
      }
      
      session.message = {
        type = "success",
        text = "Artist added successfully!"
      };
      
      location(url="index.cfm", addToken=false);
    </cfscript>
  </cfif>
  
  <cfcatch type="any">
    <cfdump var="#cfcatch#" label="Error Details">
    <cfabort>
  </cfcatch>
</cftry>