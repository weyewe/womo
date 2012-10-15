COMPANY_NAME = "William Photography"
COMPANY_MOTO = "One shoot. One moment. One love"

USER_ROLE = {
  :basic => 'Basic',  # the basic role -> can do product enquiry , post in discussion 
  :vendor => "Vendor",
  :admin => "Admin"
}

SHOWLOADING_LOADER_URL = "http://s3.amazonaws.com/circle-static-assets/loading.gif"

TRANSLOADIT_UPLOAD_URL = "http://api2.transloadit.com/assemblies"

PLUPLOAD_ASSET_URL = {
  :backgrounds => 'http://s3.amazonaws.com/circle-static-assets/plupload/backgrounds.gif',
  :buttons_disabled => 'http://s3.amazonaws.com/circle-static-assets/plupload/buttons-disabled.png', 
  :buttons => 'http://s3.amazonaws.com/circle-static-assets/plupload/buttons.png',
  :delete => 'http://s3.amazonaws.com/circle-static-assets/plupload/delete.gif',
  :done => 'http://s3.amazonaws.com/circle-static-assets/plupload/done.gif',
  :error => 'http://s3.amazonaws.com/circle-static-assets/plupload/error.gif',
  :throbber => 'http://s3.amazonaws.com/circle-static-assets/plupload/throbber.gif',
  :transp50 => 'http://s3.amazonaws.com/circle-static-assets/plupload/transp50.png'
} 


PLUPLOAD_SWF_URL = 'http://s3.amazonaws.com/circle-static-assets/PLUPLOAD_UPLOADER/plupload.flash.swf'
PLUPLOAD_SILVERLIGHT_XAP_URL = 'http://s3.amazonaws.com/circle-static-assets/PLUPLOAD_UPLOADER/plupload.silverlight.xap'
TRANSLOADIT_WAIT = 1 
TRANSLOADIT_NO_WAIT = 0 

TRUE_CHECK = 1
FALSE_CHECK = 0

UPLOAD_FILE_STATUS = {
  :uploaded => 1,
  :resized => 2, 
  :saved => 3 
}