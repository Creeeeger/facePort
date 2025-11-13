.class public final Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# direct methods
.method public static changeFontSize(Landroid/content/Context;II)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    array-length v1, v0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/16 v6, 0x8

    if-eq p2, v3, :cond_2

    if-ne p2, v6, :cond_4

    :cond_2
    array-length v7, v0

    if-ne v7, v6, :cond_4

    if-lt v1, v5, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    if-gtz v1, :cond_c

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ne p2, v8, :cond_7

    array-length v9, v0

    if-ne v9, v6, :cond_7

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    if-ne v1, v2, :cond_6

    move v2, v8

    goto :goto_2

    :cond_6
    if-lt v1, v7, :cond_c

    const/4 v2, 0x5

    goto :goto_2

    :cond_7
    if-eq p2, v3, :cond_8

    if-ne p2, v6, :cond_b

    :cond_8
    array-length p2, v0

    if-ne p2, v8, :cond_b

    const/4 p2, 0x4

    if-ge v1, p2, :cond_9

    goto :goto_1

    :cond_9
    if-lt v1, p2, :cond_a

    if-ge v1, v5, :cond_a

    goto :goto_2

    :cond_a
    if-lt v1, v5, :cond_c

    move v2, v7

    goto :goto_2

    :cond_b
    if-gtz v1, :cond_c

    goto :goto_1

    :cond_c
    move v2, v1

    :goto_2
    invoke-static {p0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    :cond_d
    :goto_3
    return-void
.end method

.method public static getFontFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v1, "default"

    if-eqz p0, :cond_0

    array-length v2, p0

    sub-int/2addr v2, v0

    if-lez v2, :cond_0

    array-length v2, p0

    sub-int/2addr v2, v0

    aget-object p0, p0, v2

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static isSameDeviceType(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "nosdcard"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device type is not same! backupDeviceType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " characteristics = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Eternal/DisplayItem"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 1

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v0, "/Settings/Display/NavigationTypes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v0, "/Settings/Display/ShowRecentNotificationOnly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string p1, "/Settings/Display/ShowBatteryPercentage"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v5, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v5, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "range"

    const-string/jumbo v8, "turnOnAsScheduledEnd"

    const-string/jumbo v9, "turnOnAsScheduledStart"

    const-string/jumbo v10, "turnOnAsScheduled"

    const-string v4, " : Device does not support S/W navigation bar."

    const-string/jumbo v3, "turnOnAsScheduledType"

    const-string v11, "Device not support TaskBar - "

    const-string v13, "Eternal/DisplayItem"

    const/4 v14, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_0
    const/4 v15, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v15, "/Settings/Display/RotateSuggestionEnabled"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    const/16 v15, 0x21

    goto/16 :goto_1

    :sswitch_1
    const-string v15, "/Settings/Display/ShowBatteryPercentage"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    const/16 v15, 0x20

    goto/16 :goto_1

    :sswitch_2
    const-string v15, "/Settings/Display/ScreenResolution"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_0

    :cond_2
    const/16 v15, 0x1f

    goto/16 :goto_1

    :sswitch_3
    const-string v15, "/Settings/Display/BlockAccidentalTouches"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_0

    :cond_3
    const/16 v15, 0x1e

    goto/16 :goto_1

    :sswitch_4
    const-string v15, "/Settings/Display/RefreshRate"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_0

    :cond_4
    const/16 v15, 0x1d

    goto/16 :goto_1

    :sswitch_5
    const-string v15, "/Settings/Display/CameraCutout"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_0

    :cond_5
    const/16 v15, 0x1c

    goto/16 :goto_1

    :sswitch_6
    const-string v15, "/Settings/Display/TaskbarRecentApps"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_0

    :cond_6
    const/16 v15, 0x1b

    goto/16 :goto_1

    :sswitch_7
    const-string v15, "/Settings/Display/SwitchAppsToFrontScreen"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_0

    :cond_7
    const/16 v15, 0x1a

    goto/16 :goto_1

    :sswitch_8
    const-string v15, "/Settings/Display/FontStyle"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_0

    :cond_8
    const/16 v15, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v15, "/Settings/Display/BlockGesturesWithSPen"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v15, 0x18

    goto/16 :goto_1

    :sswitch_a
    const-string v15, "/Settings/Display/TaskbarRecentAppsCount"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v15, 0x17

    goto/16 :goto_1

    :sswitch_b
    const-string v15, "/Settings/Display/AdaptiveColorTone"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v15, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v15, "/Settings/Display/TouchSensetivity"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v15, 0x15

    goto/16 :goto_1

    :sswitch_d
    const-string v15, "/Settings/Display/NightMode"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v15, 0x14

    goto/16 :goto_1

    :sswitch_e
    const-string v15, "/Settings/Display/NavigationTypes"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v15, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v15, "/Settings/Display/ShowRecentNotificationOnly"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v15, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string v15, "/Settings/Display/FullScreenApps"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v15, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v15, "/Settings/Display/ButtonLayout"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v15, 0x10

    goto/16 :goto_1

    :sswitch_12
    const-string v15, "/Settings/Display/BluelightFilter"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v15, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v15, "/Settings/Display/ScreenTimeout"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v15, 0xe

    goto/16 :goto_1

    :sswitch_14
    const-string v15, "/Settings/Display/SwitchAppsWhenHintHidden"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v15, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v15, "/Settings/Display/FontSize"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v15, 0xc

    goto/16 :goto_1

    :sswitch_16
    const-string v15, "/Settings/Display/FontBold"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v15, 0xb

    goto/16 :goto_1

    :sswitch_17
    const-string v15, "/Settings/Display/AutoBrightness"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v15, 0xa

    goto/16 :goto_1

    :sswitch_18
    const-string v15, "/Settings/Display/ButtonPosition"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v15, 0x9

    goto/16 :goto_1

    :sswitch_19
    const-string v15, "/Settings/Display/ScreenSaver"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v15, 0x8

    goto/16 :goto_1

    :sswitch_1a
    const-string v15, "/Settings/Display/TaskbarType"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v15, 0x7

    goto :goto_1

    :sswitch_1b
    const-string v15, "/Settings/Display/ScreenZoom"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v15, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v15, "/Settings/Display/ScreenMode"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v15, 0x5

    goto :goto_1

    :sswitch_1d
    const-string v15, "/Settings/Display/ShowButtonToHideKeyboard"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v15, 0x4

    goto :goto_1

    :sswitch_1e
    const-string v15, "/Settings/Display/EasyModeSwitch"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v15, 0x3

    goto :goto_1

    :sswitch_1f
    const-string v15, "/Settings/Display/NavigationGestureHint"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v15, 0x2

    goto :goto_1

    :sswitch_20
    const-string v15, "/Settings/Display/TaskBar"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_0

    :cond_20
    move v15, v14

    goto :goto_1

    :sswitch_21
    const-string v15, "/Settings/Display/ShowChargingInformation"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_21

    goto/16 :goto_0

    :cond_21
    move v15, v12

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_20

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "navigation_bar_rotate_suggestion_enabled"

    invoke-static {v6, v0, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v14, :cond_22

    goto :goto_2

    :cond_22
    move v14, v12

    :goto_2
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_23
    const-string v0, "Device does not support NAVIGATION_ROTATE_SUGGESTION_ENABLED - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_1
    const-string v0, "display_battery_percentage"

    const/4 v1, -0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_20

    :pswitch_2
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v5, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportPocketMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_3
    move v0, v14

    goto :goto_4

    :cond_24
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_POCKET_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_25

    goto :goto_3

    :cond_25
    move v0, v12

    :goto_4
    const-string/jumbo v1, "screen_off_pocket"

    invoke-static {v6, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_26

    goto :goto_5

    :cond_26
    move v14, v12

    :goto_5
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_27
    const-string v0, "Device not support AccidentalTouchProtection - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_4
    invoke-static {v0, v12}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-static {v0, v12}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v12}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v0, v14}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {v0, v14}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, v14}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    const-string v4, "coverRefreshRateMode"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, v2, :cond_28

    if-ne v3, v0, :cond_28

    goto :goto_6

    :cond_28
    move v14, v12

    :goto_6
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_29
    if-ne v1, v2, :cond_2a

    goto :goto_7

    :cond_2a
    move v14, v12

    :goto_7
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_5
    new-instance v2, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;

    invoke-direct {v2, v0, v1, v12}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;I)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->putToAgentFromDevice(Lcom/samsung/android/lib/episode/Scene$Builder;)V

    goto/16 :goto_20

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "taskbar_recent_apps_enabled"

    invoke-static {v6, v0, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v14, v0, :cond_2b

    goto :goto_8

    :cond_2b
    move v14, v12

    :goto_8
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_2c
    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_7
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "Device not support dual display - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getFontFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/app_fonts/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sans.loc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "default"

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_6
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    :goto_a
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_1
    move-exception v0

    move-object v4, v2

    goto :goto_c

    :catch_2
    move-object v4, v2

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :catch_3
    :goto_d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    :cond_2d
    move-object v2, v1

    goto :goto_e

    :cond_2e
    const-string v0, "#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2f

    aget-object v0, v0, v12

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_e

    :cond_2f
    aget-object v2, v0, v14

    :goto_e
    const-string/jumbo v0, "name"

    invoke-virtual {v5, v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_20

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_31

    const-string/jumbo v0, "navigation_bar_block_gestures_with_spen"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_30

    goto :goto_f

    :cond_30
    move v14, v12

    :goto_f
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_31
    const-string v0, " : Device does not support S pen."

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "taskbar_max_recent_count"

    const/4 v1, 0x2

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_32

    goto :goto_10

    :cond_32
    move v14, v12

    :goto_10
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_33
    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_b
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "ead_enabled"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_34

    goto :goto_11

    :cond_34
    move v14, v12

    :goto_11
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_c
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "auto_adjust_touch"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_35

    goto :goto_12

    :cond_35
    move v14, v12

    :goto_12
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_d
    const-string v0, "display_night_theme"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "display_night_theme_scheduled"

    invoke-static {v6, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "display_night_theme_scheduled_type"

    invoke-static {v6, v2, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "display_night_theme_wallpaper"

    invoke-static {v6, v4, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v7, "display_night_theme_on_time"

    const-wide/16 v14, 0x474

    invoke-static {v6, v7, v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    const-string v7, "display_night_theme_off_time"

    const-wide/16 v13, 0x1a4

    invoke-static {v6, v7, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "applyToWallpaper"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_36

    if-nez v1, :cond_36

    const/4 v1, 0x1

    if-ne v1, v2, :cond_36

    if-ne v1, v4, :cond_36

    const-wide/16 v0, 0x474

    cmp-long v0, v0, v17

    if-nez v0, :cond_36

    const-wide/16 v0, 0x1a4

    cmp-long v0, v0, v6

    if-nez v0, :cond_36

    const/4 v14, 0x1

    goto :goto_13

    :cond_36
    move v14, v12

    :goto_13
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureDefault()Z

    move-result v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v6, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "navigation_bar_gesture_detail_type"

    const/4 v3, 0x1

    invoke-static {v6, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "navigation_bar_back_gesture_sensitivity"

    invoke-static {v6, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v7, "navigation_bar_back_gesture_sensitivity_sub"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "assist_touch_gesture_enabled"

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "DetailGestureType"

    invoke-virtual {v5, v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "BackGestureSensitivity"

    invoke-virtual {v5, v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "backGestureSensitivitySub"

    invoke-virtual {v5, v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "assistTouchGesture"

    invoke-virtual {v5, v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v1, :cond_37

    const/4 v1, 0x1

    if-ne v1, v2, :cond_37

    if-ne v1, v4, :cond_37

    if-ne v1, v7, :cond_37

    if-ne v1, v6, :cond_37

    const/4 v14, 0x1

    goto :goto_14

    :cond_37
    move v14, v12

    :goto_14
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_38
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_f
    const-string/jumbo v0, "simple_status_bar"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-static {v6, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "B-> KEY_NOTIFICATIONS_STYLE_ON_STATUS_BAR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    move v14, v2

    goto :goto_15

    :cond_39
    move v14, v12

    :goto_15
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_10
    move v2, v14

    new-instance v3, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;I)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->putToAgentFromDevice(Lcom/samsung/android/lib/episode/Scene$Builder;)V

    goto/16 :goto_20

    :pswitch_11
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "navigationbar_key_order"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_3a

    const/4 v14, 0x1

    goto :goto_16

    :cond_3a
    move v14, v12

    :goto_16
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_3b
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_12
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "blue_light_filter"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string v0, "blue_light_filter_opacity"

    const/4 v1, 0x5

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "opacity"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blue_light_filter_scheduled"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v10}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "blue_light_filter_adaptive_mode"

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "turnOnAsAdaptive"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3c
    const-string v0, "blue_light_filter_type"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "turnOnAsAlwaysOn"

    if-nez v1, :cond_3d

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    :cond_3d
    const/4 v1, 0x2

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_17
    const-string v0, "blue_light_filter_on_time"

    const-wide/16 v1, 0x474

    invoke-static {v6, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blue_light_filter_off_time"

    const-wide/16 v1, 0x1a4

    invoke-static {v6, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_51

    const-string v0, "blue_light_filter_night_dim"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eyeComfortEnhancedComfort"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_20

    :pswitch_13
    const-string/jumbo v0, "screen_off_timeout"

    const-wide/16 v1, 0x7530

    invoke-static {v6, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_20

    :pswitch_14
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string/jumbo v0, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_18

    :cond_3e
    move v1, v12

    :goto_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_3f

    const/4 v14, 0x1

    goto :goto_19

    :cond_3f
    move v14, v12

    :goto_19
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_40
    const-string v0, "Device not support NavigationSwitchAppsWhenHintHidden - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_15
    const-string v1, "font_size"

    invoke-static {v6, v1, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    array-length v1, v0

    if-lez v1, :cond_51

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_20

    :pswitch_16
    const-string v0, "bold_text"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_20

    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAutoBrightnessDefaultValue(Landroid/content/Context;)I

    move-result v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v6, v2, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    if-ne v1, v3, :cond_41

    const/4 v14, 0x1

    goto :goto_1a

    :cond_41
    move v14, v12

    :goto_1a
    if-nez v2, :cond_42

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v6, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "screenBrightness"

    invoke-virtual {v5, v1, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_EXTRA_BRIGHT:Z

    if-eqz v1, :cond_42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_extra_brightness"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getExtraBrightness = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecDisplayUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenExtraBrightness"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_42
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_18
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "navigationbar_key_position"

    const/4 v1, 0x2

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_43

    const/4 v14, 0x1

    goto :goto_1b

    :cond_43
    move v14, v12

    :goto_1b
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_44
    const-string v0, "Device not support NavigationButtonPosition - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_19
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111015a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_45

    const/4 v14, 0x1

    goto :goto_1c

    :cond_45
    move v14, v12

    :goto_1c
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    if-eqz v0, :cond_51

    const-string/jumbo v0, "screensaver_components"

    invoke-static {v6, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenSaverComponent"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_46
    const-string v0, "Device not support ScreenSaver - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo v0, "taskbar_style_type"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_47

    const/4 v14, 0x1

    goto :goto_1d

    :cond_47
    move v14, v12

    :goto_1d
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_48
    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenZoomInfo(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    aget v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_20

    :pswitch_1c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenMode()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string/jumbo v0, "screen_mode_setting"

    const/4 v1, 0x4

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v0, "screen_mode_automatic_setting"

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenModeType"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sec_display_preset_index"

    const/4 v1, 0x2

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "whiteBalance"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sec_display_temperature_red"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "red"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sec_display_temperature_green"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "green"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sec_display_temperature_blue"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blue"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividness()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "vividness_intensity"

    invoke-static {v6, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vividnessIntensity"

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_49
    const-string v0, "Device not support ScreenMode - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_1d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "navigation_bar_button_to_hide_keyboard"

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_4a

    const/4 v14, 0x1

    goto :goto_1e

    :cond_4a
    move v14, v12

    :goto_1e
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :cond_4b
    const-string v0, "Device not support NAVIGATION_SHOW_BUTTON_TO_HIDE_KEYBOARD - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "easy_mode_switch"

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v5, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :cond_4c
    const-string v0, "Device not support EasyModeSwitch - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :pswitch_1f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string/jumbo v0, "navigation_bar_gesture_hint"

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_4d

    const/4 v14, 0x1

    goto :goto_1f

    :cond_4d
    move v14, v12

    :goto_1f
    invoke-virtual {v5, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :cond_4e
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :pswitch_20
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "task_bar"

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v5, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :cond_4f
    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :pswitch_21
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getChargingInfoAlways(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_20

    :cond_50
    const-string v0, "Device not support ChargingInformation - "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_20
    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x7fd88b6c -> :sswitch_21
        -0x665cfedc -> :sswitch_20
        -0x651124ee -> :sswitch_1f
        -0x61dd5d3d -> :sswitch_1e
        -0x5d915e43 -> :sswitch_1d
        -0x54a3bc67 -> :sswitch_1c
        -0x549dd237 -> :sswitch_1b
        -0x42dac562 -> :sswitch_1a
        -0x3f855ca1 -> :sswitch_19
        -0x3f42071b -> :sswitch_18
        -0x3dd00236 -> :sswitch_17
        -0x370546a2 -> :sswitch_16
        -0x36fda126 -> :sswitch_15
        -0x3591f2c5 -> :sswitch_14
        -0x31928855 -> :sswitch_13
        -0x2f3d2196 -> :sswitch_12
        -0x206ce61a -> :sswitch_11
        -0x104198a9 -> :sswitch_10
        -0x2308987 -> :sswitch_f
        -0xf9ce65 -> :sswitch_e
        0x5244531 -> :sswitch_d
        0xd9c80c6 -> :sswitch_c
        0x33f61af5 -> :sswitch_b
        0x43702bbe -> :sswitch_a
        0x4a6994f9 -> :sswitch_9
        0x574e79f8 -> :sswitch_8
        0x5a960d2a -> :sswitch_7
        0x5ac66fd1 -> :sswitch_6
        0x6110a63b -> :sswitch_5
        0x710bf031 -> :sswitch_4
        0x7268dfb0 -> :sswitch_3
        0x765cb222 -> :sswitch_2
        0x7aa4dd60 -> :sswitch_1
        0x7cb7a158 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 29

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string/jumbo v4, "task_bar"

    const-string v5, "easy_mode_switch"

    const-string/jumbo v6, "screen_mode_automatic_setting"

    const-string/jumbo v7, "sec_display_temperature_custom"

    const-string/jumbo v8, "screen_brightness_mode"

    const-string/jumbo v9, "range"

    const-string v13, "Eternal/DisplayItem"

    const-string v11, "com.sec.android.app.SecSetupWizard"

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v14}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    if-nez v3, :cond_0

    move-object/from16 v17, v4

    move-object v10, v14

    goto :goto_0

    :cond_0
    iget-object v10, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    move-object/from16 v17, v4

    :goto_0
    new-instance v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v4, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v5

    sget-object v5, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    move-object/from16 v19, v6

    const-string v6, "device_provisioned"

    move-object/from16 v20, v7

    const-string/jumbo v7, "turnOnAsScheduledEnd"

    move-object/from16 v21, v8

    const-string/jumbo v8, "turnOnAsScheduledStart"

    move-object/from16 v22, v9

    const-string/jumbo v9, "turnOnAsScheduledType"

    move-object/from16 v23, v14

    const-string/jumbo v14, "turnOnAsScheduled"

    move-object/from16 v24, v6

    const-string v6, "com.google.android.setupwizard"

    move-object/from16 v25, v7

    const-string v7, "PackageManager - "

    move-object/from16 v26, v8

    const-string v8, "Device not support TaskBar"

    move-object/from16 v27, v9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v28

    sparse-switch v28, :sswitch_data_0

    :goto_1
    const/4 v0, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v9, "/Settings/Display/RotateSuggestionEnabled"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x21

    goto/16 :goto_2

    :sswitch_1
    const-string v9, "/Settings/Display/ShowBatteryPercentage"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x20

    goto/16 :goto_2

    :sswitch_2
    const-string v9, "/Settings/Display/ScreenResolution"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x1f

    goto/16 :goto_2

    :sswitch_3
    const-string v9, "/Settings/Display/BlockAccidentalTouches"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x1e

    goto/16 :goto_2

    :sswitch_4
    const-string v9, "/Settings/Display/RefreshRate"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x1d

    goto/16 :goto_2

    :sswitch_5
    const-string v9, "/Settings/Display/CameraCutout"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/16 v0, 0x1c

    goto/16 :goto_2

    :sswitch_6
    const-string v9, "/Settings/Display/TaskbarRecentApps"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x1b

    goto/16 :goto_2

    :sswitch_7
    const-string v9, "/Settings/Display/SwitchAppsToFrontScreen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/16 v0, 0x1a

    goto/16 :goto_2

    :sswitch_8
    const-string v9, "/Settings/Display/FontStyle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 v0, 0x19

    goto/16 :goto_2

    :sswitch_9
    const-string v9, "/Settings/Display/BlockGesturesWithSPen"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x18

    goto/16 :goto_2

    :sswitch_a
    const-string v9, "/Settings/Display/TaskbarRecentAppsCount"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0x17

    goto/16 :goto_2

    :sswitch_b
    const-string v9, "/Settings/Display/AdaptiveColorTone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0x16

    goto/16 :goto_2

    :sswitch_c
    const-string v9, "/Settings/Display/TouchSensetivity"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0x15

    goto/16 :goto_2

    :sswitch_d
    const-string v9, "/Settings/Display/NightMode"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x14

    goto/16 :goto_2

    :sswitch_e
    const-string v9, "/Settings/Display/NavigationTypes"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x13

    goto/16 :goto_2

    :sswitch_f
    const-string v9, "/Settings/Display/ShowRecentNotificationOnly"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v0, 0x12

    goto/16 :goto_2

    :sswitch_10
    const-string v9, "/Settings/Display/FullScreenApps"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v0, 0x11

    goto/16 :goto_2

    :sswitch_11
    const-string v9, "/Settings/Display/ButtonLayout"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v0, 0x10

    goto/16 :goto_2

    :sswitch_12
    const-string v9, "/Settings/Display/BluelightFilter"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v0, 0xf

    goto/16 :goto_2

    :sswitch_13
    const-string v9, "/Settings/Display/ScreenTimeout"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v0, 0xe

    goto/16 :goto_2

    :sswitch_14
    const-string v9, "/Settings/Display/SwitchAppsWhenHintHidden"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v0, 0xd

    goto/16 :goto_2

    :sswitch_15
    const-string v9, "/Settings/Display/FontSize"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v0, 0xc

    goto/16 :goto_2

    :sswitch_16
    const-string v9, "/Settings/Display/FontBold"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v0, 0xb

    goto/16 :goto_2

    :sswitch_17
    const-string v9, "/Settings/Display/AutoBrightness"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v0, 0xa

    goto/16 :goto_2

    :sswitch_18
    const-string v9, "/Settings/Display/ButtonPosition"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_19
    const-string v9, "/Settings/Display/ScreenSaver"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_1a
    const-string v9, "/Settings/Display/TaskbarType"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/4 v0, 0x7

    goto :goto_2

    :sswitch_1b
    const-string v9, "/Settings/Display/ScreenZoom"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/4 v0, 0x6

    goto :goto_2

    :sswitch_1c
    const-string v9, "/Settings/Display/ScreenMode"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_1d
    const-string v9, "/Settings/Display/ShowButtonToHideKeyboard"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1e
    const-string v9, "/Settings/Display/EasyModeSwitch"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1f
    const-string v9, "/Settings/Display/NavigationGestureHint"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_1

    :cond_20
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_20
    const-string v9, "/Settings/Display/TaskBar"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_1

    :cond_21
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_21
    const-string v9, "/Settings/Display/ShowChargingInformation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_1

    :cond_22
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    :cond_23
    :goto_3
    move-object v3, v4

    goto/16 :goto_33

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "navigation_bar_rotate_suggestion_enabled"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_24
    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_3

    :pswitch_1
    iget-object v0, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R -> KEY_DISPLAY_SHOW_BATTERY_PERCENTAGE: prevOneUIVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "display_battery_percentage"

    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->getOneUIVersionInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x11170

    if-ge v0, v2, :cond_25

    const/4 v2, 0x1

    invoke-static {v15, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_25
    invoke-static {v15, v12, v1}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->isSameDeviceType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->TEMPORARY_BLOCK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_3

    :cond_26
    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_3

    :pswitch_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "screen_off_pocket"

    invoke-static {v15, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_3

    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_27

    if-ne v5, v6, :cond_27

    const/4 v0, 0x2

    const/4 v3, 0x2

    goto :goto_4

    :cond_27
    const/4 v0, 0x2

    if-ne v3, v0, :cond_29

    const/4 v6, 0x3

    if-eq v5, v6, :cond_28

    if-eq v5, v0, :cond_28

    const/4 v6, 0x4

    if-ne v5, v6, :cond_29

    :cond_28
    const/4 v3, 0x1

    :cond_29
    :goto_4
    const-string/jumbo v5, "refresh_rate_mode"

    const/4 v6, 0x1

    if-eq v3, v0, :cond_2a

    if-ne v3, v6, :cond_2b

    :cond_2a
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-static {v15, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_2b
    invoke-static {v15, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    invoke-static {v1, v6}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "coverRefreshRateMode"

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(I)I

    move-result v2

    if-ne v0, v6, :cond_2c

    if-ne v2, v6, :cond_2c

    const/4 v0, 0x2

    const/4 v3, 0x2

    goto :goto_6

    :cond_2c
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2e

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2d

    if-eq v2, v3, :cond_2d

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2e

    :cond_2d
    const/4 v0, 0x1

    :cond_2e
    :goto_6
    const-string/jumbo v2, "refresh_rate_mode_cover"

    if-eq v0, v3, :cond_2f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_30

    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    invoke-static {v15, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_30
    invoke-static {v15, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_31
    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_5
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->putToDeviceFromAgent(Lcom/samsung/android/lib/episode/Scene;)V

    goto/16 :goto_3

    :pswitch_6
    const-string v0, "In TaskBar Recent Apps Restore Case"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {v13, v8}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_34
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "settings_task_bar_recent_apps"

    invoke-static {v15, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently In Setup-Wizard with defaultHomeActivitys - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_35
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "taskbar_recent_apps_enabled"

    if-eqz v0, :cond_37

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_36

    goto :goto_7

    :cond_36
    invoke-static {v15, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "TaskBar Recent Apps Enable Default ON"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_37
    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskBar Recent Apps Enabled in prev device"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_7
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getFontFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "setValue : skip restore : KEY_DISPLAY_FONT_STYLE"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_38
    const-string/jumbo v0, "name"

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    iget-object v0, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-virtual {v0, v12}, Lcom/samsung/android/fontutil/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/fontutil/SemTypeface;

    move-result-object v5

    if-nez v5, :cond_39

    const-string v0, "default"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "Font style is not existed."

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_39
    const-string v0, ".xml"

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v6, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v6}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    if-eqz v5, :cond_3c

    if-lez v0, :cond_3a

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_3a
    invoke-virtual {v6, v12}, Lcom/samsung/android/fontutil/FontWriter;->createFontDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_8
    iget-object v0, v5, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_3b

    iget-object v0, v5, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/fontutil/TypefaceFile;

    :try_start_0
    iget-object v8, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Lcom/samsung/android/fontutil/SemTypeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v9, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v16

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    const/4 v8, 0x1

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :goto_a
    add-int/2addr v14, v8

    goto :goto_8

    :cond_3b
    if-nez v16, :cond_3d

    invoke-virtual {v6, v12}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b

    :cond_3c
    const-string v0, " "

    invoke-virtual {v6, v0}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    const-string v0, "default#default"

    invoke-virtual {v6, v0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    :cond_3d
    :goto_b
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "com.samsung.music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "com.infraware.polarisoffice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisoffice4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisviewer4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisoffice4.document"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisoffice5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisoffice5.document"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisviewer5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.infraware.polarisviewer5.document"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_d

    :cond_3f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v3

    if-eqz v3, :cond_40

    const-string v3, "com.nttdocomo.android.toruca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_40
    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_41

    const-string v2, "com.sec.android.app.camera == 0"

    invoke-static {v13, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_41
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_42
    :goto_d
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_43
    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_44

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "navigation_bar_block_gestures_with_spen"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_44
    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "taskbar_max_recent_count"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_45
    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_b
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "ead_enabled"

    invoke-static {v15, v12, v0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_c
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "auto_adjust_touch"

    invoke-static {v15, v12, v0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v2, v14}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v27

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v26

    invoke-virtual {v2, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v25

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "applyToWallpaper"

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "uimode"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v7, "display_night_theme_scheduled"

    const/4 v8, 0x0

    invoke-static {v15, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v0, v9, :cond_47

    invoke-static {v15, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_46
    const/4 v0, 0x0

    :cond_47
    :goto_e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_48

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v7, "display_night_theme_scheduled_type"

    invoke-static {v15, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    :cond_48
    const/4 v3, 0x1

    :goto_f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-wide/16 v8, 0x5a0

    const-wide/16 v10, 0x0

    if-nez v7, :cond_49

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-string v5, "display_night_theme_on_time"

    invoke-static {v15, v5, v13, v14}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    cmp-long v5, v13, v10

    if-ltz v5, :cond_49

    cmp-long v5, v13, v8

    if-gez v5, :cond_49

    long-to-int v5, v13

    div-int/lit8 v7, v5, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v7, v5}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    :cond_49
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "display_night_theme_off_time"

    invoke-static {v15, v7, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    cmp-long v7, v5, v10

    if-ltz v7, :cond_4a

    cmp-long v7, v5, v8

    if-gez v7, :cond_4a

    long-to-int v5, v5

    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v6, v5}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    :cond_4a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    const-string v5, "display_night_theme_wallpaper"

    invoke-static {v15, v2, v5}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    const-string v2, "display_night_theme"

    invoke-static {v15, v12, v2}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4d

    if-ne v3, v2, :cond_4c

    const/4 v15, 0x0

    goto :goto_11

    :cond_4c
    const/4 v15, 0x3

    goto :goto_11

    :cond_4d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4e

    const/4 v12, 0x2

    goto :goto_10

    :cond_4e
    const/4 v12, 0x1

    :goto_10
    move v15, v12

    :goto_11
    invoke-virtual {v1, v15}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto/16 :goto_3

    :pswitch_e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4f

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureDefault()Z

    move-result v0

    :cond_4f
    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v15, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "DetailGestureType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BackGestureSensitivity"

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "backGestureSensitivitySub"

    invoke-virtual {v2, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "assistTouchGesture"

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSimplifiedGesture()Z

    move-result v7

    const-string/jumbo v8, "sem_bottom_gesture_restored"

    if-eqz v7, :cond_50

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportLegacyFeatures(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_50

    const/4 v7, 0x1

    if-ne v0, v7, :cond_50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_50

    invoke-static {v15, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    :cond_50
    const/4 v7, 0x0

    invoke-static {v15, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string/jumbo v8, "navigation_bar_gesture_detail_type"

    if-nez v7, :cond_51

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v15, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_13

    :cond_51
    const/4 v3, 0x1

    if-ne v0, v3, :cond_52

    const-string v0, "gestureDetailType is empty."

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_52
    :goto_13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "assist_touch_gesture_enabled"

    invoke-static {v15, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "assist_long_press_home_enabled"

    invoke-static {v15, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "navigation_bar_back_gesture_sensitivity"

    invoke-static {v15, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "navigation_bar_back_gesture_sensitivity_sub"

    invoke-static {v15, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_55
    move-object/from16 v0, v24

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    goto/16 :goto_3

    :cond_56
    const-string v0, "Skipped resource overlay - Device is not provisioned."

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_57
    iput-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v4, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R -> KEY_DISPLAY_SHOW_RECENT_NOTIFICATION_ONLY: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R -> KEY_DISPLAY_SHOW_RECENT_NOTIFICATION_ONLY: prevOneUIVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    const-string/jumbo v2, "simple_status_bar"

    if-eqz v0, :cond_58

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->getOneUIVersionInt(Ljava/lang/String;)I

    move-result v0

    const v3, 0x11170

    if-ge v0, v3, :cond_58

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_58

    const/4 v5, 0x1

    invoke-static {v15, v2, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :cond_58
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v15, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_10
    const/4 v5, 0x1

    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;

    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->putToDeviceFromAgent(Lcom/samsung/android/lib/episode/Scene;)V

    goto/16 :goto_3

    :pswitch_11
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "navigationbar_key_order"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string/jumbo v0, "opacity"

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "turnOnAsAlwaysOn"

    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "eyeComfortEnhancedComfort"

    invoke-virtual {v2, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "eyeComfortGlareReduction"

    invoke-virtual {v2, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_59

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_14

    :cond_59
    const/4 v14, -0x1

    :goto_14
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v8

    const-string v11, "blue_light_filter_scheduled"

    const-string v13, "blue_light_filter_type"

    if-eqz v8, :cond_5f

    const-string/jumbo v8, "turnOnAsAdaptive"

    invoke-virtual {v2, v8}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    move-object/from16 v24, v4

    const-string v4, "blue_light_filter_adaptive_mode"

    if-nez v8, :cond_5a

    invoke-static {v15, v2, v4}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_5a
    if-ltz v14, :cond_5d

    if-nez v14, :cond_5b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_5b

    const/4 v2, 0x0

    invoke-static {v15, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v15, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v15, v13, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    goto :goto_17

    :cond_5b
    if-nez v14, :cond_5c

    const/4 v2, 0x1

    goto :goto_15

    :cond_5c
    const/4 v2, 0x0

    :goto_15
    invoke-static {v15, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5d
    :goto_16
    const/4 v2, 0x0

    :goto_17
    if-ltz v14, :cond_5e

    if-nez v2, :cond_5e

    const/4 v4, 0x0

    invoke-static {v15, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v14, v8, :cond_5e

    invoke-static {v15, v11, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5e
    move v8, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_18

    :cond_5f
    move-object/from16 v24, v4

    const/4 v2, 0x1

    invoke-static {v15, v11, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v14, :cond_60

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_60

    const/4 v4, 0x0

    invoke-static {v15, v13, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v8, v2

    goto :goto_18

    :cond_60
    const/4 v4, 0x0

    move v8, v4

    :goto_18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_62

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v2, :cond_61

    invoke-static {v15, v13, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_19

    :cond_61
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-static {v15, v5, v13}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    if-nez v8, :cond_63

    invoke-static {v15, v5, v13}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string v2, "blue_light_filter_opacity"

    invoke-static {v15, v0, v2}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 p2, v10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v0, "blue_light_filter_on_time"

    invoke-static {v15, v0, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1a

    :cond_65
    move-object/from16 p2, v10

    :goto_1a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v0, "blue_light_filter_off_time"

    invoke-static {v15, v0, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_66
    const-string v0, "blue_light_filter"

    if-eqz v3, :cond_68

    iget v2, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_67

    const/4 v4, 0x2

    if-eq v2, v4, :cond_67

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    :cond_67
    invoke-static {v15, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    :cond_68
    invoke-static {v15, v12, v0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.bluelightfilter"

    const-string v4, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-static {v3, v4, v2}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string v3, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/4 v4, 0x1

    if-ne v14, v4, :cond_6c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_6a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_69

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c

    :cond_69
    const/16 v4, 0x19

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c

    :cond_6a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_6b

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c

    :cond_6b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6e

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c

    :cond_6c
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_6d

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c

    :cond_6d
    const/16 v4, 0x19

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6e
    :goto_1c
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz p2, :cond_6f

    move-object/from16 v2, p2

    move-object/from16 v1, v23

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6f

    const-string v1, "blue_light_filter_night_dim"

    invoke-static {v15, v2, v1}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0, v1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;Landroid/app/IActivityManager;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6f
    :goto_1d
    move-object/from16 v3, v24

    goto/16 :goto_33

    :pswitch_13
    move-object/from16 v24, v4

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v15, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1d

    :pswitch_14
    move-object/from16 v24, v4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1d

    :cond_70
    move-object/from16 v3, v24

    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_15
    move-object v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v6, v22

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_71

    move v12, v2

    goto :goto_1e

    :cond_71
    const/16 v12, 0x8

    :goto_1e
    invoke-static {v1, v0, v12}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->changeFontSize(Landroid/content/Context;II)V

    goto/16 :goto_33

    :pswitch_16
    move-object v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_72

    const/16 v14, 0x12c

    goto :goto_1f

    :cond_72
    const/4 v14, 0x0

    :goto_1f
    const-string v2, "bold_text"

    invoke-static {v15, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1, v14}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    goto/16 :goto_33

    :pswitch_17
    move-object v3, v4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    move-object/from16 v0, v21

    invoke-static {v15, v12, v0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    const/4 v4, 0x0

    goto :goto_21

    :cond_73
    move-object/from16 v0, v21

    goto :goto_20

    :goto_21
    invoke-static {v15, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a3

    const-string/jumbo v0, "screenBrightness"

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "screenExtraBrightness"

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_74

    const-string/jumbo v4, "screen_brightness"

    invoke-static {v15, v0, v4}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_EXTRA_BRIGHT:Z

    if-eqz v0, :cond_a3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setExtraBrightness : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SecDisplayUtils"

    invoke-static {v4, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_extra_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_33

    :pswitch_18
    move-object v3, v4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "navigationbar_key_position"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_33

    :cond_75
    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_19
    move-object v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_a3

    const-string/jumbo v0, "screenSaverComponent"

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_33

    :cond_76
    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_1a
    move-object v3, v4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "taskbar_style_type"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_33

    :cond_77
    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_1b
    move-object v3, v4

    move-object/from16 v6, v22

    invoke-static {v10}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->isSameDeviceType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_22

    :cond_78
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setScreenZoomInfo(Landroid/content/Context;[I)V

    goto/16 :goto_33

    :cond_79
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Device type is different or currently in DEX mode, Skip KEY_DISPLAY_SCREEN_ZOOM, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEVICE_TYPE_MISMATCH:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_1c
    move-object v3, v4

    const/4 v4, -0x1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenMode()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_LCD_CONFIG_DEFAULT_SCREEN_MODE"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v6, "screenModeType"

    invoke-virtual {v2, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "whiteBalance"

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "red"

    invoke-virtual {v2, v8}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "green"

    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "blue"

    invoke-virtual {v2, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vividnessIntensity"

    invoke-virtual {v2, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_83

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Screen Mode backup value: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_80

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v11

    if-eqz v11, :cond_7e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v11

    if-eqz v11, :cond_7a

    const/4 v11, 0x4

    if-eq v4, v11, :cond_7d

    const/4 v12, 0x3

    if-eq v4, v12, :cond_7d

    goto/16 :goto_23

    :cond_7a
    const/4 v11, 0x4

    const/4 v12, 0x3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v14

    if-eqz v14, :cond_7b

    if-eq v4, v11, :cond_7d

    const/4 v14, 0x2

    if-eq v4, v14, :cond_7d

    goto :goto_23

    :cond_7b
    const/4 v14, 0x2

    if-ne v4, v12, :cond_7c

    move v4, v14

    :cond_7c
    if-eq v4, v11, :cond_7d

    if-eqz v4, :cond_7d

    const/4 v11, 0x1

    if-eq v4, v11, :cond_7d

    if-eq v4, v14, :cond_7d

    goto :goto_23

    :cond_7d
    move v14, v4

    goto :goto_24

    :cond_7e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v11

    if-eqz v11, :cond_7f

    const/4 v11, 0x4

    if-eq v4, v11, :cond_7d

    const/4 v12, 0x3

    if-eq v4, v12, :cond_7d

    goto :goto_23

    :cond_7f
    const/4 v11, 0x4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v12

    if-eqz v12, :cond_7d

    if-eq v4, v11, :cond_7d

    const/4 v12, 0x2

    if-eq v4, v12, :cond_7d

    goto :goto_23

    :cond_80
    const/4 v11, 0x4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v12

    if-eqz v12, :cond_81

    if-eq v4, v11, :cond_7d

    const/4 v12, 0x3

    if-eq v4, v12, :cond_7d

    goto :goto_23

    :cond_81
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v12

    if-eqz v12, :cond_82

    if-eq v4, v11, :cond_7d

    const/4 v12, 0x2

    if-eq v4, v12, :cond_7d

    goto :goto_23

    :cond_82
    const/4 v12, 0x2

    if-eq v4, v11, :cond_7d

    if-eqz v4, :cond_7d

    const/4 v11, 0x1

    if-eq v4, v11, :cond_7d

    if-eq v4, v12, :cond_7d

    :goto_23
    move v14, v0

    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Screen Mode restore Value: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_83
    move v14, v4

    :goto_25
    if-ltz v14, :cond_93

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Screen Mode white balance restore value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sec_display_preset_index"

    const/4 v5, 0x0

    invoke-static {v15, v4, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_84
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x64

    if-nez v0, :cond_85

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_26

    :cond_85
    move v0, v4

    :goto_26
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_86

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_27

    :cond_86
    move v5, v4

    :goto_27
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_28

    :cond_87
    move v7, v4

    :goto_28
    if-eq v0, v4, :cond_88

    if-eq v5, v4, :cond_88

    if-ne v7, v4, :cond_89

    :cond_88
    move-object/from16 v8, v20

    const/4 v0, 0x0

    goto :goto_29

    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Screen Mode display temperature red: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Screen Mode display temperature green: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Screen Mode display temperature blue: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, v20

    const/4 v4, 0x1

    invoke-static {v15, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "sec_display_temperature_red"

    invoke-static {v15, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "sec_display_temperature_green"

    invoke-static {v15, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "sec_display_temperature_blue"

    invoke-static {v15, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2a

    :goto_29
    invoke-static {v15, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividness()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string/jumbo v0, "vividness_intensity"

    invoke-static {v15, v2, v0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    const-string v0, "mDNIe"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_a3

    const/4 v1, 0x3

    if-ne v14, v1, :cond_8e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividPlusMode()Z

    move-result v1

    if-nez v1, :cond_8b

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayColor(I)V

    goto :goto_2b

    :cond_8b
    const/4 v1, 0x0

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_2c

    :cond_8c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividPlusMode()Z

    move-result v1

    if-nez v1, :cond_8d

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayColor(I)V

    :cond_8d
    invoke-virtual {v0, v14}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_2c

    :cond_8e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v1

    if-eqz v1, :cond_90

    const/4 v1, 0x2

    if-ne v14, v1, :cond_8f

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_2c

    :cond_8f
    invoke-virtual {v0, v14}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_2c

    :cond_90
    invoke-virtual {v0, v14}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :goto_2c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    move-object/from16 v0, v19

    invoke-static {v15, v6, v0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    const/4 v1, 0x4

    goto :goto_2e

    :cond_91
    move-object/from16 v0, v19

    goto :goto_2d

    :goto_2e
    if-ne v14, v1, :cond_92

    const/4 v1, 0x1

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_92
    const-string/jumbo v0, "screen_mode_setting"

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_33

    :cond_93
    const-string v0, "Screen Mode wrong restore value"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :cond_94
    const-string v0, "Screen Mode don\'t support restore"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_1d
    move-object v3, v4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v15, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_33

    :cond_95
    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_1e
    move-object v3, v4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_98

    move-object/from16 v0, v18

    const/4 v2, 0x1

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_96

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2f

    :cond_96
    const/4 v2, 0x1

    :goto_2f
    if-eq v2, v4, :cond_a3

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v2, :cond_97

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v0

    sget-object v4, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {v1, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    if-eq v0, v4, :cond_a3

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayEasyModeDensity(Landroid/content/Context;I)V

    goto/16 :goto_33

    :cond_97
    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayEasyModeDensity(Landroid/content/Context;I)V

    goto/16 :goto_33

    :cond_98
    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_1f
    move-object v3, v4

    move-object/from16 v0, v24

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v4, "navigation_bar_gesture_hint"

    invoke-static {v15, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a3

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    goto/16 :goto_33

    :cond_99
    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :pswitch_20
    move-object v3, v4

    const-string v0, "In TaskBar Restore Case"

    invoke-static {v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9a

    invoke-static {v8}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_33

    :cond_9a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_9b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_9b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    :cond_9c
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "settings_task_bar_enabled"

    invoke-static {v15, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently In Setup-Wizard with defaultHomeActivity - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_9d
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9f

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9e

    goto :goto_30

    :cond_9e
    move v1, v2

    move-object/from16 v0, v17

    goto :goto_31

    :cond_9f
    :goto_30
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_a1

    :cond_a0
    move-object/from16 v0, v17

    goto :goto_32

    :cond_a1
    move-object/from16 v0, v17

    const/4 v1, 0x1

    :goto_31
    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "TaskBar set to Default ON"

    invoke-static {v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;)V

    goto :goto_33

    :goto_32
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskBar Supported in prev device -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;)V

    goto :goto_33

    :pswitch_21
    move-object v3, v4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getChargingInfoAlways(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_a2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setChargingInfoAlways(Landroid/content/Context;I)V

    goto :goto_33

    :cond_a2
    iput-object v5, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    :cond_a3
    :goto_33
    invoke-virtual {v3}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7fd88b6c -> :sswitch_21
        -0x665cfedc -> :sswitch_20
        -0x651124ee -> :sswitch_1f
        -0x61dd5d3d -> :sswitch_1e
        -0x5d915e43 -> :sswitch_1d
        -0x54a3bc67 -> :sswitch_1c
        -0x549dd237 -> :sswitch_1b
        -0x42dac562 -> :sswitch_1a
        -0x3f855ca1 -> :sswitch_19
        -0x3f42071b -> :sswitch_18
        -0x3dd00236 -> :sswitch_17
        -0x370546a2 -> :sswitch_16
        -0x36fda126 -> :sswitch_15
        -0x3591f2c5 -> :sswitch_14
        -0x31928855 -> :sswitch_13
        -0x2f3d2196 -> :sswitch_12
        -0x206ce61a -> :sswitch_11
        -0x104198a9 -> :sswitch_10
        -0x2308987 -> :sswitch_f
        -0xf9ce65 -> :sswitch_e
        0x5244531 -> :sswitch_d
        0xd9c80c6 -> :sswitch_c
        0x33f61af5 -> :sswitch_b
        0x43702bbe -> :sswitch_a
        0x4a6994f9 -> :sswitch_9
        0x574e79f8 -> :sswitch_8
        0x5a960d2a -> :sswitch_7
        0x5ac66fd1 -> :sswitch_6
        0x6110a63b -> :sswitch_5
        0x710bf031 -> :sswitch_4
        0x7268dfb0 -> :sswitch_3
        0x765cb222 -> :sswitch_2
        0x7aa4dd60 -> :sswitch_1
        0x7cb7a158 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
