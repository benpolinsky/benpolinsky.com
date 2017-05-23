module ApplicationHelper
  def themes_for_select
    options_for_select(["default", "morning", "afternoon", "evening", "night", "nightOwl"])
  end
end
