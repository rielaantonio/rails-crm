class PeopleController < ApplicationController
  # GET /people
  def index
    @people = Person.paginate :page => params[:page]
  end

  # GET /people/1
  def show
    @person = Person.find(params[:id])
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /people
  def create
    @person = Person.new(params[:person])

    if @person.save
      flash[:notice] = 'Person was successfully created.'
      redirect_to(@person)
    else
      render :action => "new"
    end
  end

  # PUT /people/1
  def update
    @person = Person.find(params[:id])

    if @person.update_attributes(params[:person])
      flash[:notice] = 'Person was successfully updated.'
      redirect_to(@person)
    else
      render :action => "edit"
    end
  end

  # DELETE /people/1
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to(people_url)
  end
end
