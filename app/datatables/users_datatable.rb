class UsersDatatable < ApplicationDatatable
  delegate :edit_user_path, to: :@view

private

  def data
    users.map do |user|
      [].tap do |column|
        column << user.first_name
        column << user.second_name
        column << user.address
        column << user.birthday.strftime("%B %e, %Y")
        column << user.id.to_s
    end
  end

end  # => end private

  def count
    User.count
  end

  def total_entries
    users.count
  end

  def users
    @users ||= fetch_users
  end

  def fetch_users
    users = User.order("#{sort_column} #{sort_direction}")
    users = users.page(page).per(per_page)
    user_input = params[:search][:value] 

    if user_input.present?
      users = User.full_text_search(user_input)
    end

    users
  end

  def columns
    %w(first_name second_name address birthday id)
  end
end

