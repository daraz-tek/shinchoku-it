crumb :root do
  link "Home", root_path
end

crumb :reports do
  link "Reports", reports_path
end

crumb :report do |report|
  link report.title, report_path(report)
  parent :reports
end

crumb :new_report do
  link "新しいレポート", new_report_path
  parent :reports
end

crumb :edit_report do |report|
  link "編集", edit_report_path(report)
  parent :report, report
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
