var WaitForElemReady = function(selector, timeout){
  return this
      .waitUntil(function(){
        var result = false;
        try{
          result =
            this.isExisting(selector).then(function(isExisting){ return isExisting; }) &&
            this.isEnabled(selector).then(function(isEnabled){ return isEnabled; });

            this.scroll(selector).moveToObject(selector);
        }
        catch(e){
          console.log("Error: " + e);
          return false;
        }
        this.isExisting(selector).then(function(isExisting){ console.log("isExisting: " + isExisting); });
        this.isEnabled(selector).then(function(isEnabled){ console.log("isEnabled: " + isEnabled); });
        this.isVisible(selector).then(function(isVisible){ console.log("isVisible: " + isVisible); });
        console.log("result: " + result);
        return result;
      }, timeout)
      .then(function(){
        var ElemEventsBindingTimeout = 2000;
        return this
        .pause(ElemEventsBindingTimeout)
        .then(function(){ return this; });
      });
};

module.exports = WaitForElemReady;
