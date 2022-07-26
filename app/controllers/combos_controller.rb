class CombosController < ApplicationController
  def new
    @combo = Combo.new
    6.times { @combo.combo_meta.build }
  end

  def create
    @combo = Combo.create(combo_params)
    abort(@combo.errors.to_json)
    if @combo.errors.any?
    end
  end

  private
  def combo_params
    params.require(:combo).permit(:name, combo_meta_attributes: [:name_meta])
  end
end
