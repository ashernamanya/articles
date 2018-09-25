class ArticlesController <ApplicationController
    
     def new 
        @article=Article.new 
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
            @article=Article.find(params[:id])
            if @article.show
                flash[:notice]="Thanks for creating an article"
                redirect_to article_path(@article)
                
            else 
                render 'show'
        end 
     end 
        
       def edit
            @article= Article.find(params[:id])
            if@article.edit
                flash[:notice]='Your Article has been successfully edited'
                
    redirect_to article_path(@article)
else 
    render 'edit'
end  
    end 
    
    
    
    def update
            @article=Article.find(params[:id])
            if @article.update
                flash[:notice]="your Articles has been successfully updated"
                redirect_to article_path(@article)
                
            else 
                render 'update'
        end 
     end 
        
 def article_params
    params.require(:article).permit(:title, :description)
 end 
 end 