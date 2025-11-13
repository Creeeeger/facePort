.class Lcom/android/settings/DisplaySettings$3;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v0, p1

    const-string v1, "display_size_forced"

    const-string v2, "DisplaySettings"

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 519
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportTouchSensitivity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTouchSensitivityDefaultValue()I

    move-result v4

    const-string v5, "auto_adjust_touch"

    .line 520
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportPocketMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocketModeDefaultValue()I

    move-result v4

    const-string v5, "screen_off_pocket"

    .line 527
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    .line 536
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x0

    if-eq v6, v5, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    const/4 v8, 0x3

    if-eqz v6, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v8

    .line 546
    :goto_1
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 555
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    .line 556
    invoke-interface {v11, v7, v10}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 557
    invoke-interface {v11, v7}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v15

    .line 559
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resetDisplaySizeSettings() default LCD size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resetDisplaySizeSettings() default density : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, ","

    if-eqz v12, :cond_5

    :try_start_1
    const-string v13, ""

    .line 565
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 566
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 568
    array-length v13, v12

    if-le v13, v5, :cond_4

    aget-object v12, v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_2

    :cond_4
    const/16 v12, 0x5a0

    goto :goto_2

    .line 571
    :cond_5
    iget v12, v10, Landroid/graphics/Point;->x:I

    :goto_2
    if-eqz v6, :cond_6

    const-string v13, "preserved_density_standard_mode"

    .line 574
    invoke-static {v3, v13, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    const/4 v13, 0x2

    if-eq v9, v5, :cond_a

    if-eq v9, v13, :cond_9

    if-eq v9, v8, :cond_7

    .line 614
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetDisplaySizeSettings() clearMode +"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v13

    move-object v8, v14

    move/from16 v18, v15

    goto/16 :goto_5

    :cond_7
    const-string v8, "resetDisplaySizeSettings() Clear Resolution & Density "

    .line 579
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v8, v10, Landroid/graphics/Point;->x:I

    const/16 v9, 0x5a0

    if-lt v8, v9, :cond_8

    const/16 v16, 0x0

    int-to-double v8, v8

    const-wide/high16 v17, 0x3fe8000000000000L    # 0.75

    mul-double v8, v8, v17

    double-to-int v8, v8

    .line 583
    iget v9, v10, Landroid/graphics/Point;->y:I

    move-object/from16 p0, v14

    int-to-double v13, v9

    mul-double v13, v13, v17

    double-to-int v9, v13

    int-to-double v12, v15

    mul-double v12, v12, v17

    double-to-int v12, v12

    const/16 v20, 0x1

    const/16 v21, -0x1

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v12

    invoke-static/range {v16 .. v21}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(IIIIZI)V

    move-object/from16 v8, p0

    move/from16 v18, v15

    const/4 v9, 0x2

    goto :goto_5

    :cond_8
    move-object/from16 p0, v14

    const/4 v12, 0x0

    .line 588
    iget v14, v10, Landroid/graphics/Point;->y:I

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/4 v9, 0x2

    move v13, v8

    move-object/from16 v8, p0

    move/from16 v18, v15

    invoke-static/range {v12 .. v17}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(IIIIZI)V

    goto :goto_5

    :cond_9
    move v9, v13

    move-object v8, v14

    move/from16 v18, v15

    mul-int v15, v18, v12

    .line 594
    iget v12, v10, Landroid/graphics/Point;->x:I

    div-int/2addr v15, v12

    .line 597
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resetDisplaySizeSettings() Clear Density density : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {v0, v15}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(Landroid/content/Context;I)V

    goto :goto_5

    :cond_a
    move v9, v13

    move-object v8, v14

    move/from16 v18, v15

    const-string v12, "resetDisplaySizeSettings() Clear Resolution"

    .line 602
    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget v12, v10, Landroid/graphics/Point;->x:I

    const/16 v13, 0x5a0

    if-ge v12, v13, :cond_c

    const/16 v13, 0x2d0

    if-le v12, v13, :cond_b

    const/16 v13, 0x438

    if-gt v12, v13, :cond_b

    goto :goto_3

    :cond_b
    move v12, v7

    goto :goto_4

    :cond_c
    :goto_3
    move v12, v5

    .line 610
    :goto_4
    invoke-static {v0, v12, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    :goto_5
    if-nez v6, :cond_d

    .line 617
    invoke-interface {v11}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 619
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-static {v3, v1, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 626
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "display_density_forced"

    .line 627
    invoke-static {v3, v6, v1, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v1, "The display settings have been reset in safe mode."

    .line 633
    invoke-static {v2, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 643
    :cond_d
    new-instance v1, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v1}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    const-string v6, "default#default"

    .line 644
    invoke-virtual {v1, v6}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "sem_sp_edition_flipfont_changed"

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_e

    move v1, v5

    goto :goto_6

    :cond_e
    move v1, v7

    :goto_6
    const-string v4, "bold_text"

    if-eqz v1, :cond_f

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v4, 0x12c

    .line 655
    invoke-static {v0, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    .line 656
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "STANDARD_BOLD_FONT"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    .line 658
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    invoke-static {v0, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    .line 663
    :goto_7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_FONT_SIZE"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_11

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "STANDARD_FONT_SIZE"

    invoke-static {v6, v8, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v6, 0x1afa4

    if-lt v4, v6, :cond_10

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x3fc00000    # 1.5f

    goto :goto_8

    :cond_10
    const v4, 0x3f8ccccd    # 1.1f

    .line 672
    :goto_8
    invoke-static {v0, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontIndex(Landroid/content/Context;F)I

    move-result v6

    move/from16 v22, v6

    move v6, v4

    move/from16 v4, v22

    goto :goto_9

    .line 674
    :cond_11
    invoke-static {v0, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v6

    .line 677
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "font_size"

    invoke-static {v8, v10, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 678
    invoke-static {v0, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 682
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "key_night_mode"

    .line 683
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 688
    :cond_12
    invoke-static {v0, v7}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 689
    invoke-static {v0, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v4

    .line 690
    invoke-static {v0, v4, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    .line 693
    :cond_13
    invoke-static {v0, v5}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 694
    invoke-static {v0, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v4

    .line 695
    invoke-static {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    .line 700
    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "user_used_app_continuity_setting"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_15
    const-string/jumbo v4, "uimode"

    .line 708
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/UiModeManager;

    .line 709
    invoke-virtual {v4, v5}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 710
    invoke-static {}, Lcom/android/settings/DisplaySettings;->-$$Nest$sfgetDEFAULT_CUSTOM_NIGHT_START_TIME()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    .line 711
    invoke-static {}, Lcom/android/settings/DisplaySettings;->-$$Nest$sfgetDEFAULT_CUSTOM_NIGHT_END_TIME()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    const-string v4, "display_night_theme"

    .line 712
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "display_night_theme_scheduled"

    .line 713
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "display_night_theme_scheduled_type"

    .line 715
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "display_night_theme_on_time"

    const-wide/16 v10, 0x474

    .line 717
    invoke-static {v3, v4, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v4, "display_night_theme_off_time"

    const-wide/16 v12, 0x1a4

    .line 719
    invoke-static {v3, v4, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 726
    invoke-static/range {p1 .. p1}, Lcom/android/settings/DisplaySettings;->-$$Nest$smresetBrightnessSettings(Landroid/content/Context;)V

    const-string v4, "sec_display_preset_index"

    .line 731
    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "sec_display_temperature_red"

    .line 732
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "sec_display_temperature_blue"

    .line 733
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "sec_display_temperature_green"

    .line 734
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "screen_off_timeout_backup"

    .line 738
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "screen_off_timeout"

    if-lez v4, :cond_16

    .line 741
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_16
    const/16 v4, 0x7530

    .line 744
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    :goto_a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilter()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "blue_light_filter"

    .line 751
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v4, 0x5

    const-string v6, "blue_light_filter_opacity"

    .line 753
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v4

    const-string v6, "blue_light_filter_scheduled"

    if-eqz v4, :cond_17

    const-string v4, "blue_light_filter_adaptive_mode"

    .line 757
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 759
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    .line 762
    :cond_17
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_b
    const-string v4, "blue_light_filter_type"

    .line 765
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "blue_light_filter_on_time"

    .line 768
    invoke-static {v3, v4, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v4, "blue_light_filter_off_time"

    .line 770
    invoke-static {v3, v4, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 773
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    const-string v4, "blue_light_filter_night_dim"

    .line 774
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 781
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getChargingInfoAlways(Landroid/content/Context;)I

    move-result v4

    if-ltz v4, :cond_1a

    .line 782
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/DeviceTypeConstant;->isRamlessModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "show charging info default off for ramless models"

    .line 783
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {v0, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setChargingInfoAlways(Landroid/content/Context;I)V

    goto :goto_c

    .line 786
    :cond_19
    invoke-static {v0, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setChargingInfoAlways(Landroid/content/Context;I)V

    .line 792
    :cond_1a
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string v4, "screensaver_enabled"

    .line 791
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 795
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportScreenSaverWhenToDream()Z

    move-result v2

    const-string v4, "screensaver_activate_on_sleep"

    const v6, 0x1110123

    const v7, 0x1110124

    const-string v8, "screensaver_activate_on_dock"

    if-eqz v2, :cond_1b

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 796
    invoke-static {v3, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 801
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    .line 809
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 807
    invoke-static {v3, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 814
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 812
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_d
    const-string v2, "screensaver_components"

    const-string v4, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    .line 818
    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 823
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 824
    invoke-static {v3, v0}, Lcom/android/settings/DisplaySettings;->-$$Nest$smresetNavigationBarSettings(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 829
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/2addr v1, v5

    const-string/jumbo v2, "task_bar"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1d
    return-void

    :catch_0
    const-string/jumbo v0, "windowManager API exception!!!"

    .line 636
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
