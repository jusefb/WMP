class CalendarController < ApplicationController

  def show_menu
    @nextWeekNumber = (Date.today.at_end_of_week + 1).strftime('%U')
    currentWeekNo = (params[:currentWeekNo] == nil) ? Date.today.at_beginning_of_week.strftime('%U') : params[:currentWeekNo]
    @menuDays = Day.where(:week_no => currentWeekNo)
  end

  #this method will create the 7 days of the week menu
  def generate_current_wm
    currentDate = Date.today.at_beginning_of_week
    CalendarHelper.create_wm(currentDate)

    redirect_to(:action => 'show_menu')
  end

  def generate_next_week_wm
    currentDate = Date.today.at_end_of_week + 1
    CalendarHelper.create_wm(currentDate)

    currentWeekNo = currentDate.strftime('%U')
    redirect_to(:action => 'show_menu', :currentWeekNo => currentWeekNo)
  end

  def show
    @day = Day.find(params[:id], :include => [:bf_recipe, :lunch_recipe])
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  def edit_day_recipes
      @recipes = Recipe.all
      @day = Day.find(params[:id])
  end

  def save_day_recipes
    day = Day.find(params[:id])
    day.update_attributes(params[:day])
    day.save

    redirect_to(:action => 'show', :id => params[:id])
  end

end
