from PyPDF2 import PdfFileWriter, PdfFileReader
import io
import sys
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter


def pdf_read():
    packet = io.BytesIO()
    # Create a new PDF that was prepared for later uses
    # The logic behind this is that we map this canvas onto our original pdf
    can = canvas.Canvas(packet, pagesize=letter)
    can.drawString(78, 612, "Xie")
    can.drawString(213, 612, "Jeremy")
    can.drawString(78,585,"01-11-2018")
    can.drawString(255,585,"007700-943-3715")
    can.save()
    # We fill out four fields and then save the canvas


    # move to the beginning of the StringIO buffer
    packet.seek(0)
    new_pdf = PdfFileReader(packet)
    # read your existing PDF
    existing_pdf = PdfFileReader(open("testform.pdf", "rb"))
    output = PdfFileWriter()

    # Get all the fields from the PDF
    #inFields = existing_pdf.getFields()
    #sys.stdout.write(inFields)

    # add the "watermark" (which is the new pdf) on the existing page
    page = existing_pdf.getPage(0)
    page2 = existing_pdf.getPage(1)
    page.mergePage(new_pdf.getPage(0))
    output.addPage(page)
    output.addPage(page2)
    # finally, write "output" to a real file
    outputStream = open("new_testform.pdf", "wb")
    output.write(outputStream)
    outputStream.close()






def main():
    p = pdfbox.PDFBox()
    text = p.extract_text('/home/ml/lyu40/PycharmProjects/paint/testform.pdf')
    print(text.encode('utf-8'))


if __name__ == '__main__':
    #main()
    pdf_read()



