class Invoice < ApplicationRecord
  has_many :tasks 
  belongs_to :customer

  def total_price
    tasks.pluck(:line_total).map { |total| total.to_i }.reduce(:+)
  end

  def build_invoice_pdf
    pdf = Prawn::Document.new
    pdf.image open("./app/assets/images/nss_pdf_img.png"), :width => 225, :height => 75
    pdf.formatted_text [{:text => "Northshore Stone Restoration\n847-432-0480"}], :align => :right

    pdf
  end
end
