module ApplicationHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_user?
    !!current_user
  end
  alias_method :logged_in?, :current_user?

  def current_team
    @current_team ||= current_user.team
  end

  def qiita_markdown markdown
    processor = Qiita::Markdown::Processor.new
    content_tag :div, class: 'markdownContent markdownContent-headingEnabled' do
      processor.call(markdown)[:output].to_s.html_safe
    end
  end

  def markdown_example
    qiita_markdown <<EOS
# Headline 1

## Headline 2

Hello Kitty, Hello Kitty, Hello Kitty Good Pxxxy and Txxxy :cat: :dog: :bow:

### Headline 3

foo, bar, baz
hoge, fuga

```ruby:hello_kitty.rb
def hello_kitty
  puts 'Hello Kitty'
  puts "iiiiiiiiii"
  puts "wwwwwwwwww"
end
```
EOS
  end
end
