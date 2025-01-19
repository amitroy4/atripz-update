<?php

namespace App\Mail;

use PDF;
use App\Models\Order;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class customerMail extends Mailable
{
    use Queueable, SerializesModels;

    public $data;
    /**
     * Create a new message instance.
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: '[AtripZbd - Your ultimate Lifestyle]: New order #'. $this->data->id ,
        );
    }

    // public function build(){
    //     return $this->view('admin.email.customermail',[
    //         'order' => $this->data
    //     ]);
    // }

    public function build(){

        $pdf = $this->generateInvoicePDF($this->data->id);
        return $this->view('admin.email.customermail',[
            'order' => $this->data
        ])->attachData($pdf, 'invoice.pdf', [
            'mime' => 'application/pdf',
        ]);
    }

    public function generateInvoicePDF($id){

        $order = Order::where('id', $id)->first();
        // dd($order);

        if (!$order) {
            return 'Order not found';
        }

        $pdf= PDF::loadView('admin.order.invoice',['order'=>$order]);
        $mpdf = $pdf->Output('', 'S');

        return $mpdf;
    }
    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'admin.email.customermail',
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
