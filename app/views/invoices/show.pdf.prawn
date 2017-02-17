require 'prawn/table'


 items = @invoices.map do |item|
     [
       item.summary,
       item.designation,
      item.facture,
      item.date_raised
          ]
 

pdf. table ([
 [{:content => "Faktura 
   " +
 item.summary   ,:background_color => 'DDDDDD', size: 14,:height => 40,:colspan => 3 }, {:content => "Numer: " + item.facture, size: 10,:colspan => 3}, {:content => "" ,:colspan => 2,:rowspan => 2 }],[{:content => item.date_raised + "
 " + "Data wystawienia", size: 9, :colspan => 2 },{:content => item.date + "
" + "Data dostawy
towarow/wykonania uslugi", size: 9,:colspan => 2 },{:content =>  item.payment.to_s + "
" + "Termin platnosci", size: 9,:height => 40,:colspan => 2 }],[{:content => "Sprzedawca:
" + 
item.client.name, size: 9,:colspan => 4},{:content => "Nabywca:" + "
'zalogowany' "  , size: 9,:colspan => 4,:height => 40}]
 
]) do
row(0..5).font_style = :bold
row(1..9).cell_style = :right
columns(1..9).colors = :black
columns(0..100).align = :center


      self.header = true
      
      self.position = :left
      self.column_widths=(65)
   
  end
end
pdf.move_down 20
tabs = @invoice.positions.map do |tab|
     [ 
       tab.Nazwa,
       tab.PKWiU,
      tab.amount,
      tab.unit,
      tab.VAT ,
      tab.VAT,
      tab.total,
       tab.VAT*tab.total*0.01,
       tab.VAT+(tab.VAT*tab.total*0.01)       
          ]
end
pdf.table ([[{:content => "Nazwa " ,:width => 200, size: 7},{:content => "PKWiU " ,:width => 40, size: 7},{:content => "ilosc " ,:width => 40, size: 7},{:content => "j.m. " ,:width => 40, size: 7},{:content => "Cena netto " ,:width => 40, size: 7},{:content => "Kwota nettio " ,:width => 40, size: 7},{:content => "Stawka VAT " ,:width => 40, size: 7},{:content => "Kwota VAT " ,:width => 40, size: 7},{:content => "kwota brutto " ,:width => 50, size: 7}]]) ,
:row_colors => ['DDDDDD'] do
row(0..5).font_style = :bold
row(1..9).cell_style = :right
columns(0..100).align = :left


      
      self.row_colors = ['DDDDDD']
      self.position = :left
      
   
  end
  
pdf.table tabs,
  
  :header => ["nazwa","ilosc","cena","jm","kwota"],
  :column_widths => [200,40,40,40,40,40,40,40,50]
data = @invoice.positions.map do |tab|
     [
       "Razem",
       tab.PKWiU,
      tab.amount,
      tab.unit,
      tab.VAT
            
          ]
a= [[ tab.amount,12 ]]
total = 0


n=0



 
end
total4 = 0
r=@invoice.positions.map do |tab|
 tab.VAT+(tab.VAT*tab.total*0.01) end
total4 = 0
r.each do |i|
  total4 += i
end 

total3 = 0
r=@invoice.positions.map do |tab|
 tab.VAT*tab.total*0.01 end
total3 = 0
r.each do |i|
  total3 += i
end 

total2 = 0
r=@invoice.positions.map do |tab|
 tab.total end
total2 = 0
r.each do |i|
  total2 += i
end 

total = 0
r=@invoice.positions.map do |tab|
 tab.VAT end
total = 0
r.each do |i|
  total += i
end 

pdf.table [[{:content => "Razem: " , size: 8},"",total2,total3,total4],[{:content => "W tym: " ,:background_color => 'DDDDDD', size: 8},total ,total2,total3,total4 ]],:position => 320,

  :header => ["nazwa","ilosc","cena","jm","kwota"],
  :column_widths => [40,40,40,40,50,40,70]


pdf.draw_text @invoice.remark, :at => [1,400]
