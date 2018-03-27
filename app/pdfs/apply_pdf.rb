class ApplyPdf < Prawn::Document
  def initialize(apply)
    super(top_margin: 70)
    @apply = apply

    apply_number
    line_item
  end

  def apply_number
    text "Application No: #{@apply.id}", size: 30, style: :bold
  end

  def line_item
    move_down 20
    table [["First Name", "Last Name", "Aadhaar No.", "Date of Birth", "Father's/Husband's Name", "Gender", "Constituency"],
            [@apply.first_name, @apply.last_name, @apply.aadhaar, @apply.date_of_birth, @apply.father_husband_name, @apply.gender, @apply.constituency],
          ]
  end
end
