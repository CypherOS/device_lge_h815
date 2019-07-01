export ANDROID_SET_JAVA_HOME=true
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export USE_NINJA=true

ifneq ($(TARGET_DEVICE),h815)
   add_lunch_combo aoscp_h815-userdebug
   add_lunch_combo aoscp_h815-user
   add_lunch_combo aoscp_h815_eng
endif
ifneq ($(TARGET_DEVICE),h815_usu)
   add_lunch_combo aoscp_h815_usu-userdebug
   add_lunch_combo aoscp_h815_usu-user
   add_lunch_combo aoscp_h815_usu_eng
endif
