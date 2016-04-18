module Viewerjs
  module ViewHelpers

    #options = {
    # viewer_alignment: 'right', #Possible values 'right' or 'left'
    # title: nil #If nothing or nil is provided then referred document(with extension) is used in viewer's header title else the given title)
    # zoom_mode: 'page-width' #Possible values are 'auto', 'page-actual', 'page-width', 'page-height', 'page-fit', 'custom'. Default it 'auto'
    # zoom_level: 1.5 #Only applicable if zoom_mode is set to 'custom'. Default zoom_level is 1.0 any value above will increase the zoom or will decrease if its less
    # }
    def viewerjs_viewer(options = {viewer_alignment: 'right', title: nil})

      options[:viewer_alignment] = (['right', 'left'].include?(options[:viewer_alignment]) ? options[:viewer_alignment] : 'left')
      _viewer = <<-EOM
              <div dir="#{{'right' => 'rtl', 'left' => 'ltr'}[options[:viewer_alignment]]}">
                <div id = "viewer">
                    <div id = "titlebar">
                        <div id = "documentName"></div>
                        <div id = "titlebarRight">
                            <button id = "presentation" class = "toolbarButton presentation" title = "Presentation"></button>
                            <button id = "fullscreen" class = "toolbarButton fullscreen" title = "Fullscreen"></button>
                            <button id = "download" class = "toolbarButton download" title = "Download"></button>
                        </div>
                   </div>
                    <div id = "toolbarContainer">
                        <div id = "toolbar">
                            <div id = "toolbarLeft">
                                <div id = "navButtons" class = "splitToolbarButton">
                                    <button id = "previous" class = "toolbarButton pageUp" title = "Previous Page"></button>
                                    <div class="splitToolbarButtonSeparator"></div>
                                    <button id = "next" class = "toolbarButton pageDown" title = "Next Page"></button>
                                </div>
                                <label id = "pageNumberLabel" class = "toolbarLabel" for = "pageNumber">Page:</label>
                                <input type = "number" id = "pageNumber" class = "toolbarField pageNumber"/>
                                <span id = "numPages" class = "toolbarLabel"></span>
                            </div>
                            <div id = "toolbarMiddleContainer" class = "outerCenter">
                                <div id = "toolbarMiddle" class = "innerCenter">
                                    <div id = 'zoomButtons' class = "splitToolbarButton">
                                        <button id = "zoomOut" class = "toolbarButton zoomOut" title = "Zoom Out"></button>
                                        <div class="splitToolbarButtonSeparator"></div>
                                        <button id = "zoomIn" class = "toolbarButton zoomIn" title = "Zoom In"></button>
                                    </div>
                                    <span id="scaleSelectContainer" class="dropdownToolbarButton">
                                        <select id="scaleSelect" title="Zoom" oncontextmenu="return false;">
                                            <option id="pageAutoOption" value="auto" selected>Automatic</option>
                                            <option id="pageActualOption" value="page-actual">Actual Size</option>
                                            <option id="pageWidthOption" value="page-width">Full Width</option>
                                            <option id="customScaleOption" value="custom"> </option>
                                            <option value="0.5">50%</option>
                                            <option value="0.75">75%</option>
                                            <option value="1">100%</option>
                                            <option value="1.25">125%</option>
                                            <option value="1.5">150%</option>
                                            <option value="2">200%</option>
                                        </select>
                                    </span>
                                    <div id = "sliderContainer">
                                        <div id = "slider"></div>
                                    </div>
                                </div>
                            </div>
                            <div id = "toolbarRight">
                            </div>
                        </div>
                    </div>
                    <div id = "canvasContainer">
                        <div id = "canvas"></div>
                    </div>
                    <div id = "overlayNavigator">
                        <div id = "previousPage"></div>
                        <div id = "nextPage"></div>
                    </div>
                    <div id = "overlayCloseButton">
                    &#10006;
                    </div>
                    <div id = "dialogOverlay"></div>
                    <div id = "blanked"></div>
                </div>
              </div>
      EOM
      raw(_viewer)
    end
  end
end
