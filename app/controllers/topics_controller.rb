class TopicsController < ApplicationController
  def new
    render :new
  end
  # ここから
  def new
    @post = Post.new
    render :new
  end
  
  def index
    @title = params[:title]
    if @title.present?
      @posts = Post.where('title LIKE ?', "%#{@title}%")
    else
      @posts = Post.all
    end
    render :index
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to new_topic_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, )
  end
  # ここまで
end

  