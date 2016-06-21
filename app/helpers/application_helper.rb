module ApplicationHelper

  def qiita_markdown markdown
    processor = Qiita::Markdown::Processor.new
    content_tag :div, class: 'markdownContent markdownContent-headingEnabled' do
      processor.call(markdown)[:output].to_s.html_safe
    end
  end

end
