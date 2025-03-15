
##############################################################
#
# RASPI-THERAMIN
#
##############################################################
RASPI_THERAMIN_VERSION = f22c4217277e201cb79a7ebec21658f9f1559860
RASPI_THERAMIN_SITE = git@github.com:wlbe4/raspi-theramin.git
RASPI_THERAMIN_SITE_METHOD = git
RASPI_THERAMIN_MODULE_SUBDIRS = tof1020

define RASPI_THERAMIN_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/theramin all
endef

define RASPI_THERAMIN_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/theramin/raspi_theramin $(TARGET_DIR)/usr/bin
	$(INSTALL) -d 0755 $(TARGET_DIR)/lib/modules/$(LINUX_VERSION)/extra
	$(INSTALL) -m 0755 $(@D)/tof1020/tof1020_load $(TARGET_DIR)/lib/modules/$(LINUX_VERSION)/extra/
	$(INSTALL) -m 0755 $(@D)/tof1020/tof1020_unload $(TARGET_DIR)/lib/modules/$(LINUX_VERSION)/extra/
	$(INSTALL) -m 0755 $(@D)/tof1020/tof1020.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION)/extra/
	$(INSTALL) -d 0755 $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 0755 $(@D)/S99theramin $(TARGET_DIR)/etc/init.d/S99theramin
endef

$(eval $(kernel-module))
$(eval $(generic-package))

