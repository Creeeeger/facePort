.class public Lcom/samsung/android/settings/Rune;
.super Ljava/lang/Object;
.source "Rune.java"


# static fields
.field public static final AUTO_BRIGHTNESS_TYPE:I

.field public static final COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

.field public static final COVERSCREEN_SETTINGS:Z

.field public static final FEATURE_APPS_MANAGE_SOURCES_DENY_ALL:Z

.field public static final FEATURE_BATTERY_INFO_REGULATORY:Z

.field public static final FEATURE_ESIM_CHECKBOX_DEFAULT_VALUE:Z

.field public static final FEATURE_FACTORY_DATA_RESET_PASSWORD:Z

.field public static final FEATURE_MANAGE_UNKNOWN_APPS:Z

.field public static final FEATURE_MDE_SUGGESTION:Z

.field public static final FEATURE_MOBILE_DATA_DEFAULT_PROTOCOL_BY_CGU:Z

.field public static final FEATURE_MOBILE_DATA_OFF_POPUP_DO_NOT_SHOW_AGAIN:Z

.field public static final FEATURE_NA_ESIM_RESET:Z

.field public static final FEATURE_REGULATORY_INFO_MANUFACTURE_COUNTRY_FROM_SERIAL:Z

.field public static final FEATURE_REMOVE_TZ_WESTERN_SAHARA_IN_MOROCCO:Z

.field public static final FEATURE_RESET_NETWORK_ATT_PASSWORD_CONFIRM:Z

.field public static final FEATURE_RESET_NETWORK_DATA_USAGE_CHN:Z

.field public static final FEATURE_SIM_LOCK_KOR:Z

.field public static final FEATURE_SIM_LOCK_SIM_TO_UIM:Z

.field public static final FEATURE_STATUS_INFO_IMEI_BARCODE:Z

.field public static final FRONT_COVER_SCREEN_ENABLE_TO_SHOW_SETTINGS:Z

.field public static final LOCKSCREEN_SECURITY_HIDE_SKIP_SUW_BUTTON:Z

.field public static final NOTIS_DND_DEFAULT_VALUE:Z

.field public static final NOTIS_LOCKSCREEN_SHOW_CONTENT_WHEN_UNLOCKED:Z

.field public static final NOTIS_LOCKSCREEN_SHOW_CONTENT_WHEN_UNLOCKED_DEFAULT_ON:Z

.field public static final SEC_FEATURE_HOMEHUB:Z

.field public static final STATBAR_NETWORK_INFO_IS_SHOWING:Z

.field public static final STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

.field public static final STATUS_NETWORK_SIM_MOBILITY:Z

.field public static final SUPPORT_AOD:Z

.field public static final SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

.field public static final SUPPORT_CHECK_SA_PASSWORD_WHEN_FDR:Z

.field public static final SUPPORT_COVER_SCREEN_BRIGHTNESS_MODE:Z

.field public static final SUPPORT_DARK_MODE_FIRST_MENU:Z

.field public static final SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

.field public static final SUPPORT_DISABLE_ACCOUNTS_SETTINGS:Z

.field public static final SUPPORT_DISABLE_QUICK_PANEL_SYNC:Z

.field public static final SUPPORT_DUAL_DESKTOP_MODE:Z

.field public static final SUPPORT_EXTRA_BRIGHT:Z

.field public static final SUPPORT_FEATURE_INAPP_NOTI_WITH_BUNDLE:Z

.field public static final SUPPORT_FEATURE_REGULATORY_INFO_COUNTRY_COSTA_RICA:Z

.field public static final SUPPORT_FEATURE_REGULATORY_INFO_FOR_COSTA_RICA:Z

.field public static final SUPPORT_NOTI_CHN_SMART_MANAGER:Z

.field public static final SUPPORT_REDUCED_BRIGHTNESS_LIMIT:Z

.field public static final SUPPORT_STANDALONE_DESKTOP_MODE:Z

.field public static final SUPPORT_TEXT_REQUEST_ABOUTDEVICE_IMS_REGISTRATION_STATUS_SUMMARY_BY_VZW:Z

.field public static final SUPPORT_TEXT_REQUEST_AIRPLANE_MODE_BY_ATT:Z

