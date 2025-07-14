// Configure Tesseract.js to use local files
Tesseract.workerOptions = {
    workerPath: 'lib/tesseract-worker.min.js',
    corePath: 'lib/tesseract-core.wasm.js',
    langPath: 'tessdata/'
};

// Configure PDF.js to use local worker
pdfjsLib.GlobalWorkerOptions.workerSrc = 'lib/pdf.worker.min.js';
