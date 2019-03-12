module JsonRender extend ActiveSupport::Concern
  def render_ok(data={})
    if data.is_a?(Hash)&&data[:data].present?
      data[:result]= 200
    else
      data={result: 200,data: data}
    end
    render json: data
  end

  def render_err(error,params={})
    render json: {result: :error,msg: params[:msg],code: error}
  end
end