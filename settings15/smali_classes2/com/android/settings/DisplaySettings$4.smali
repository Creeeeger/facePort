.class public final Lcom/android/settings/DisplaySettings$4;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final resetSettings(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "display_size_forced"

    const-string v2, "resetDisplaySizeSettings() clearMode +"

    const-string v3, "resetDisplaySizeSettings() Clear Density density : "

    const-string v4, "resetDisplaySizeSettings() default density : "

    const-string v5, "resetDisplaySizeSettings() default LCD size : "

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v7, "auto_adjust_touch"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "ead_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "notified_ead_camera_use"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "notified_ead_camera_use_routine"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "ead_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "notified_ead_camera_use"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "notified_ead_camera_use_routine"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "ead_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "notified_ead_camera_use"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "notified_ead_camera_use_routine"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividPlusMode()Z

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v10

    const/4 v11, 0x1

    const-string v12, "screen_mode_setting"

    const-string v13, "screen_mode_automatic_setting"

    const/4 v14, 0x4

    const/4 v15, 0x3

    const-string v8, "DisplaySettings"

    if-eqz v10, :cond_2

    const-string v10, "(shop demo reset) set Mdnie ScreenMode : 4"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_0

    if-nez v9, :cond_0

    invoke-static {v11}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayColor(I)V

    :cond_0
    const-string v7, "mDNIe"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v14}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :cond_1
    invoke-static {v6, v12, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v6, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string v14, "SEC_FLOATING_FEATURE_LCD_CONFIG_DEFAULT_SCREEN_MODE"

    invoke-virtual {v10, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v7, :cond_4

    if-nez v9, :cond_4

    if-ne v10, v15, :cond_3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayColor(I)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    invoke-static {v11}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayColor(I)V

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    invoke-static {v6, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v9, 0x4

    if-ne v10, v9, :cond_5

    invoke-static {v6, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    invoke-static {v6, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportPocketMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_2
    move v7, v11

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_POCKET_MODE"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v11, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_3
    const-string v9, "screen_off_pocket"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v11, :cond_9

    move v7, v11

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_a

    move v9, v11

    goto :goto_5

    :cond_a
    move v9, v15

    :goto_5
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13, v10}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    invoke-interface {v12, v13}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ","

    if-eqz v4, :cond_c

    :try_start_1
    const-string v13, ""

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    array-length v13, v4

    if-le v13, v11, :cond_b

    const/4 v13, 0x0

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    :cond_b
    const/16 v4, 0x5a0

    goto :goto_6

    :cond_c
    iget v4, v10, Landroid/graphics/Point;->x:I

    :goto_6
    if-eqz v7, :cond_d

    const-string v13, "preserved_density_standard_mode"

    invoke-static {v6, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    const/4 v13, 0x2

    if-eq v9, v11, :cond_11

    if-eq v9, v13, :cond_10

    if-eq v9, v15, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v12

    goto :goto_9

    :cond_e
    const-string v2, "resetDisplaySizeSettings() Clear Resolution & Density "

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v10, Landroid/graphics/Point;->x:I

    const/16 v3, 0x5a0

    if-lt v2, v3, :cond_f

    int-to-double v2, v2

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v2, v2, v16

    double-to-int v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    mul-double v3, v3, v16

    double-to-int v3, v3

    move-object/from16 v18, v12

    int-to-double v11, v14

    mul-double v11, v11, v16

    double-to-int v4, v11

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(III)V

    goto :goto_9

    :cond_f
    move-object/from16 v18, v12

    iget v3, v10, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3, v14}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(III)V

    goto :goto_9

    :cond_10
    move-object/from16 v18, v12

    mul-int/2addr v4, v14

    iget v2, v10, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-static {v2, v2, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(III)V

    goto :goto_9

    :cond_11
    move-object/from16 v18, v12

    const-string v2, "resetDisplaySizeSettings() Clear Resolution"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v10, Landroid/graphics/Point;->x:I

    const/16 v3, 0x5a0

    if-ge v2, v3, :cond_13

    const/16 v3, 0x2d0

    if-le v2, v3, :cond_12

    const/16 v3, 0x438

    if-gt v2, v3, :cond_12

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v2, 0x1

    :goto_8
    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSelectedScreenResolution(Landroid/content/Context;I)V

    :goto_9
    if-nez v7, :cond_14

    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "display_density_forced"

    const/4 v3, 0x0

    invoke-static {v6, v2, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v1, "The display settings have been reset in safe mode."

    invoke-static {v8, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_14
    new-instance v1, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v1}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    const-string v2, "default#default"

    invoke-virtual {v1, v2}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    const-string v1, "sem_sp_edition_flipfont_changed"

    const/4 v2, 0x0

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "bold_text"

    if-eqz v7, :cond_15

    const/4 v3, 0x1

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    const-string v1, "STANDARD_BOLD_FONT"

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_15
    invoke-static {v6, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_FONT_SIZE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-eqz v7, :cond_16

    const-string v3, "STANDARD_FONT_SIZE"

    invoke-static {v6, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1afa4

    if-lt v1, v3, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_17

    move v15, v2

    goto :goto_b

    :cond_16
    move v15, v1

    :cond_17
    :goto_b
    const-string v1, "font_size"

    invoke-static {v6, v1, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0, v15}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "key_night_mode"

    const/4 v3, 0x1

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_c
    const/4 v1, 0x0

    goto :goto_d

    :cond_18
    const/4 v3, 0x1

    goto :goto_c

    :goto_d
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v0, v4, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    :cond_19
    invoke-static {v0, v3}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    :cond_1a
    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-virtual {v1, v3}, Landroid/app/UiModeManager;->setNightMode(I)V

    sget-object v3, Lcom/android/settings/DisplaySettings;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    invoke-virtual {v1, v3}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    sget-object v3, Lcom/android/settings/DisplaySettings;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    invoke-virtual {v1, v3}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    const-string v1, "display_night_theme"

    const/4 v3, 0x0

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "display_night_theme_scheduled"

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "display_night_theme_scheduled_type"

    const/4 v3, 0x1

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "display_night_theme_on_time"

    const-wide/16 v3, 0x474

    invoke-static {v6, v1, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v1, "display_night_theme_off_time"

    const-wide/16 v10, 0x1a4

    invoke-static {v6, v1, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v1, "resetBrightnessSettings()"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10e013a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v12, "screen_brightness"

    invoke-static {v5, v12, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_EXTRA_BRIGHT:Z

    if-eqz v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "screen_extra_brightness"

    const/4 v14, 0x0

    invoke-static {v1, v5, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    const-string v5, "sub_screen_brightness_mode"

    const-string v14, "screen_brightness_mode"

    if-eqz v1, :cond_1c

    const-string v1, "reset to retail mode value"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v15, 0x10e013b

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/4 v9, -0x2

    invoke-static {v15, v12, v1, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v12, 0x0

    invoke-static {v1, v14, v12, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_LARGE_FRONT_SUBDISPLAY:Z

    if-eqz v1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v12, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_e

    :cond_1c
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_LARGE_FRONT_SUBDISPLAY:Z

    if-eqz v1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v9, 0x1

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAutoBrightnessDefaultValue(Landroid/content/Context;)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "automaticAvailable= "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v14, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1e
    :goto_e
    const-string v1, "sec_display_preset_index"

    invoke-static {v6, v1, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "sec_display_temperature_red"

    const/4 v5, 0x0

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "sec_display_temperature_blue"

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "sec_display_temperature_green"

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividness()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "vividness_intensity"

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1f
    const-string v1, "screen_off_timeout_backup"

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v12, "screen_off_timeout"

    if-lez v1, :cond_20

    invoke-static {v6, v12, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    :cond_20
    const/16 v1, 0x7530

    invoke-static {v6, v12, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_f
    const-string v1, "blue_light_filter"

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "blue_light_filter_opacity"

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v1

    const-string v2, "blue_light_filter_scheduled"

    if-eqz v1, :cond_21

    const-string v1, "blue_light_filter_adaptive_mode"

    const/4 v9, 0x1

    invoke-static {v6, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v6, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_21
    const/4 v9, 0x1

    invoke-static {v6, v2, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_10
    const-string v1, "blue_light_filter_type"

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "blue_light_filter_on_time"

    invoke-static {v6, v1, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v1, "blue_light_filter_off_time"

    invoke-static {v6, v1, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_22

    const-string v1, "blue_light_filter_night_dim"

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.bluelightfilter"

    const-string v4, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getChargingInfoAlways(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.aod.ramless"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "show charging info default off for ramless models"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setChargingInfoAlways(Landroid/content/Context;I)V

    goto :goto_11

    :cond_24
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setChargingInfoAlways(Landroid/content/Context;I)V

    :cond_25
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "screensaver_enabled"

    invoke-static {v6, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x1110155

    const-string v3, "screensaver_activate_on_sleep"

    const v4, 0x1110154

    const-string v5, "screensaver_activate_on_dock"

    if-eqz v1, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v6, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v6, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v6, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v6, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_12
    const-string v1, "screensaver_components"

    const-string v2, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "resetNavigationBarSettings"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureDefault()Z

    move-result v2

    const-string v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "navigation_bar_gesture_detail_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "navigation_bar_gesture_hint"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "navigation_bar_back_gesture_sensitivity"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "navigationbar_key_order"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "navigationbar_key_position"

    invoke-static {v1, v2, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "navigation_bar_block_gestures_with_spen"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "bottom_gesture_inset_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const-string v2, "back_gesture_inset_scale_left"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const-string v2, "back_gesture_inset_scale_right"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const-string v2, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "assist_touch_gesture_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "assist_long_press_home_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "touch_and_hold_to_search"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_13

    :cond_27
    const/4 v3, 0x1

    :cond_28
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    xor-int/lit8 v2, v7, 0x1

    const-string v3, "task_bar"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "taskbar_max_recent_count"

    invoke-static {v1, v2, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "taskbar_style_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_29
    return-void

    :catch_0
    const-string v0, "windowManager API exception!!!"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
