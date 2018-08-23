class AtFutureValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    if attribute.present? && value < Date.today
      object.errors[attribute] << (options[:message] || 'must be in the future')
    end
  end
end
