<cfscript>
  if (isNumeric(url.id)) {
    specificArtist = entityLoadByPK("Artist", url.id);
  } else {
    writeOutput("Invalid Artist ID");
  }
  entityDelete(specificArtist);        
  location(url="index.cfm", addToken=false);
</cfscript>