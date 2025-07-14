// Verify all libraries are loaded
window.addEventListener('load', () => {
    if (!window.Tesseract || !window.pdfjsLib || !window.docx || !window.saveAs) {
        document.getElementById('statusText').textContent = 
            "Error: Required libraries failed to load. Please refresh.";
        return;
    }
    
    // Configure PDF.js
    pdfjsLib.GlobalWorkerOptions.workerSrc = 'lib/pdf.worker.min.js';
    
    // Rest of your existing conversion code
    // ...
});

// Modified OCR function to use local files
async function runOCR(image, language) {
    return Tesseract.recognize(
        image,
        language,
        {
            logger: m => updateOCRProgress(m),
            workerOptions: {
                cachePath: 'tessdata/',
                cacheMethod: 'readOnly'
            }
        }
    );
}
