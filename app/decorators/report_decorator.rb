class ReportDecorator < ApplicationDecorator
  decorates_association :user

  def markdowned_content
    h.qiita_markdown object.content
  end

  def text
    h.truncate(Nokogiri::HTML.parse(markdowned_content).text.gsub(/[[:space:]]/, " ").strip, length: 200)
  end

  def new_badge
    if created_at > 3.days.ago
      h.content_tag :span, I18n.t('new'), class: "badge badge-new"
    end
  end
end
