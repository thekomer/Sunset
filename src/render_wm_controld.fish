set -l wm 'close' 'close_prelight' 'close_pressed' 'close_unfocused' 'grid-selection-unchecked' 'grid-selection-checked' 'maximize' 'maximize_prelight' 'maximize_pressed' 'maximize_unfocused' 'menuitem-checkbox-checked' 'menuitem-checkbox-checked-hover' 'menuitem-checkbox-checked-insensitive' 'menuitem-checkbox-mixed' 'menuitem-checkbox-mixed-hover' 'menuitem-checkbox-mixed-insensitive' 'menuitem-checkbox-mixed-selected' 'menuitem-checkbox-mixed-unchecked' 'menuitem-checkbox-unchecked' 'menuitem-radio-checked' 'menuitem-radio-checked-hover' 'menuitem-radio-checked-insensitive' 'min' 'min_prelight' 'min_pressed' 'min_unfocused' 'pane-handle' 'pane-handle-vertical' 'radio-selected' 'radio-selected-insensitive' 'radio-unselected' 'radio-unselected-hover' 'radio-unselected-insensitive' 'scale-slider' 'scale-slider-hover' 'scale-slider-insensitive' 'switch-insensitive' 'switch-off' 'switch-on' 'switch-slider-insensitive' 'switch-slider-off' 'switch-slider-on'
set -l inpath './wm_controls/'
set -l outpath '../assets/'
echo "    ...rendering ; wait...   "
for item in $wm
	inkscape -z $inpath$item.svg -e $outpath$item.png; optipng -o7 --quiet $outpath$item.png
end
for item in $wm
	inkscape -z $inpath$item.svg -e $outpath$item@2.png --export-dpi=192; optipng -o7 --quiet $outpath$item@2.png
end
echo "    ...copying ./wm_controls/*.svg to ../assets/ ; wait...   "
cp ./wm_controls/*.svg ../assets/