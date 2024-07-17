<cfscript>
  // Retrieve all artists
  artists = entityLoad("Artist");
</cfscript>

<cfinclude template="includes/header.cfm"> 
<cfoutput>
  <div class="col-12 px-4">
    <div class="row">
      <div class="col-11">
        <h1>Artists</h1>
      </div>
      <div class="col-1">
        <a href="add.cfm" class="btn btn-sm btn-secondary me-2">
          <i class="bi bi-plus"></i> Add
        </a>          
      </div>
    </div>
    <div class="row">
      <div class="col-12 text-center">
        
      </div>
    </div>
      
    <table class="table table-sm table-striped">
    <thead>
      <tr>
        <th class="col-1">Edit</th>
        <th class="col-3">First Name</th>
        <th class="col-3">Last Name</th>
        <th class="col-4">Email</th>
        <th class="col-1">Delete</th>
      </tr>
      <thead>
      <tbody>
        <cfloop array="#artists#" index="artist">
          <tr>
            <td class="col-1">
              <a href="edit.cfm?id=#artist.getArtistid()#" class="btn btn-sm btn-secondary me-2">
                <i class="bi bi-pencil"></i> Edit
              </a>          
            </td>
            <td class="col-3">#artist.getFirstname()#</td>
            <td class="col-3">#artist.getLastname()#</td>
            <td class="col-3">#artist.getEmail()#</td>
            <td class="col-1 text-end">
              <a href="act_delete.cfm?id=#artist.getArtistid()#" class="btn btn-sm btn-secondary" onclick="return confirm('Are you sure you want to delete this artist?');">
                  <i class="bi bi-trash"></i> Delete
              </a>
            </td>
          </tr>
        </cfloop>
      </tbody>
    </table>
  </div>
</cfoutput>
<cfinclude template="includes/footer.cfm"> 
