ifndef ORBISDEV
$(error ORBISDEV, is not set)
endif

target := ps4_lib
OutPath := lib
TargetFile := libyaml-cpp
AllTarget = $(OutPath)/$(TargetFile).a 

include $(ORBISDEV)/make/ps4sdklib.mk
CompilerFlagsCpp += -std=c++17 -DHAVE_CONFIG_H -D_U_="__attribute__((unused))" -D__ORBIS__=1 -D_ORBIS_ -DNDEBUG -D_BSD_SOURCE -fexceptions -frtti
IncludePath += -I$(ORBISDEV)/usr/include -I$(ORBISDEV)/usr/include/c++/v1 -Iinclude  


$(OutPath)/$(TargetFile).a: $(ObjectFiles)
	$(dirp)
	$(archive)

install:
	@cp $(OutPath)/$(TargetFile).a $(DESTDIR)$(ORBISDEV)/usr/lib
	@cp -r include/* $(DESTDIR)$(ORBISDEV)/usr/include
	@ls $(DESTDIR)$(ORBISDEV)/usr/include
	@echo "$(TargetFile) Installed!"
