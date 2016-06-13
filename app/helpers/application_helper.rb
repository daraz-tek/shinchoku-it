module ApplicationHelper

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
