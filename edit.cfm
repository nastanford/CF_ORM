<cfscript>
  if (isNumeric(url.id)) {
    specificArtist = entityLoadByPK("Artist", url.id);
  } else {
    writeOutput("Invalid Artist ID");
  }
</cfscript>

<cfoutput>
  <cfinclude template="includes/header.cfm"> 
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="card shadow">
          <div class="card-header bg-secondary text-white">
            <h3 class="mb-0"><i class="bi bi-pencil-square"></i> Edit Artist</h3>
          </div>
          <div class="card-body">
            <form action="act_update.cfm" method="post">
              <input type="hidden" name="id" id="id" value="#SpecificArtist.getArtistId()#">  
              <div class="row g-3">
                <div class="col-md-6">
                  <label for="firstname" class="form-label">First Name</label>
                  <input type="text" class="form-control" id="firstname" 
                  value="#SpecificArtist.getFirstname()#"
                  name="firstname" maxlength="50" required>
                </div>
                <div class="col-md-6">
                  <label for="lastname" class="form-label">Last Name</label>
                  <input type="text" class="form-control" 
                  id="lastname" name="lastname" 
                  value="#SpecificArtist.getLastname()#" 
                  maxlength="50" required>
                </div>
                <div class="col-12">
                  <label for="address" class="form-label">Address</label>
                  <input type="text" class="form-control" 
                  id="address" name="address" 
                  value="#SpecificArtist.getAddress()#" 
                  maxlength="100">
                </div>
                <div class="col-md-6">
                  <label for="city" class="form-label">City</label>
                  <input type="text" class="form-control" 
                  id="city" name="city" 
                  value="#SpecificArtist.getCity()#" 
                  maxlength="50">
                </div>
                <div class="col-md-4">
                  <label for="state" class="form-label">State</label>
                  <select name="state" id="state" class="form-control">
                    <option value="AL">Alabama</option>
                    <option value="AK">Alaska</option>
                    <option value="AZ">Arizona</option>
                    <option value="AR">Arkansas</option>
                    <option value="CA">California</option>
                    <option value="CO">Colorado</option>
                    <option value="CT">Connecticut</option>
                    <option value="DE">Delaware</option>
                    <option value="DC">District Of Columbia</option>
                    <option value="FL">Florida</option>
                    <option value="GA">Georgia</option>
                    <option value="HI">Hawaii</option>
                    <option value="ID">Idaho</option>
                    <option value="IL">Illinois</option>
                    <option value="IN">Indiana</option>
                    <option value="IA">Iowa</option>
                    <option value="KS">Kansas</option>
                    <option value="KY">Kentucky</option>
                    <option value="LA">Louisiana</option>
                    <option value="ME">Maine</option>
                    <option value="MD">Maryland</option>
                    <option value="MA">Massachusetts</option>
                    <option value="MI">Michigan</option>
                    <option value="MN">Minnesota</option>
                    <option value="MS">Mississippi</option>
                    <option value="MO">Missouri</option>
                    <option value="MT">Montana</option>
                    <option value="NE">Nebraska</option>
                    <option value="NV">Nevada</option>
                    <option value="NH">New Hampshire</option>
                    <option value="NJ">New Jersey</option>
                    <option value="NM">New Mexico</option>
                    <option value="NY">New York</option>
                    <option value="NC">North Carolina</option>
                    <option value="ND">North Dakota</option>
                    <option value="OH">Ohio</option>
                    <option value="OK">Oklahoma</option>
                    <option value="OR">Oregon</option>
                    <option value="PA">Pennsylvania</option>
                    <option value="RI">Rhode Island</option>
                    <option value="SC">South Carolina</option>
                    <option value="SD">South Dakota</option>
                    <option value="TN">Tennessee</option>
                    <option value="TX">Texas</option>
                    <option value="UT">Utah</option>
                    <option value="VT">Vermont</option>
                    <option value="VA">Virginia</option>
                    <option value="WA">Washington</option>
                    <option value="WV">West Virginia</option>
                    <option value="WI">Wisconsin</option>
                    <option value="WY">Wyoming</option>
                  </select>

                </div>
                <div class="col-md-2">
                  <label for="postalcode" class="form-label">Postal Code</label>
                  <input type="text" 
                    class="form-control" 
                    id="postalcode" 
                    name="postalcode" 
                    maxlength="15" 
                    pattern="[0-9]{5}(-[0-9]{4})?"
                    value="#SpecificArtist.getPostalcode()#" 
                    title="Five digit zip code, optionally followed by a dash and four more digits"
                    required>
                </div>
                <div class="col-md-6">
                  <label for="email" class="form-label">Email</label>
                  <input type="email" class="form-control" 
                  value="#SpecificArtist.getEmail()#" 
                  id="email" name="email" maxlength="255" required>
                </div>
                <div class="col-md-6">
                  <label for="phone" class="form-label">Phone</label>
                  <input type="tel" class="form-control" 
                  value="#SpecificArtist.getPhone()#" 
                  id="phone" name="phone" maxlength="30">
                </div>
                <div class="col-md-6">
                  <label for="fax" class="form-label">Fax</label>
                  <input type="tel" class="form-control" 
                  value="#SpecificArtist.getFax()#" 
                  id="fax" name="fax" 
                  maxlength="30">
                </div>
                <div class="col-md-6">
                  <label for="thepassword" class="form-label">Password</label>
                  <input type="password" class="form-control" 
                  id="thepassword" name="thepassword"
                  value="#SpecificArtist.getThePassword()#" 
                  maxlength="8" required>
                </div>
              </div>
          </div>
        </div>
        <div class="col-12 mt-4 pb-4 text-center">
          <button type="submit" name="submitArtist" class="btn btn-secondary">
            <i class="bi bi-save"></i>
            Upddate Artist
          </button>
        </div>
        </form>
      </div>
    </div>
  </div>
</cfoutput>

<cfinclude template="includes/footer.cfm"> 