.field public static final SUPPORT_TEXT_REQUEST_APPS_OVERLAY_WINDOW_TITLE_BY_VZW:Z

.field public static final SUPPORT_TEXT_REQUEST_APPS_WRITE_SETTING_TITLE_BY_VZW:Z

.field public static final SUPPORT_TEXT_REQUEST_CONNECTIONS_WIFICALLING_TITLE_BY_ZVV:Z

.field public static final SUPPORT_TEXT_REQUEST_REGION_TAIWAN_TO_CHINA:Z

.field public static final SUPPORT_TEXT_REQUEST_TIMEZONE_JERUSALEM_TO_TELAVIV_BY_TURKEY:Z

.field public static final SUPPORT_TEXT_REQUEST_TIMEZONE_SHANGHAI_TO_BEIJING_BY_CHINA:Z

.field private static final homeHubFeature:Ljava/lang/String;

.field private static mSupportDesktopMode:Ljava/lang/Boolean;

.field private static mSupportDisplayCut:Ljava/lang/Boolean;

.field private static mSupportLEDIndicator:Ljava/lang/Boolean;

.field protected static final sLocale:Ljava/lang/String;

.field private static final singleSKU:Z

.field private static supportMultiSIM:I

.field private static final unified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 86
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x22344

    if-lt v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_MDE_SUGGESTION:Z

    const/4 v0, 0x0

    .line 179
    sput-object v0, Lcom/samsung/android/settings/Rune;->mSupportDesktopMode:Ljava/lang/Boolean;

    const/4 v4, -0x1

    .line 184
    sput v4, Lcom/samsung/android/settings/Rune;->supportMultiSIM:I

    .line 187
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEX_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "dual"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_DUAL_DESKTOP_MODE:Z

    .line 189
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "standalone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_STANDALONE_DESKTOP_MODE:Z

    .line 197
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x1afa4

    if-lt v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_FEATURE_INAPP_NOTI_WITH_BUNDLE:Z

    .line 253
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CGU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_MOBILE_DATA_DEFAULT_PROTOCOL_BY_CGU:Z

    .line 254
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_MOBILE_DATA_OFF_POPUP_DO_NOT_SHOW_AGAIN:Z

    .line 262
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_AIRPLANE_MODE_BY_ATT:Z

    .line 278
    sput-object v0, Lcom/samsung/android/settings/Rune;->mSupportDisplayCut:Ljava/lang/Boolean;

    const-string v4, "4"

    .line 282
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/Rune;->AUTO_BRIGHTNESS_TYPE:I

    .line 285
    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/class/power_supply/battery/time_to_full_now"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    .line 286
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "aodversion"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_AOD:Z

    .line 287
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_EXTRA_BRIGHT:Z

    .line 289
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v6, 0x1ae14

    if-lt v4, v6, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_DARK_MODE_FIRST_MENU:Z

    .line 291
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_REDUCED_BRIGHTNESS_LIMIT:Z

    .line 294
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "VPP"

    if-nez v4, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v2

    :goto_4
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_OVERLAY_WINDOW_TITLE_BY_VZW:Z

    .line 295
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move v4, v3

    goto :goto_6

    :cond_6
    :goto_5
    move v4, v2

    :goto_6
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_WRITE_SETTING_TITLE_BY_VZW:Z

    .line 296
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v8, "ZVV"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_CONNECTIONS_WIFICALLING_TITLE_BY_ZVV:Z

    .line 307
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v8, "CountryISO"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "KR"

    .line 306
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_APPS_MANAGE_SOURCES_DENY_ALL:Z

    .line 311
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_MANAGE_UNKNOWN_APPS:Z

    .line 346
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    .line 347
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_SIM_TO_UIM:Z

    .line 349
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v8, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    .line 350
    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_FACTORY_DATA_RESET_PASSWORD:Z

    .line 360
    invoke-static {}, Lcom/samsung/android/settings/general/GeneralUtils;->isNAEsimResetConcept()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_NA_ESIM_RESET:Z

    .line 362
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_RESET_NETWORK_DATA_USAGE_CHN:Z

    .line 363
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_RESET_NETWORK_ATT_PASSWORD_CONFIRM:Z

    .line 386
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    move v4, v3

    goto :goto_8

    :cond_8
    :goto_7
    move v4, v2

    :goto_8
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_SHANGHAI_TO_BEIJING_BY_CHINA:Z

    .line 387
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isTurkeyModel()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_JERUSALEM_TO_TELAVIV_BY_TURKEY:Z

    .line 389
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_TAIWAN_TO_CHINA:Z

    .line 392
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MWD"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v8, "FWD"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_9

    :cond_9
    move v4, v3

    goto :goto_a

    :cond_a
    :goto_9
    move v4, v2

    :goto_a
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_REMOVE_TZ_WESTERN_SAHARA_IN_MOROCCO:Z

    .line 406
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isVzwModel()Z

    move-result v4

    xor-int/2addr v4, v2

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_CHECK_SA_PASSWORD_WHEN_FDR:Z

    .line 407
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_ESIM_CHECKBOX_DEFAULT_VALUE:Z

    .line 414
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

    .line 419
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_ABOUTDEVICE_IMS_REGISTRATION_STATUS_SUMMARY_BY_VZW:Z

    .line 421
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v6, "GTO"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "GLO"

    if-nez v4, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v9, "TFG"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_b

    :cond_b
    move v4, v3

    goto :goto_c

    :cond_c
    :goto_b
    move v4, v2

    :goto_c
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_FEATURE_REGULATORY_INFO_FOR_COSTA_RICA:Z

    .line 423
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    const-string v9, "COSTA RICA"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_d

    :cond_d
    move v4, v3

    goto :goto_e

    :cond_e
    :goto_d
    move v4, v2

    :goto_e
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_FEATURE_REGULATORY_INFO_COUNTRY_COSTA_RICA:Z

    .line 425
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_STATUS_INFO_IMEI_BARCODE:Z

    const-string/jumbo v4, "ro.product.model"

    .line 427
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "SM-S908N"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/samsung/android/settings/Rune;->FEATURE_REGULATORY_INFO_MANUFACTURE_COUNTRY_FROM_SERIAL:Z

    .line 431
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v8, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_SETTINGS"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "SM-A236B"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_f

    :cond_f
    move v4, v3

    goto :goto_10

    :cond_10
    :goto_f
    move v4, v2

    :goto_10
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_BATTERY_INFO_REGULATORY:Z

    .line 470
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v6, 0x18894

    if-lt v4, v6, :cond_11

    move v4, v2

    goto :goto_11

    :cond_11
    move v4, v3

    :goto_11
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->NOTIS_DND_DEFAULT_VALUE:Z

    .line 527
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_SHOW_CONTENT_WHEN_UNLOCKED"

    .line 528
    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "support"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->NOTIS_LOCKSCREEN_SHOW_CONTENT_WHEN_UNLOCKED:Z

    .line 530
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    .line 531
    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "defaulton"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->NOTIS_LOCKSCREEN_SHOW_CONTENT_WHEN_UNLOCKED_DEFAULT_ON:Z

    .line 561
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->LOCKSCREEN_SECURITY_HIDE_SKIP_SUW_BUTTON:Z

    .line 568
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v8, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "WATCHFACE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->FRONT_COVER_SCREEN_ENABLE_TO_SHOW_SETTINGS:Z

    .line 570
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->COVERSCREEN_SETTINGS:Z

    .line 612
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v8, "K06"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v8, "K01"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_12

    :cond_12
    move v4, v3

    goto :goto_13

    :cond_13
    :goto_12
    move v4, v2

    :goto_13
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_DISABLE_ACCOUNTS_SETTINGS:Z

    .line 614
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_14

    :cond_14
    move v4, v3

    goto :goto_15

    :cond_15
    :goto_14
    move v4, v2

    :goto_15
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_DISABLE_QUICK_PANEL_SYNC:Z

    .line 642
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableNoSubDisplay()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_COVER_SCREEN_BRIGHTNESS_MODE:Z

    .line 660
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 661
    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/Rune;->sLocale:Ljava/lang/String;

    .line 664
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_SystemUI_ConfigPolicyDisplayOpLogo"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/settings/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    const-string v6, "ORANGE"

    .line 666
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "HOME"

    .line 667
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "BOTH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    move v4, v2

    goto :goto_16

    :cond_17
    move v4, v3

    :goto_16
    sput-boolean v4, Lcom/samsung/android/settings/Rune;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    const-string/jumbo v4, "mdc.singlesku"

    .line 669
    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->singleSKU:Z

    const-string/jumbo v4, "mdc.unified"

    .line 670
    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->unified:Z

    .line 676
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportTSS20()Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/Rune;->STATUS_NETWORK_SIM_MOBILITY:Z

    .line 854
    sput-object v0, Lcom/samsung/android/settings/Rune;->mSupportLEDIndicator:Ljava/lang/Boolean;

    .line 1761
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/Rune;->homeHubFeature:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 1762
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_17

    :cond_18
    move v2, v3

    :goto_17
    sput-boolean v2, Lcom/samsung/android/settings/Rune;->SEC_FEATURE_HOMEHUB:Z

    .line 1780
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sm_cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_NOTI_CHN_SMART_MANAGER:Z

    return-void
