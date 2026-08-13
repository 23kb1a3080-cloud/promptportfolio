from pathlib import Path

lines = [
    'Srinivas Pulikonda',
    'Artificial Intelligence & Data Science Undergraduate',
    'Email: srinivaspulikonda4@gmail.com',
    'Phone: +91 7680925216',
    'GitHub: github.com/23kb1a3080-cloud',
    'LinkedIn: linkedin.com/in/srinivas-pulikonda-b6b91a300',
    'Location: Tirupati, Andhra Pradesh',
    '',
    'Profile:',
    'AI and Data Science undergraduate focused on building practical solutions using Python, Machine Learning, NLP, SQL, and web technologies.',
    '',
    'Skills:',
    'Python, SQL, Machine Learning, Data Analytics, NLP, HTML, CSS, Git, GitHub',
    '',
    'Projects:',
    'InterviewIQ, Farm2Home, Department Chatbot, AI Memory Graph, Farm, Student Registration System, Smart Attendance, Safety Helmet Detection',
    '',
    'Experience:',
    'Vibe Coding Virtual Internship | SmartBridge / APSCHE | 120 Hours | 2 Months',
]

# Escape PDF text safely.
def pdf_escape(text: str) -> str:
    return text.replace('\\', '\\\\').replace('(', '\\(').replace(')', '\\)')

stream = 'BT\n/F1 20 Tf\n72 760 Td\n'
for index, line in enumerate(lines):
    if line == '':
        continue
    stream += f'({pdf_escape(line)}) Tj\n'
    if index == 0:
        stream += '0 -28 Td\n'
    else:
        stream += '0 -18 Td\n'
stream += 'ET'
stream_bytes = stream.encode('latin-1', 'replace')

objects = [
    '<< /Type /Catalog /Pages 2 0 R >>',
    '<< /Type /Pages /Kids [3 0 R] /Count 1 >>',
    '<< /Type /Page /Parent 2 0 R /MediaBox [0 0 612 792] /Contents 4 0 R /Resources << /Font << /F1 5 0 R >> >> >>',
    f'<< /Length {len(stream_bytes)} >>\nstream\n{stream}\nendstream',
    '<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>',
]

pdf = bytearray(b'%PDF-1.4\n')
offsets = [0]
for obj_num, obj in enumerate(objects, start=1):
    offsets.append(len(pdf))
    pdf.extend(f'{obj_num} 0 obj\n{obj}\nendobj\n'.encode('latin-1', 'replace'))

xref_pos = len(pdf)
pdf.extend(f'xref\n0 {len(objects) + 1}\n'.encode('latin-1', 'replace'))
pdf.extend(b'0000000000 65535 f \n')
for off in offsets[1:]:
    pdf.extend(f'{off:010d} 00000 n \n'.encode('latin-1', 'replace'))
pdf.extend(f'trailer\n<< /Size {len(objects) + 1} /Root 1 0 R >>\nstartxref\n{xref_pos}\n%%EOF\n'.encode('latin-1', 'replace'))

Path('resume.pdf').write_bytes(pdf)
print('Created resume.pdf successfully.')
