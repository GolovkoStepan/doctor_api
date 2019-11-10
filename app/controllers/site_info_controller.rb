class SiteInfoController < ApplicationController

  skip_before_action :authenticate_request

  def index
    render json: {
        site: "Doctor API",
        version: "0.1.0",
        author: "Stepan Golovko",
        contacts: {
            github: "https://github.com/GolovkoStepan",
            telegrgam: "https://t.me/stepangolovko" },
        docs: "swagger_docs_url"
    }
  end

end
