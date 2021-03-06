class IdPdf < Prawn::Document
  def initialize(invoice)
    super()
               #{@invoice.id}
     @invoice = Invoice
    @positions = Position
    
    table_facture
    text_content
    table_content
  end

  

   def table_facture
    
    
   table([
 [{:content => "Faktura ", size: 15,:height => 40,:colspan => 3 }, {:content => "Numer", size: 10,:colspan => 3}, {:content => "" ,:colspan => 2,:rowspan => 2 }],[{:content => "Data wystawienia", size: 9, :colspan => 2 },{:content => "Data dostawy
towarow/wykonania uslugi", size: 9,:colspan => 2 },{:content => "Termin platnosci", size: 9,:height => 40,:colspan => 2 }],[{:content => "Sprzedawca", size: 9,:colspan => 4},{:content => "Nabywca", size: 9,:colspan => 4,:height => 40}]
 
]) do
row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.position = :center
      self.column_widths=(65)
  end
 
end
 
    

  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a heider and make its text bold. I mide the row background colors alternate between grey and white
    # Then I set the table column widths
    table id_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.position = :center
    end
  end
 def id_rows
    [[ 'Name', 'Price','Name', 'Price']] +
      @positions.map do |id|
      [ id.amount, id.unit,id.price_unit,id.id]
    end
  end
end
