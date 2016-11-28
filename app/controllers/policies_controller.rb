class PoliciesController < ApplicationController
  def index
    # @categories = list_categories_of_photographer if list_categories_of_photographer
    @my_policies = current_photographer.price_rates
    Category.all.each do |category|
      unless exist_category?(@my_policies, category)
        @my_policies << init_policy(category)
      end
    end
  end

  def update
    @policy = PriceRate.find(params[:id])
    if @policy.update policy_params
      redirect_to policies_path
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def exist_category?(my_policies, category)
    my_policies.each do |policy|
      return true if policy.category == category
    end
    raise
    return false
  end

  def init_policy(category)
    PriceRate.new(photographer: current_photographer, category: category, unit_rate: 0, travel_rate: 0)
  end

  def policy_params
    params.require(:price_rate).permit(:photographer_id, :category_id, :unit_rate, :travel_rate)
  end
end
