class AddZhLocale < ActiveRecord::Migration[8.0]
  def up
    Locale.find_or_create_by!(abbreviation: 'zh') do |locale|
      locale.name              = '中文'
      locale.name_in_english   = 'Chinese'
      locale.language_direction = 'ltr'
    end
  end

  def down
    Locale.find_by(abbreviation: 'zh')&.destroy
  end
end
