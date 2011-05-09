require 'rhino'
require 'json'

class JSLint

  def initialize source
    @source = source
  end

  def tree
    Rhino::Context.open do |context|
      ["fulljslint", "options", "json2"].each do |file_name|
        context.load(File.join(File.dirname(__FILE__),"#{file_name}.js"))      
      end  
      context['source'] = @source
      code = <<Code
        JSLINT(source.toString(), options);
        JSON.stringify(JSLINT.tree, ['value',  'arity', 'name',  'first', 'second', 'third', 'block', 'else'], 4);
Code
      JSON.parse(context.eval(code).to_str, :max_nesting => 100)      
    end    
  end
end