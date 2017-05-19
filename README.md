# 利用bootstrap和Kaminari美化網頁 #Ruby on Rails
**小筆記，練習使用套件**

## Bootstrap
#### Step1.首先，先建立一個namecard 
```rb
rails g scaffold namecard name tel address company
```

#### Step2.加入gem 'bootstrap-sass'
```rb
gem 'bootstrap-sass', '~> 3.3.4'
bundle update
...

```
詳細請看此篇教學筆記[好用的Gem#Bootstrap](https://github.com/momo200e/Ruby_Rails_Notes/blob/master/Gem_Notes.md#bootstrap) 

加入之後就可以開始套用樣式羅^^

#### Step3.在views/layouts/application.html.erb 中，把<%= yield %>用div包起來，這樣才會套用bootstrap的樣式
```html
<div class="container">
  <%= yield %>
</div>
```
#### 並在views/namecads/index.html.erb中，幫table和btn美化，
```html
<table class="table table-hover">
```
```html
<td><%= link_to 'Show', namecard ,class:'btn btn-success'%></td>
```
這樣就美化完成了~~~

## Kaminari
#### Step.1 加入Kaminari
 ```ruby
# 先在gemfile裡面輸入

gem 'kaminari'

#並在終端機執行bundle install
 ```
### 使用方式
#### Step.1 在controllers/namecards_controller.rb 中，修改index的方法
 ```ruby
def index
  @namecards = Namecard.page(params[:page]).per(3)
end
 ```
#### Step.2 在views/namecards/index.html.erb，畫面中加入分頁
 ```ruby
<%= paginate @namecards  %>
```
詳細請看此篇教學筆記[好用的Gem#Kaminari](https://github.com/momo200e/Ruby_Rails_Notes/blob/master/Gem_Notes.md#Kaminari) 
