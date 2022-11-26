class PagesController < ApplicationController

  def home

  end

  def about
    
  end

  def contact
    @students = ['Sneha', 'Brendan', 'Andrew', 'Alex', 'Bassel', 'John']
    puts "@students #{@students}"

    puts "params #{params}"
    if params[:member].present?
      @students = @students.select {|student| student == params[:member]}
    end
  end
end
