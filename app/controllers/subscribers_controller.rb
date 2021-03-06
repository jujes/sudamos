class SubscribersController < InheritedResources::Base
  actions :create

  def create
    create! do |success, failure|
      failure.html { redirect_to [:root], alert: t("flash.subscribers.create.alert") }
    end
  end
end