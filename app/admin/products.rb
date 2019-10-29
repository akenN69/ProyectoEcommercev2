ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :photo, :unit_price, :description, :stock
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :photo, :unit_price, :description, :stock]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :name, :photo, :unit_price, :description, :stock, :image
  
  form do |f|
    f.semantic_errors # Muestra errores en el formulario
    f.input :image, as: :file
    f.input :name
    f.input :photo
    f.input :unit_price
    f.input :description
    f.input :stock
    f.actions # Agrega los botones Submit y Cancel
   end
end
