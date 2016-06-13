require "test_helper"

describe ReportsController do
  let(:report) { reports :one }

  it "gets index" do
    get reports_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_report_url
    value(response).must_be :success?
  end

  it "creates report" do
    expect {
      post reports_url, params: { report: { content: report.content, title: report.title } }
    }.must_change "Report.count"

    must_redirect_to report_path(Report.last)
  end

  it "shows report" do
    get report_url(@report)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_report_url(@report)
    value(response).must_be :success?
  end

  it "updates report" do
    patch report_url(@report), params: { report: { content: report.content, title: report.title } }
    must_redirect_to report_path(report)
  end

  it "destroys report" do
    expect {
      delete report_url(@report)
    }.must_change "Report.count", -1

    must_redirect_to reports_path
  end
end
