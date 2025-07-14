#!/bin/bash

# Create lib directory if it doesn't exist
mkdir -p docs/lib

# Download PDF.js
wget https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.min.js -O docs/lib/pdf.min.js
wget https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.worker.min.js -O docs/lib/pdf.worker.min.js

# Download Tesseract.js
wget https://cdnjs.cloudflare.com/ajax/libs/tesseract.js/4.1.1/tesseract.min.js -O docs/lib/tesseract.min.js
wget https://cdnjs.cloudflare.com/ajax/libs/tesseract.js/4.1.1/tesseract-core.wasm.js -O docs/lib/tesseract-core.wasm.js
wget https://cdnjs.cloudflare.com/ajax/libs/tesseract.js/4.1.1/tesseract-worker.min.js -O docs/lib/tesseract-worker.min.js

# Download docx.js
wget https://cdnjs.cloudflare.com/ajax/libs/docx/7.8.2/docx.min.js -O docs/lib/docx.min.js

# Download FileSaver.js
wget https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js -O docs/lib/FileSaver.min.js

# Download language data
mkdir -p docs/tessdata
wget https://github.com/naptha/tessdata/raw/gh-pages/4.0.0/eng.traineddata -O docs/tessdata/eng.traineddata
wget https://github.com/naptha/tessdata/raw/gh-pages/4.0.0/fra.traineddata -O docs/tessdata/fra.traineddata
wget https://github.com/naptha/tessdata/raw/gh-pages/4.0.0/spa.traineddata -O docs/tessdata/spa.traineddata
wget https://github.com/naptha/tessdata/raw/gh-pages/4.0.0/deu.traineddata -O docs/tessdata/deu.traineddata

echo "All libraries downloaded successfully!"
