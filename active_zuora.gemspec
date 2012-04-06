# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "active_zuora"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["anfleene"]
  s.date = "2012-01-24"
  s.description = "A client for Zuora API"
  s.email = "anfleene@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "Rakefile",
    "VERSION",
    "active_zuora.gemspec",
    "custom_fields.yml",
    "lib/active_zuora.rb",
    "lib/active_zuora/account.rb",
    "lib/active_zuora/amendment.rb",
    "lib/active_zuora/bill_run.rb",
    "lib/active_zuora/contact.rb",
    "lib/active_zuora/invoice.rb",
    "lib/active_zuora/invoice_item.rb",
    "lib/active_zuora/invoice_item_adjustment.rb",
    "lib/active_zuora/invoice_payment.rb",
    "lib/active_zuora/payment.rb",
    "lib/active_zuora/payment_method.rb",
    "lib/active_zuora/product.rb",
    "lib/active_zuora/product_rate_plan.rb",
    "lib/active_zuora/product_rate_plan_charge.rb",
    "lib/active_zuora/product_rate_plan_charge_tier.rb",
    "lib/active_zuora/product_rate_plan_charge_tier_data.rb",
    "lib/active_zuora/rate_plan.rb",
    "lib/active_zuora/rate_plan_charge.rb",
    "lib/active_zuora/rate_plan_charge_tier.rb",
    "lib/active_zuora/rate_plan_data.rb",
    "lib/active_zuora/refund.rb",
    "lib/active_zuora/subscribe_options.rb",
    "lib/active_zuora/subscribe_request.rb",
    "lib/active_zuora/subscribe_with_existing_account_request.rb",
    "lib/active_zuora/subscription.rb",
    "lib/active_zuora/subscription_data.rb",
    "lib/active_zuora/usage.rb",
    "lib/active_zuora/zobject.rb",
    "lib/zuora/ZUORA.rb",
    "lib/zuora/ZUORADriver.rb",
    "lib/zuora/ZUORAMappingRegistry.rb",
    "lib/zuora/ZuoraServiceClient.rb",
    "lib/zuora/api.rb",
    "lib/zuora_client.rb",
    "lib/zuora_interface.rb"
  ]
  s.homepage = "http://github.com/anfleene/active_zuora"
  s.require_paths = ["lib"]
  s.requirements = ["none"]
  s.rubygems_version = "1.8.10"
  s.summary = "Active Zuora"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap4r>, [">= 1.5.8"])
      s.add_runtime_dependency(%q<json_pure>, [">= 1.4.6"])
    else
      s.add_dependency(%q<soap4r>, [">= 1.5.8"])
      s.add_dependency(%q<json_pure>, [">= 1.4.6"])
    end
  else
    s.add_dependency(%q<soap4r>, [">= 1.5.8"])
    s.add_dependency(%q<json_pure>, [">= 1.4.6"])
  end
end
