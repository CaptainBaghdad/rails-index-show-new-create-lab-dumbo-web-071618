class CouponsController <ApplicationController
  
 def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    byebug
    @coupon = Coupon.create(coupon_code: params["coupon"], store: params["store"])
    
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
 
end 