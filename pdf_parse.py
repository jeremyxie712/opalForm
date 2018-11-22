from PyPDF2 import PdfFileWriter, PdfFileReader
import PyPDF2
import io
import sys
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from reportlab.pdfbase import pdfform
from reportlab.lib.colors import magenta, pink, blue, green, red, black, white
from firebase import firebase
import firebase_admin
from firebase_admin import credentials
from mysql import  connector

def connect(id):
    #id = 9999996
    config = {
        'user': 'root',
        'password': 'root',
        'unix_socket': '/Applications/MAMP/tmp/mysql/mysql.sock',
        'database': 'OpalDB_Student1809',
        'raise_on_warnings': True,
    }

    link = connector.connect(**config)
    cur = link.cursor()
    query = "SELECT * FROM Patient WHERE PatientId = %s"
    cur.execute(query, (id,))
    result = cur.fetchall()[0]
    cur.close()
    link.close()
    return result

    # cred = credentials.Certificate('/Users/JeremyXie/Documents/Opal/keen-opus-199602-firebase-adminsdk-4rup6-acf37a08e9.json')
    # default_app = firebase_admin.initialize_app(cred)
    # firebase_admin.initialize_app(cred, {
    #     'databaseURL': 'https://keen-opus-199602.firebaseio.com',
    #     'databaseAuthVariableOverride': None
    # })


def pdf_read(sql_result):
    packet = io.BytesIO()
    # Create a new PDF that was prepared for later uses
    # The logic behind this is that we map this canvas onto our original pdf
    can = canvas.Canvas(packet, pagesize=letter)
    form = can.acroForm
    #print(sql_result)
    can.drawString(78,612,str(sql_result[5])) #Printing the last name
    can.drawString(213,612,str(sql_result[4])) #Printing the first name
    can.drawString(360,612,str(sql_result[6])) #Printing alias
    can.drawString(78,585,str(sql_result[9])) #Printing the DOB
    can.drawString(350,569,str(sql_result[21])) #Printing the death date


    can.drawString(80,462,"") #Printing the telephone number, for the telephone number, we give user a choice
                              #to select which one is their primary phone number
    options = [ ' ', str(sql_result[11]), "5140000000" ]
    form.choice(name='TelNum', tooltip='Field choice1',
                value=' ',
                x=80, y=460, width=85, height=14,
                borderColor=white, fillColor=white,
                textColor=black, forceBorder=False, options=options)
    can.save()
    # We fill out four fields and then save the canvass


    # move to the beginning of the StringIO buffer
    packet.seek(0)
    new_pdf = PdfFileReader(packet)
    # read your existing PDF
    existing_pdf = PdfFileReader(open("testform.pdf", "rb"))

    page = existing_pdf.getPage(0)
    page2 = existing_pdf.getPage(1)
    page.mergePage(new_pdf.getPage(0))

    output = PdfFileWriter()
    output.addPage(page)
    output.addPage(page2)
    # finally, write "output" to a real file
    outputStream = open("new_testform.pdf", "wb")
    output.write(outputStream)
    outputStream.close()

def parse():
    # creating a pdf file object
    pdfFileObj = open('testform.pdf', 'rb')

    # creating a pdf reader object
    pdfReader = PyPDF2.PdfFileReader(pdfFileObj)

    # printing number of pages in pdf file
    print(pdfReader.numPages)

    # creating a page object
    pageObj = pdfReader.getPage(0)

    # extracting text from page
    print(pageObj.extractText())

    # closing the pdf file object
    pdfFileObj.close()


def main():
    p = pdfbox.PDFBox()
    text = p.extract_text('/home/ml/lyu40/PycharmProjects/paint/testform.pdf')
    print(text.encode('utf-8'))


if __name__ == '__main__':
     sql_result = connect(9999996)
     pdf_read(sql_result)
    # parse()



