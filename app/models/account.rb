class Account < ApplicationRecord
  scope :normal, -> { where(is_normal: true).where(is_export: false) }
  scope :unnormal, -> { where(is_normal: false) }
  scope :normal_export, -> { where(is_normal: true).where(is_export: true) }
end
