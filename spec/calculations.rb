require_relative "app/controllers/calculations_controller"

Rspec.describe Calculation, "#mortgage_calculation_accuracy" do
  context "a new form submission" do
    it should "take in the params and create new calculation including total" do
      expect(Calculation.create(principal: 5000, interest: 0.025, years: 5).total). to eql(5625)
    end
  end
end
