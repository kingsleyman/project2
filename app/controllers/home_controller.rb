class HomeController < ApplicationController
  # List all events (show table of persons in HTML)
  def index
    sortable_column_order do |column, direction|
        @events = Event.sort_by(column, direction)
    end

    @events ||= Event.order_by('created_at desc').all.desc(:count)
  end

  # Show detail for an event with ID = params[:id] (in HTML)
  def show
    @event = Event.find_by(id: params[:id])
  end

end