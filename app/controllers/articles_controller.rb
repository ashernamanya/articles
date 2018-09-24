class ArticlesController <ApplicationController
    
     def new 
        @article=Article.new 
        
  end 
        
 def create 
    @article=Article.new(article_params)
    @article.save
    redirect_to article_show(@article)
 end 
end 

 def article_params
    params.require(:article).permit(:title, :description, :reason)
 end 
 
     