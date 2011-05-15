module ApplicationHelper
  # this method handles the banner links at the top of the page
  def banner_link(img, size, link, hover_img)
    id = File.basename(img, File.extname(img))
    link_to (image_tag img, :id => id, :size => size), link, :onmouseout => "MM_swapImgRestore()", :onmouseover => "MM_swapImage('#{id}', '', '/assets/#{hover_img}', 1)"
  end
end
