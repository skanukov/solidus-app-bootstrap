def replace_refund_reason_or_create(old_name, new_name)
  refund_reason = Spree::RefundReason.find_by(name: old_name)
  if refund_reason.present?
    refund_reason.update_attribute(:name, new_name)
  else
    Spree::RefundReason.create(name: new_name)
  end
end

replace_refund_reason_or_create(Spree::RefundReason::RETURN_PROCESSING_REASON, 'Возврат товара и средств')
