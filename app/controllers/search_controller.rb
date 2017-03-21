class SearchController < ApplicationController
  def index
    @subjects = Subject.all.map{ |subj| [ subj.name, subj.id ]}
  end

  def results
    @courses = Course.all
    @subjects = Subject.all
    if params[:course]
      @courses = Course.where(name: params[:course])
    elsif params[:subj_id]
      #@courses = Course.where(course contains subject)
    end
  end
end
