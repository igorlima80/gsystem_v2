class Api::AccommodationsController < Api::ApplicationController
  load_and_authorize_resource

  def find
    @accommodations  = []
    if params[:latitude] && params[:longitude]
      if params[:radius]
        @accommodations = Accommodation.near([params[:latitue].to_f, params[:longitude].to_f], params[:radius].to_f, unit: :km)
      else
        @accommodations = Accommodation.near([params[:latitue].to_f, params[:longitude].to_f])
      end
    end
    render json: {
      success: @accommodations.any?,
      message: "#{@accommodations.size} acomodações encontradas",
      collection: @accommodations.as_json(methods: :images_urls)
    }
  end
end
