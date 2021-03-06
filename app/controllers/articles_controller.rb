class ArticlesController <ApplicationController
    
def new
@article = Article.new

end
 end 

def create

@article = Article.new(article_params)

if @article.save

flash[:notice] = "Article was successfully created"

redirect_to article_path(@article)

else

render 'new'

end
 end

def show

@article = Article.find(params[:id])

end

def edit 
 
 @article=Article.find(params[:id])
end 


def update

@article = Article.find(params[:id])

if @article.update(article_params)

flash[:notice] = "Article was successfully updated"

redirect_to article_path(@article)

else

render 'edit'

end

end

def edit 
 @article=Article.find(params[:id])
 if @article.edit(article_params)
  flash[:notice ]= "Article Succesully has been edited"
  redirect_to_article(@article)
else 
 render 'update'
end 
end 

private

def article_params

params.require(:article).permit(:tittle, :description, :reason)

end