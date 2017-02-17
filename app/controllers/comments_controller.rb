class CommentsController < ApplicationController
  def  create
   @invoice= Invoice.find(params[:invoice_id])
   @comment = @invoice.comments.create(params[:comment].permit(:name,:body))
   redirect_to invoice_path(@invoice)
  end
  def  destroy
   @invoice= Invoice.find(params[:invoice_id])
   @comment = @invoice.comments.find(params[:id])
   @comment.destroy
   redirect_to invoice_path(@invoice)
  end
end
