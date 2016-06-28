class ReportDecorator < ApplicationDecorator
  def markdowned_content
    h.qiita_markdown object.content
  end

  def text
    Nokogiri::HTML.parse(markdowned_content).text.gsub(/[[:space:]]/, " ").strip
  end

  def new_badge
    if created_at > 3.days.ago
      h.content_tag :span, I18n.t('new'), class: "badge badge-new"
    end
  end
end
