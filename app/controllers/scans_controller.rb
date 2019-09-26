class ScansController < ApplicationController

  def new
    
  end

  def create
    cimke = params[:scan][:sorszam]
    cimke2 = cimke[1,cimke.length-1]
    puts cimke2
    elem = MOS_OWSD.find_by(U_raklap2: cimke2)
    if elem
      redirect_to show_path(elem)
    else
      render 'new'
    end
  end

  def show
    @elem = MOS_OWSD.find_by(Code: params[:format])
  end
end