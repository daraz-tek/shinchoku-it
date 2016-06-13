class ReportDecorator < ApplicationDecorator
  def markdowned_content
    h.qiita_markdown object.content
  end
end
