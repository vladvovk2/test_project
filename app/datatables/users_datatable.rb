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
        column << user.id
      end
    end


  end

  def count
    User.count
  end

  def total_entries
    users.total_count
  end

  def users
    @users ||= fetch_users
  end

  def fetch_users
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    users = User.order("#{sort_column} #{sort_direction}")
    users = users.page(page).per(per_page)
    #users = users.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
    
  end

  def columns
    %w(first_name last_name address birthday id)
  end
end

