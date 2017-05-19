# 利用bootstrap和Kaminari美化網頁 #Ruby on Rails
**小筆記，練習使用套件**

#### Step1.首先，先建立一個namecard 
```rb
rails g scaffold namecard name tel address company
```

#### Step2.加入gem 'bootstrap-sass'
```rb
gem 'bootstrap-sass', '~> 3.3.4'
bundle update
```
詳細請看此篇教學[好用的Gem#Bootstrap](https://github.com/momo200e/Ruby_Rails_Notes/blob/master/Gem_Notes.md#bootstrap) 
