require "json"

class TranslatorController < ApplicationController

  def post_handler_simple

    # get the sent file entity
    source = params["source"]

    # read ruby source code
    file = File.open(source.tempfile)
    content = file.read
    file.close

    # return content length -> works fine !
    render plain: ">> #{content.length()}\n"

 end

  def post_handler

    # get the sent file entity
    source = params["source"]

    # read ruby source code
    file = File.open(source.tempfile)
    content = file.read
    file.close

    # this import doesn't work ...
    require "syntax_tree"

    # parse it
    program = SyntaxTree.parse(content)

    # return AST (json format)
    render plain: JSON.dump(program)

  end

end