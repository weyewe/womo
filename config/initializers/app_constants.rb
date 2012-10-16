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

FRONTPAGE_IMAGE_URL = {
  # lightbox
  :lightbox_close => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/ui-lightness/lightbox-close.png',
  :lightbox_arrows => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/ui-lightness/lightbox-arrows.png',
  :lightbox_more => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/lightbox-more.png',
  :loader => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/ui-lightness/loader.gif',
  :loading => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/loading.gif',

  # styles2
  :overlay => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/overlay.png',
  :overlay_dark => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/overlay-dark.png',
  :h_divider1_dark => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/h-divider1-dark.png',
  :h_divider => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/h-divider.png',
  :h_divider1 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/h-divider1.png',
  :to_page_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-small.png',
  :to_page_small_dark => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-small-dark.png',
  :to_page_small1 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-small1.png',
  :to_page_small1_dark => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-small1-dark.png',
  
  #ef 
  :ef_menu_tab => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/ef-menu-tab.png',
  :ef_menu_tab_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/ef-menu-tab-small.png',
  :menu_corner => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/menu-corner.png',
  
  #header
  :sideshadd => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/sideshadd.png',

  #topbar
  :topbar_button => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/topbar-button.png',
  
  #start slider 
  :slider_overlay => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/slider-overlay.png',
  :slider_overlay_dark => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/slider-overlay-dark.png',
  :fold_page => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/fold-page.png',
  
  :cursor_close => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/cursor-close.cur',
  
  :corn => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/corn.gif',
  :corn1 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/corn1.gif',
  :read => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/read.gif',
  
  :ef_button2 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/ef-button2.png',
  
  
  # blogpost
  :twt => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/twt.png',
  :twt1 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/twt1.png',
  
  :entries => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/entries.png',
  :latest_posts => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/latest-posts.png',
  :latest_posts1 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/latest-posts1.png',
  
  :slider_dot => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/slider-dot.png',
  :slider_arrows => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/slider-arrows.png',
  :home_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/home-small.png',
  :home => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/home.png',
  
  :comments_corner => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/comments-corner.png',
  
  ##SHORTCODES.css
  :toggle_icn => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/toggle-icn.png',
  :t_corner => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/t-corner.gif',
  :testim_m_bg => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/testim-m-bg.gif',
  
  :alert_close => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/alert-close.png',
  :ef_button => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/ef-button.png',
  :ef_button1 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/ef-button1.png',
  
  #SUPERSIZED SHUTTER CSS
  :thumb_next_prev => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/thumb-next-prev.png',
  
  #additinoal-fluid.css.erb
  :to_page_pad => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-pad.png', 
  :to_page_pad_dark => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-pad-dark.png',
  :to_page_pad1 => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-pad1.png',
  :to_page_pad1_dark => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/to-page-pad1-dark.png',
  :fold_page_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/fold-page-small.png',
  :topbar_button_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/topbar-button-small.png',
  :slider_arrows_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/slider-arrows-small.png',
  :thumb_next_prev_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/thumb-next-prev-small.png',
  :ef_menu_tab_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/ef-menu-tab-small.png',
  :slider_arrows_small => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/slider-arrows-small.png',
  :slider_arrows_pad => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/style/slider-arrows-pad.png' ,
  
  :px => 'https://s3.amazonaws.com/wilpot-asset/front-page-asset/style/px.png',
  :progress => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/supersized/progress.gif',
  
  #fornt_page 
  :pause => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/buttons/pause.png',
  :play => 'http://s3.amazonaws.com/wilpot-asset/front-page-asset/supersized/play.png',
  :logo => "http://s3.amazonaws.com/wilpot-asset/front-page-asset/buttons/logo.png",
  
  
  :basic_pic => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/basic_pic.jpg'
  
} 

SUPERSIZED_OBJECT_HASH = [
  {
    :image => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/slide5.jpg',
    :thumb => 'http://farm9.staticflickr.com/8457/7946768126_09a5a3cf38_q.jpg', 
    :title => 'Image Credit: Thomas Hawk - Maybe'
  },
  {
    :image => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/slide1.jpg',
    :thumb => 'http://farm4.staticflickr.com/3524/4040500521_09fb03e43c_q.jpg',
    :title => 'What is Simple in the Moonlight'
  },
  {
    :image => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/slide2.jpg',
    :thumb => 'http://farm2.staticflickr.com/1335/543946981_cd1b1c7a02_q.jpg',
    :title => 'San Francisco 425'
  },
  {
    :image => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/slide8.jpg',
    :thumb => 'http://farm9.staticflickr.com/8305/8004740780_c3685c41d9_q.jpg',
    :title => 'Surf the Architecture He Told Her'
  },
  {
    :image => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/slide3.jpg',
    :thumb => 'http://farm1.staticflickr.com/109/259604602_77480ec941_q.jpg',
    :title => 'Another Time, Another State of Mind'
  }, 
  {
    :image => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/slide6.jpg',
    :thumb => 'http://farm6.staticflickr.com/5060/5472627086_a408b810d6_q.jpg',
    :title => 'Image Credit: Thomas Hawk - Oldies'
  },
  {
    :image => 'http://s3.amazonaws.com/wilpot-asset/front-page-content/slide7.jpg',
    :thumb => 'http://farm9.staticflickr.com/8010/7475124964_05231a9ff2_q.jpg',
    :title => 'Black and White'
  } 
]