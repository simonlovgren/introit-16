(function(){
  // Get base
  var base;(function(){base=document.head.getElementsByTagName('base')[0];base?((base = base.getAttribute('href'))?base:null):null})();

  // elements
  var es = {
    notifications: document.getElementById('notifications')?jQuery(document.getElementById('notifications')):null,
  };

  // layouts
  var layouts = {
    notification: '<div class="notification {style}">{message}<span class="close">x</span></div>'
  };

  /// mustache.js sanitizer
  var entityMap = {
    "&": "&amp;",
    "<": "&lt;",
    ">": "&gt;",
    '"': '&quot;',
    "'": '&#39;',
    "/": '&#x2F;'
  };

  function escapeHtml(string) {
    return String(string).replace(/[&<>"'\/]/g, function (s) {
      return entityMap[s];
    });
  }

  function closeNotification(el){
    console.log(el);
    jQuery(this).parent().remove();
  }

  function renderNotification(message, style) {
      var el = jQuery(layouts.notification.replace(
        "{message}", escapeHtml(message)
      ).replace(
        "{style}", escapeHtml(style))
      );
      el.find(".close").click(closeNotification);
      es.notifications.append(el);
  }

  function handleNotifications(notifications,r,x) {
    if(notifications && notifications.length > 0) {
      for(var i = 0; i < notifications.length; ++i) {
        var notification = notifications[i];
        if(notification.message && notification.message.length > 0) {
          renderNotification(notification.message, notification.style ? notification.style : 'default');
        }
      }
    }
  }

  function loadNotifications(){
    // Stop at once if notifications block dows not exist
    if(es.notifications) {
      jQuery.getJSON(
          base + "notifications.json",
          "nocache=" + (new Date).getTime(),
          handleNotifications
      );
    }
  }

  // Autotrigger stuff
  loadNotifications();
})();
