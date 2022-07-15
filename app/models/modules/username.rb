module Username
  def user_name
    self.email.split('@')[0]
  end
end