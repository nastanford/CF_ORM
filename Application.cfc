component {
  this.name = "CF_ORM5";
  this.applicationTimeout = createTimeSpan(30, 0, 0, 0); //30 days
  this.sessionManagement = true;
  this.sessionTimeout = createTimeSpan(0, 0, 60, 0); // 1 hour 
  this.datasource = "cfartgallery";
  this.ormEnabled = true;
  this.ormSettings = { 
    cfclocation = "models",
    logsql : true,
    useDBForMapping : false,
    saveMapping : true,
    skipCFCWithError : false,
    autoManageSession : true  // This enables session management for ORM
  };
  this.invokeImplicitAccessor = true;

  // Add mapping for the models directory
  this.mappings["/models"] = expandPath("/cf_orm/models");

  function onApplicationStart(){}
  function onApplicationEnd( struct applicationScope ) {}

  function onSessionStart() {
    session.message = {};
  }
  function onSessionEnd( struct sessionScope, struct applicationScope ) {}

  function onRequestStart( string targetPage ) {
    request.webroot = '/cf_orm'
  }
  function onRequest( string targetPage ) {
    include arguments.targetPage;
  }
  function onRequestEnd() {}
  function onCFCRequest( cfcname, method, struct args) { 
        return;
  } 

  function onError( any Exception, string EventName ) {}
  function onAbort( required string targetPage ) {} 
  function onMissingTemplate( required string targetPage ) {}

}


