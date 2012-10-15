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

BACKEND_IMAGE_URL = {
  :manage_pictures => 'http://s3.amazonaws.com/wilpot-asset/post-format/latest-gallery.png',
  :manage_content => 'http://s3.amazonaws.com/wilpot-asset/post-format/latest-aside.png',
  :manage_featured_pictures => 'http://s3.amazonaws.com/wilpot-asset/post-format/gallery-hover.png',
  
  # skin-default.css
  :divider => 'http://s3.amazonaws.com/wilpot-asset/skin-default/divider.png',
  :divider_2 => 'http://s3.amazonaws.com/wilpot-asset/skin-default/divider2.png',
  
  :slider_link => 'http://s3.amazonaws.com/wilpot-asset/skin-default/slider-link.png',
  :slider_next => 'http://s3.amazonaws.com/wilpot-asset/skin-default/slider-next.png',
  :slider_prev => 'http://s3.amazonaws.com/wilpot-asset/skin-default/slider-prev.png',
  :slider_next_hover => 'https://s3.amazonaws.com/wilpot-asset/skin-default/slider-next-hover.png',
  :slider_prev_hover => 'https://s3.amazonaws.com/wilpot-asset/skin-default/slider-prev-hover.png',
  
  :filtrable_on => 'http://s3.amazonaws.com/wilpot-asset/skin-default/filtrable-on.png',
  :filtrable_off => 'http://s3.amazonaws.com/wilpot-asset/skin-default/filtrable-off.png', 
  :bg => 'http://s3.amazonaws.com/wilpot-asset/skin-default/bg.png',
  :glyphicons_halflings_white => 'http://s3.amazonaws.com/wilpot-asset/skin-default/glyphicons-halflings-white.png',
  :glyphicons_halflings => 'http://s3.amazonaws.com/wilpot-asset/skin-default/glyphicons-halflings.png',
  
  :footer_bg => 'http://s3.amazonaws.com/wilpot-asset/skin-default/footer-bg.jpg',
  :footer_divider => 'http://s3.amazonaws.com/wilpot-asset/skin-default/footer-divider.png',
  
  :features_1 => 'http://s3.amazonaws.com/wilpot-asset/skin-default/features-1.png',
  :box_bg => 'http://s3.amazonaws.com/wilpot-asset/skin-default/box-bg.png', 
}