module ApplicationHelper
  def bootstrap_class_for(flash_type)
    { success: "alert-sucess",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def formatted_amount(amount)
    number_to_currency amount / 100.0
  end
end
