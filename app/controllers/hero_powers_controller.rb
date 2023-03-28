
  class HeroPowersController < ApplicationController

    def index
      @hero_powers = HeroPower.all
      render json: @hero_powers
    end



    def create
      hero = Hero.find_by(id: params[:hero_id])
      power = Power.find_by(id: params[:power_id])
      hero_power = HeroPower.new(hero: hero, power: power, strength: params[:strength])
      if hero_power.save
        render json: hero.to_json(
          only: [:id, :name, :super_name],
          include: [powers: { only: [:id, :name, :description] }]
        )
      else
        render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end