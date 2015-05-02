Spree::Admin::ProductsController.class_eval do
  after_filter :set_user, only:[:create]

  private

  def set_user
    product = Spree::Product.last
    product.user_id = spree_current_user.id
    product.save
  end
 end
