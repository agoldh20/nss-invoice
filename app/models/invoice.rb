class Invoice < ApplicationRecord
  has_many :tasks 
  belongs_to :customer

  def total_price
    tasks.pluck(:line_total).map { |total| total.to_i }.reduce(:+)
  end

  def build_invoice_pdf
    pdf = Prawn::Document.new
    pdf.image open("./app/assets/images/pdf_header.png"), width: 550, height: 100
    pdf.move_down 20
    pdf.formatted_text [{text: "Customer: ", styles: [:bold]}]
    pdf.text "#{customer.full_name}"
    pdf.text "#{customer.street_number} #{customer.street_name} #{customer.unit}"
    pdf.text "#{customer.city}, #{customer.state} #{customer.zip}"
    pdf.text "#{customer.home_phone} #{customer.cell_phone}"
    pdf.text "#{customer.email}"
    pdf.move_down 20
    pdf.formatted_text [{text: "Job: ", styles: [:bold]}, {text: "1000#{id}"}]
    tasks.each do |task|
      pdf.text "#{task.room.upcase}: #{task.info}. $#{task.line_total}"
    end
    pdf.move_down 20
    pdf.formatted_text [{text: "Total: ", styles: [:bold]}, {text: "$#{total_price}"}]

    pdf
  end
end
