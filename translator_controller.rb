class TranslatorController < ApplicationController

  def get_handler
    render plain: "MMM DDD 666\n"
  end

  def post_handler
    source = params["source"]
    file = File.open(source.tempfile)
    content = file.read
    file.close
    render plain: "received file content: #{content}\n"
  end

end