(() => {
  document.querySelectorAll('div[data-fullscreen] figure svg, div[data-fullscreen] figure embed').forEach(panZoomElement => {
    const fullscreenContainer = panZoomElement.closest('[data-fullscreen]');
    const zoomButtons = fullscreenContainer.querySelectorAll('[data-figure-zoom]');
    let panZoom;

    const handleZoom = event => {
      if (!panZoom) {
        return;
      }

      switch (event.currentTarget.dataset.figureZoom) {
        case 'in':
          panZoom.zoomIn();
          break;

        case 'out':
          panZoom.zoomOut();
          break;

        default:
          panZoom.reset();
      }
    }

    fullscreenContainer.setAttribute('data-fullscreen-zoom', true);

    panZoomElement.addEventListener('load', function() {
      panZoom = svgPanZoom(panZoomElement)
    });

    window.addEventListener('resize', () => {
      if (panZoom) {
        panZoom.updateBBox();
        panZoom.reset();
      }
    });

    fullscreenContainer.addEventListener('openfullscreen', () => {
      if (panZoom) {
        panZoom.updateBBox();
        panZoom.reset();
      }
    });

    fullscreenContainer.addEventListener('closefullscreen', () => {
      if (panZoom) {
        panZoom.updateBBox();
        panZoom.reset();
      }
    });

    zoomButtons.forEach(button => {
      button.addEventListener('click', handleZoom);
    });
  });
})();
