# To compile LESS in your own project:
# 1. Create a symlink from zotonic_mod_base/priv/lib/less to 'mod_base_less' in the current lib folder.
# 2a. For extending FontAwesome icons: create a symlink from zotonic_mod_artwork/priv/lib/font-awesome-4/less/ 'font_awesome_less' in the current lib folder.
# 2b. For extending Material Design icons: create a symlink from zotonic_mod_artwork/priv/lib/material-design/less/ 'material_design_less' in the current lib folder.
# 3. Add to the main less file: @import (reference) "z.icons/extend.less";
# 4a. With FontAwesome, run: lessc --include-path="../mod_base_less:../font_awesome_less" my-project.less ../css/my-project.css
# 4a. With Material Design, run: lessc --include-path="../mod_base_less:../material_design_less" my-project.less ../css/my-project.css

MATERIAL = ../../../../zotonic_mod_artwork/priv/lib-src/material-design/less
FA4 = ../../../../zotonic_mod_artwork/priv/lib-src/font-awesome-4/less

ICONS = ../../lib/css/z.icons.css
BRIDGE = ../../lib/css/z.bridge.css
MODAL = ../../lib/css/z.modal.css

all: $(ICONS) $(BRIDGE) $(MODAL)

$(ICONS): z.icons.less z.icons/* $(MATERIAL)/* $(FA4)/*
	lessc --include-path="$(FA4):$(MATERIAL)" \
	    z.icons.less \
	    $(ICONS)

$(BRIDGE): z.bridge.less
	lessc z.bridge.less $(BRIDGE)

$(MODAL): z.modal.less
	lessc z.modal.less $(MODAL)

