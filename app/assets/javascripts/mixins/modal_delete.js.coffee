$ ->
  $.rails.allowAction = (link) ->
    return true unless link.attr('data-confirm')
    $.rails.showConfirmDialog(link) 
    false 

  $.rails.confirmed = (link) ->
    link.removeAttr('data-confirm')
    link.trigger('click.rails')

  $.rails.showConfirmDialog = (link) ->
    message = link.attr 'data-confirm'
    swal {
      title: 'Are you sure?'
      text: "This cannot be undone!\n Delete: #{message}"
      type: 'warning'
      showCancelButton: true
      confirmButtonColor: '#DD6B55'
      confirmButtonText: 'Delete'
      cancelButtonText: 'Cancel'
      closeOnConfirm: false
      closeOnCancel: false
    }, (isConfirm) ->
      if isConfirm
        swal 'Deleted!', '#{message} has been deleted!.', 'success', $.rails.confirmed link
      else
        swal 'Cancelled', "#{message} delete has been cancelled", 'error'
      return