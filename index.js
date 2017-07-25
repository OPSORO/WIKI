var Remarkable = require('remarkable');
var md = new Remarkable();

module.exports = {
  // Map of hooks
  hooks: {
    finish: function(){
      //console.log("sdqfqsdf qsdfdsf");
      //console.error(new Error('Whoops, something bad happened'));


    }
  },

  // Map of new blocks
  blocks: {
    // iris: {
    //   process: function(block) {
    //     return "<div style='background-color: red; height: 400px;'>" + block.body + "</div>";
    //   }
    // }
    md: {
      process: function(block){
        return md.render(block.body);
      }
    }
  },

  // Map of new filters
  filters: {}
};
