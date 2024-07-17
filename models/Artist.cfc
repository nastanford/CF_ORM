// /cf_orm/models/Artist.cfc
component persistent="true" table="ARTISTS" {
    property name="artistid" fieldtype="id" generator="identity";
    property name="firstname" type="string" length="50";
    property name="lastname" type="string" length="50";
    property name="address" type="string" length="100";
    property name="city" type="string" length="50";
    property name="state" type="string" length="50";
    property name="postalcode" type="string" length="15";
    property name="email" type="string" length="255";
    property name="phone" type="string" length="30";
    property name="fax" type="string" length="30";
    property name="thepassword" type="string" length="50";
}