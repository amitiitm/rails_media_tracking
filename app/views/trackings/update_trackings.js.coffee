$("#tracking_table").empty()
  .append("<%= escape_javascript(render(:partial => 'index', locals: {trackings: @trackings})) %>")