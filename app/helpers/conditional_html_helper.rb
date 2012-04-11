module ConditionalHtmlHelper
  # Implements the Paul Irish IE conditional comments HTML tag--in HAML.
  # http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/
  # credits to http://ricostacruz.com/2010/haml_and_ie_compatibility.html
  
  def cc_html(options={}, &blk)
    attrs = options.map { |(k, v)| k.to_s != 'class' ? " #{h k}='#{h v}'" : '' }.join('')
    klass = options[:class] 
    [ "<!--[if lt IE 7 ]> <html#{attrs} class='#{klass} oldie ie6'> <![endif]-->",
      "<!--[if IE 7 ]>    <html#{attrs} class='#{klass} oldie ie7'> <![endif]-->",
      "<!--[if IE 8 ]>    <html#{attrs} class='#{klass} oldie ie8'> <![endif]-->",
      "<!--[if (gt IE 8)|!(IE)]><!--> <html#{attrs} class='#{klass}'> <!--<![endif]-->",
      capture_haml(&blk).strip,
      "</html>"
    ].join("\n")
  end

  def h(str); Rack::Utils.escape_html(str); end

  
  # return class "left" or "right" if an element is the leftmost or rightmost
  def left_right_class(index, size)
    if index == 0
      'left'
    elsif  index >= size
      'right'
    else
      ''
    end
  end
  
end