.end method

.method public static applyDateAndTimeForChinaAndWifi(Landroid/content/Context;)Z
    .locals 0

    .line 1001
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForWifi(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static applyDateAndTimeForWifi(Landroid/content/Context;)Z
    .locals 0

    .line 997
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getCarrierInfoLogo()Ljava/lang/String;
    .locals 5

    .line 702
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isMultiSimSupported()Z

    move-result v0

    const-string v1, ""

    const-string v2, "CarrierFeature_SystemUI_ConfigPolicyDisplayOpLogo"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getPrimarySimSlot()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSlotIdAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getPrimarySimSlot()I

    move-result v4

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 705
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ro.csc.country_code"

    .line 802
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconBrandingFromCarrier(I)Ljava/lang/String;
    .locals 4

    .line 695
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSlotIdAvailable(I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 696
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 698
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOmcNWSalesCode()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "ro.csc.omcnw_code"

    .line 816
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Rune"

    const-string/jumbo v1, "readSalesCode failed"

    .line 818
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getOmcVersion()F
    .locals 3

    .line 1542
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string v2, "0"

    .line 1543
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getPrimarySimSlot()I
    .locals 1

    .line 691
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    .line 806
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimpleStatsuBarDefaultValue()I
    .locals 3

    .line 1784
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    const-string v2, "On"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAdaptiveBrightnessNoLSEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 1653
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAdaptiveBrightnessNoLS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adaptive_brightness"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isAllNAVendor()Z
    .locals 2

    .line 1150
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    .line 1151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCameraSensorModel(Landroid/content/Context;)Z
    .locals 0

    .line 1644
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportCameraSensor(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAdaptiveBrightnessNoLS()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1645
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSabcOSUpgrade()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSabcAdaptiveBrightnessEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCanadaModal()Z
    .locals 2

    .line 1136
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCctModel()Z
    .locals 2

    .line 1098
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChinaCMCCModel()Z
    .locals 2

    .line 1059
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHM"

    .line 1060
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChinaCTCModel()Z
    .locals 2

    .line 1054
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    .line 1055
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChinaHKTWModel()Z
    .locals 2

    .line 1044
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    .line 1045
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isChinaModel()Z
    .locals 2

    .line 1039
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    .line 1040
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChinaOpen()Z
    .locals 2

    .line 1049
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHN"

    .line 1050
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDefaultWifiAutoDownloadEnabled()Z
    .locals 3

    .line 1560
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SyncML_ConfigDefStatusAutoDownload"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDisableIsraelCountry()Z
    .locals 3

    .line 992
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_DisableIsraelCountry"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_JERUSALEM_TO_TELAVIV_BY_TURKEY:Z

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isDomesticKTTModel()Z
    .locals 2

    .line 1019
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KTT"

    .line 1020
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDomesticLGTModel()Z
    .locals 2

    .line 1024
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGT"

    .line 1025
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDomesticModel()Z
    .locals 2

    .line 1145
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    .line 1146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticOPENModel()Z
    .locals 2

    .line 1034
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOO"

    .line 1035
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticSKTModel()Z
    .locals 2

    .line 1014
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    .line 1015
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDomesticWIFIModel()Z
    .locals 2

    .line 1029
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANY"

    .line 1030
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDualFolderType(Landroid/content/Context;)Z
    .locals 2

    .line 1415
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.dual_lcd"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDualSim()Z
    .locals 4

    const-string/jumbo v0, "ro.multisim.simslotcount"

    .line 1573
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1575
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 1578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Rune"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isEdgeLightingDefaultOff()Z
    .locals 5

    .line 1773
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ConfigDefStatusEdgeLighting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CarrierFeature_SystemUI_ConfigDefStatusEdgeLighting"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-defaulton"

    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isEnableNotiDeltaBinarySizeBeforeDownload(Landroid/content/Context;)Z
    .locals 3

    .line 1550
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getDataSimSlotId(Landroid/content/Context;)I

    move-result p0

    const-string v1, "CarrierFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z
    .locals 6

    const-string/jumbo v0, "telephony_subscription_service"

    .line 1181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 1182
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1183
    invoke-virtual {p0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1184
    invoke-virtual {p0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 1185
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 1186
    invoke-virtual {p0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1187
    invoke-virtual {p0, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz v2, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1191
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subInfo1.getGroupUuid(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Rune"

    invoke-static {v4, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfo2.getGroupUuid(): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfo2.isOpportunistic(): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isFaver3Supported()Z
    .locals 2

    .line 1289
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isGpFelicaSupported(Landroid/content/Context;)Z
    .locals 1

    .line 1293
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.nfc.gpfelica"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isJapanDCMModel()Z
    .locals 2

    .line 1071
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    .line 1072
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJapanKDIModel()Z
    .locals 2

    .line 1076
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    .line 1077
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJapanKDIMvnoModel()Z
    .locals 3

    const-string/jumbo v0, "persist.omc.sales_code"

    .line 1091
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.sales_code"

    .line 1092
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 1093
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v1, "UQM"

    .line 1094
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "JCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isJapanModel()Z
    .locals 3

    const-string/jumbo v0, "ro.csc.country_code"

    .line 1064
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 1065
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 1066
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v1, "JP"

    .line 1067
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJapanRKTModel()Z
    .locals 2

    .line 1086
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RKT"

    .line 1087
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJapanSBMModel()Z
    .locals 2

    .line 1081
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBM"

    .line 1082
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLDUModel()Z
    .locals 1

    .line 828
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUSKUbinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUOLDModel()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isLDUOLDModel()Z
    .locals 2

    .line 832
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAP"

    .line 833
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LDU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isLDUSKUbinary()Z
    .locals 5

    const-string/jumbo v0, "ril.product_code"

    const-string v1, ""

    .line 837
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xa

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isMaintenanceMode()Z
    .locals 2

    .line 1913
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMultiSimSupported()Z
    .locals 4

    .line 683
    sget v0, Lcom/samsung/android/settings/Rune;->supportMultiSIM:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 684
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/samsung/android/settings/Rune;->supportMultiSIM:I

    .line 687
    :cond_1
    sget v0, Lcom/samsung/android/settings/Rune;->supportMultiSIM:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isNavigationBarEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1396
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1397
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNfcOtherCategorySupported()Z
    .locals 2

    const-string/jumbo v0, "ro.vendor.nfc.support.othercategory"

    const/4 v1, 0x1

    .line 1285
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isORANGELogo()Z
    .locals 2

    .line 709
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getPrimarySimSlot()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->getIconBrandingFromCarrier(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORANGE"

    .line 710
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOllehSettingsSupport(Landroid/content/Context;)Z
    .locals 4

    .line 1225
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_SupportCallerRingBackTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1228
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1229
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportMptcp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ro.product.first_api_level"

    .line 1230
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1

    .line 1232
    invoke-static {p0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1236
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/account/AccountUtils;->isKTPlayGameServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1239
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/account/AccountUtils;->checkKTservicePackage(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 1242
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->isSupportTwoPhone()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public static isSabcAdaptiveBrightnessEnabled()Z
    .locals 2

    .line 1637
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sabc_default_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSabcOSUpgrade()Z
    .locals 2

    .line 1630
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sabc_os_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSamsungDexMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 895
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isSamsungDexOnPCMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 906
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "dexonpc_connection_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isScreenNotificationSupported()Z
    .locals 5

    .line 1453
    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xc1d

    if-lt v0, v2, :cond_0

    return v1

    .line 1456
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1459
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenNotificationSupported() - MDNIE_SUPPORT_FUNCTION = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Rune"

    invoke-static {v4, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .locals 2

    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shopdemo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isShowMobileNetworkWarning(Landroid/content/Context;)Z
    .locals 3

    .line 1530
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    .line 1531
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getDataSimSlotId(Landroid/content/Context;)I

    move-result p0

    const-string v1, "CarrierFeature_SyncML_DisableWarning4DataCostDuringFota"

    const/4 v2, 0x0

    .line 1530
    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSlotIdAvailable(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSprModel()Z
    .locals 2

    .line 1102
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XAS"

    .line 1103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VMU"

    .line 1104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportAndroidBeam(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Rune"

    const-string v0, "context is null"

    .line 1302
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1306
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportBixby()Z
    .locals 2

    .line 1813
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCardModeUi()Z
    .locals 2

    .line 1310
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOREA"

    .line 1312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHINA"

    .line 1313
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportDomesticUi()Z
    .locals 2

    .line 1317
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOREA"

    .line 1319
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDualSwp()Z
    .locals 3

    .line 1323
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartcardSvc_ConfigMultiSimMode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportECloudSetupStep(Landroid/content/Context;)Z
    .locals 1

    .line 1800
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_SupportTianYiCloud"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z
    .locals 3

    .line 1213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "multi_sim_data_call_slot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1215
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v2, "CarrierFeature_RIL_DisableMobileDataOnly"

    .line 1216
    invoke-virtual {v0, p0, v2, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isSupportFeatureDataUsageMobileDataOnlyApps model :  disable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Rune"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static isSupportFeatureHideSimTab(Landroid/content/Context;)Z
    .locals 0

    .line 1203
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupportFlashNotification()Z
    .locals 2

    .line 1446
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportRoutingSettings(Landroid/content/Context;)Z
    .locals 4

    .line 1330
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "ro.vendor.nfc.support.advancedsetting"

    const-string v2, "false"

    .line 1332
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ENABLE"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "DISABLE"

    :goto_0
    const-string v3, "CscFeature_NFC_ConfigAdvancedSettings"

    .line 1330
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 1334
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.uicc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1335
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.nfc.ese"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isSupportSSecure()Z
    .locals 2

    .line 1907
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1908
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTurkeyModel()Z
    .locals 2

    .line 1140
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TR"

    .line 1141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTwoPhoneModeUser(Landroid/content/Context;)Z
    .locals 1

    .line 930
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 932
    invoke-virtual {p0}, Landroid/content/pm/SemUserInfo;->isSecondNumberMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUSA()Z
    .locals 2

    .line 1009
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    .line 1010
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUsOpenDevice()Z
    .locals 3

    .line 1127
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ril.official_cscver"

    .line 1131
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "OYM"

    .line 1132
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isUsOpenModel()Z
    .locals 2

    .line 1118
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    .line 1119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUsbCtype()Z
    .locals 1

    .line 1161
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportUsbCtype()Z

    move-result v0

    return v0
.end method

.method public static isUsingSPRTetheringConcept()Z
    .locals 3

    .line 1281
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVzwModel()Z
    .locals 2

    .line 1113
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    .line 1114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWifiDedicated(Landroid/content/Context;)Z
    .locals 5

    .line 1565
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    .line 1566
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v1

    const-string v2, "CarrierFeature_SyncML_DeltaBinaryDownVia"

    const-string v3, "Not_Define"

    const/4 v4, 0x0

    .line 1565
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1567
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1568
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "SMLDM_BEARER"

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_0

    const-string/jumbo p0, "wifi_dedicated"

    .line 1569
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v4, v2

    :cond_1
    return v4
.end method

.method public static isY2OlympicEdition()Z
    .locals 2

    const-string/jumbo v0, "ro.product.vendor.name"

    .line 1297
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "y2qdcmwoly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needToRemoveWifiAutoDownloadMenu()Z
    .locals 3

    .line 1555
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SyncML_ConfigDefStatusAutoDownload"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "remove"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static notSupportTetheringHotspot()Z
    .locals 3

    .line 1250
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1254
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AIO"

    .line 1255
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 1

    .line 810
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shouldShowStatusBarNetworkInfoMenu()Z
    .locals 2

    .line 714
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->STATUS_NETWORK_SIM_MOBILITY:Z

    if-eqz v0, :cond_3

    .line 715
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isORANGELogo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getCarrierInfoLogo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getCarrierInfoLogo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BOTH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 717
    :cond_3
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    return v0
.end method

.method public static supportAdaptiveBrightnessNoLS()Z
    .locals 2

    .line 1623
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static supportAmoledDisplay()Z
    .locals 2

    .line 772
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportAutoBrightness(Landroid/content/Context;)Z
    .locals 1

    .line 1712
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportCameraSensor(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static supportBixbyClient()Z
    .locals 3

    .line 1903
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_DisableBixby"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static supportBlueLightFilter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportBlueLightFilterAdaptiveMode()Z
    .locals 2

    .line 731
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportBlueLightFilterBySEED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportBoostMode()Z
    .locals 5

    .line 1732
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1733
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportMultiResolution()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1736
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportBoostMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " // highPerfFeature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " resolutionFeature:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rune"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static supportCameraSensor(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "sensor"

    .line 1695
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    .line 1700
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_1

    const v1, 0x10044

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static supportChameleon(Landroid/content/Context;)Z
    .locals 3

    .line 1589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "multi_sim_data_call_slot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1590
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static supportColorBalance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportDailyBoard(Landroid/content/Context;)Z
    .locals 2

    .line 1820
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1821
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.homemode"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static supportDataRole()Z
    .locals 1

    .line 1168
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportUsbDataRole()Z

    move-result v0

    return v0
.end method

.method public static supportDesktopMode()Z
    .locals 3

    .line 883
    sget-object v0, Lcom/samsung/android/settings/Rune;->mSupportDesktopMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 884
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/Rune;->mSupportDesktopMode:Ljava/lang/Boolean;

    .line 887
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/Rune;->mSupportDesktopMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static supportDisplayCutOut(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "android"

    const-string/jumbo v1, "string"

    .line 1480
    sget-object v2, Lcom/samsung/android/settings/Rune;->mSupportDisplayCut:Ljava/lang/Boolean;

    const-string v3, "Rune"

    if-nez v2, :cond_4

    .line 1482
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "config_mainBuiltInDisplayCutout"

    .line 1483
    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 1484
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v5, "config_subBuiltInDisplayCutout"

    .line 1485
    invoke-virtual {p0, v5, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1486
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1487
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/Rune;->mSupportDisplayCut:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not update mSupportDisplayCut. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/settings/Rune;->mSupportDisplayCut:Ljava/lang/Boolean;

    .line 1493
    :cond_4
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSupportDisplayCut : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settings/Rune;->mSupportDisplayCut:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    sget-object p0, Lcom/samsung/android/settings/Rune;->mSupportDisplayCut:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static supportDockSettings()Z
    .locals 2

    .line 1758
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportDoubleTapMenu()Z
    .locals 3

    .line 1828
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1829
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static supportEasyMode(Landroid/content/Context;)Z
    .locals 2

    .line 1720
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1721
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 1722
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "minimal_battery_use"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static supportEdgeScreen(Landroid/content/Context;)Z
    .locals 2

    .line 1435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static supportEntranceMobileNetwork(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ATT"

    .line 1925
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AIO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "APP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DSA"

    .line 1926
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "XAR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static supportEse(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Rune"

    const-string v0, "context is null"

    .line 1348
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1351
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.nfc.ese"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static supportFingerPrint(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "FingerSensorGesture"

    const-string v1, "SEC_PRODUCT_FEATURE_COMMON_SUPPORT_FINGERPRINT"

    .line 1864
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1866
    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportFingerSensorGestureSpay(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "Rune"

    .line 1883
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportSpayPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1885
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x80

    .line 1886
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1887
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.spay.quickgesture"

    .line 1888
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1889
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samsung Pay supports finger gesture : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public static supportFoldableDualDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportFoldableNoSubDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportForceTouch()Z
    .locals 2

    .line 1524
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportForceTouch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static supportFullScreenApps()Z
    .locals 1

    .line 1471
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFullScreenAppsSupportMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportFunctionKey()Z
    .locals 2

    .line 1899
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FUNCTION_KEY_MENU"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportGoodSettings(Landroid/content/Context;)Z
    .locals 2

    .line 968
    sget v0, Lcom/android/settings/R$string;->config_galaxy_registry_package:I

    .line 969
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 968
    invoke-static {p0, v0}, Lcom/samsung/android/settings/PkgUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 973
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 977
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static supportGoogleServiceMenu()Z
    .locals 3

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 1917
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1918
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static supportHalfFoldedMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportHighRefreshRate(Landroid/content/Context;I)Z
    .locals 0

    .line 1498
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1499
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportLabsMenusProvidedByEachApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportLedIndicator()Z
    .locals 2

    .line 856
    sget-object v0, Lcom/samsung/android/settings/Rune;->mSupportLEDIndicator:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 857
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/samsung/android/settings/Rune;->mSupportLEDIndicator:Ljava/lang/Boolean;

    .line 858
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/led/led_blink"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/samsung/android/settings/Rune;->mSupportLEDIndicator:Ljava/lang/Boolean;

    .line 863
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/Rune;->mSupportLEDIndicator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static supportLiftToWakeSetting(Landroid/content/Context;)Z
    .locals 2

    .line 1843
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "sensor"

    .line 1847
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    if-eqz p0, :cond_1

    const v0, 0x10036

    .line 1848
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static supportLightSensor(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "sensor"

    .line 1672
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 1676
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    move v1, v0

    .line 1678
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1679
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const v3, 0x10041

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static supportMultiResolution()Z
    .locals 5

    .line 1746
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DYN_RESOLUTION_CONTROL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1749
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportMultiResolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " productFeature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " floating:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rune"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static supportMultipleSwUpdate(Landroid/content/Context;)Z
    .locals 3

    .line 1594
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "multi_sim_data_call_slot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1595
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v2, "CarrierFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual {v0, p0, v2, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static supportNaturalModeWithoutWcgMode()Z
    .locals 2

    .line 765
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_NATURAL_SCREEN_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportNavigationBar()Z
    .locals 2

    .line 1379
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportNavigationBarForHardKey()Z
    .locals 2

    .line 1386
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportHardKeyNavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static supportOutdoorMode(Landroid/content/Context;)Z
    .locals 0

    .line 1615
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1617
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAdaptiveBrightnessNoLS()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSabcOSUpgrade()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportPalmTouchToSleep()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportPocketMode(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "motion_recognition"

    .line 1513
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    const-string v0, "Rune"

    if-nez p0, :cond_0

    const-string p0, "isSupportPocketMode : false. smrmService is null"

    .line 1515
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v1, 0x800000

    .line 1518
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isAvailable(I)Z

    move-result p0

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportPocketMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static supportRelativeLink(Landroid/content/Context;)Z
    .locals 0

    .line 1360
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static supportSamsungGesturalModeAsDefault()Z
    .locals 6

    .line 1404
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigNavigationBarPolicy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1406
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "DefaultBottomGesture"

    .line 1407
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static supportScreenMode()Z
    .locals 5

    .line 794
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 795
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public static supportScreenResolution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSdcard()Z
    .locals 2

    const-string/jumbo v0, "storage.support.sdcard"

    const-string v1, "0"

    .line 1807
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static supportSim(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Rune"

    const-string v0, "context is null"

    .line 1340
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1343
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.nfc.uicc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static supportSimUnlock(Landroid/content/Context;)Z
    .locals 3

    .line 1584
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "multi_sim_data_call_slot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1585
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static supportSmartSwitch(Landroid/content/Context;)Z
    .locals 5

    .line 917
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isTwoPhoneModeUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    .line 919
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    .line 921
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableUser: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isSupportSmartSwitch:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Rune"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public static supportSoftphone()Z
    .locals 2

    .line 1372
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Softphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static supportSpayPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.spay"

    .line 1875
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v0, "com.samsung.android.spaymini"

    :cond_0
    return-object v0
.end method

.method public static supportTSS20()Z
    .locals 1

    .line 673
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->singleSKU:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->unified:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportTaskBar(Landroid/content/Context;)Z
    .locals 3

    .line 874
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "minimal_battery_use"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static supportTouchSensitivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportWcgModeOnAmoled()Z
    .locals 2

    .line 758
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
