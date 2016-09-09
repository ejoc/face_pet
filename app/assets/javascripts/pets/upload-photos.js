$(document).on('turbolinks:load', function() {

  $("#pet_photos").fileinput({
    uploadUrl: "/site/image-upload",
    //overwriteInitial: true,
    //theme: "gly",
    maxFileSize: 10240,
    maxFileCount: 5,
    //maxImageHeight: 50,
    showClose: false,
    showCaption: false,
    showBrowse: false,
    browseOnZoneClick: true,
    // showPreview: true,
    // showRemove: true,
    // showUpload: false,
    // showCancel: false,
    // elErrorContainer: '#kv-avatar-errors-2',
    // msgErrorClass: 'alert alert-block alert-danger',
    allowedFileExtensions: ["jpg", "png", "gif", 'jpeg']
  });
  
});