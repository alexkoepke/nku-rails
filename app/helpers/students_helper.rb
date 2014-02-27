module StudentsHelper
  def avatar_url(student)
    if student.image_url != "" 
      student.image_url
    else
    gravatar_id = Digest::MD5.hexdigest(student.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}"
    end
  end
end