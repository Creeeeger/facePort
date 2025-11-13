.class public final Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# direct methods
.method public static sideKeyDoublePressRestore(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "function_key_config_doublepress"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->migrationFunctionKeyDB(Landroid/content/Context;I)V

    if-eqz v0, :cond_1

    invoke-static {p0, v3, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v3, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AdvancedFeatureItem"

    const-string v5, "0"

    const-string v6, "1"

    const v7, 0x1110257

    const-string v8, "expectedResult"

    const/4 v9, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v10, "/Settings/Advanced/XcoverKeyDedicatedApp"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v9, 0x2e

    goto/16 :goto_0

    :sswitch_1
    const-string v10, "/Settings/Advanced/LabsMultiWindowAllApps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0x2d

    goto/16 :goto_0

    :sswitch_2
    const-string v10, "/Settings/Advanced/SideKeyDoublePressType"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v9, 0x2c

    goto/16 :goto_0

    :sswitch_3
    const-string v10, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0x2b

    goto/16 :goto_0

    :sswitch_4
    const-string v10, "/Settings/Advanced/SideKeyDoublePressSwitch"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v9, 0x2a

    goto/16 :goto_0

    :sswitch_5
    const-string v10, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v9, 0x29

    goto/16 :goto_0

    :sswitch_6
    const-string v10, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v9, 0x28

    goto/16 :goto_0

    :sswitch_7
    const-string v10, "/Settings/Advanced/PreventOnlineProcessing"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v9, 0x27

    goto/16 :goto_0

    :sswitch_8
    const-string v10, "/Settings/Advanced/LabsFullScreenInSplitView"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v9, 0x26

    goto/16 :goto_0

    :sswitch_9
    const-string v10, "/Settings/Advanced/VideoEnhancerSwitch"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v9, 0x25

    goto/16 :goto_0

    :sswitch_a
    const-string v10, "/Settings/Advanced/XcoverKeyPtt"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v9, 0x24

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "/Settings/Advanced/LabsSwipeSplitView"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v9, 0x23

    goto/16 :goto_0

    :sswitch_c
    const-string v10, "/Settings/Advanced/ActiveKeyOnLockScreen"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v9, 0x22

    goto/16 :goto_0

    :sswitch_d
    const-string v10, "/Settings/Advanced/PalmTouchToSleep"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v9, 0x21

    goto/16 :goto_0

    :sswitch_e
    const-string v10, "/Settings/Advanced/DirectCall"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v9, 0x20

    goto/16 :goto_0

    :sswitch_f
    const-string v10, "/Settings/Advanced/SmartPopupView"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v9, 0x1f

    goto/16 :goto_0

    :sswitch_10
    const-string v10, "/Settings/Advanced/DirectShare"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v9, 0x1e

    goto/16 :goto_0

    :sswitch_11
    const-string v10, "/Settings/Advanced/DoubleTapToWake"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v9, 0x1d

    goto/16 :goto_0

    :sswitch_12
    const-string v10, "/Settings/Advanced/LabsLandScapeAllApps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v9, 0x1c

    goto/16 :goto_0

    :sswitch_13
    const-string v10, "/Settings/Advanced/LabsAspectRatioApps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v9, 0x1b

    goto/16 :goto_0

    :sswitch_14
    const-string v10, "/Settings/Advanced/SideKeyLongPressType"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v9, 0x1a

    goto/16 :goto_0

    :sswitch_15
    const-string v10, "/Settings/Advanced/LabsSwipePopupView"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v9, 0x19

    goto/16 :goto_0

    :sswitch_16
    const-string v10, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v9, 0x18

    goto/16 :goto_0

    :sswitch_17
    const-string v10, "/Settings/Advanced/SwipePopupViewCornerAreaLevel"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v9, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v10, "/Settings/Advanced/XcoverTopKeyLongPress"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v9, 0x16

    goto/16 :goto_0

    :sswitch_19
    const-string v10, "/Settings/Advanced/LiftToWake"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v9, 0x15

    goto/16 :goto_0

    :sswitch_1a
    const-string v10, "/Settings/Advanced/VideoEnhancerApp"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v9, 0x14

    goto/16 :goto_0

    :sswitch_1b
    const-string v10, "/Settings/Advanced/LabsRotateApps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v9, 0x13

    goto/16 :goto_0

    :sswitch_1c
    const-string v10, "/Settings/Advanced/ActiveKeyShortPress"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v9, 0x12

    goto/16 :goto_0

    :sswitch_1d
    const-string v10, "/Settings/Advanced/FlexModeScrollWheelPosition"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v9, 0x11

    goto/16 :goto_0

    :sswitch_1e
    const-string v10, "/Settings/Advanced/DoubleTapToSleep"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v9, 0x10

    goto/16 :goto_0

    :sswitch_1f
    const-string v10, "/Settings/Advanced/CoverTextDirection"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v9, 0xf

    goto/16 :goto_0

    :sswitch_20
    const-string v10, "/Settings/Advanced/FlexModePanelEnabled"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v9, 0xe

    goto/16 :goto_0

    :sswitch_21
    const-string v10, "/Settings/Advanced/OneHandedMode"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v9, 0xd

    goto/16 :goto_0

    :sswitch_22
    const-string v10, "/Settings/Advanced/SideKeyLongPress"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v9, 0xc

    goto/16 :goto_0

    :sswitch_23
    const-string v10, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v9, 0xb

    goto/16 :goto_0

    :sswitch_24
    const-string v10, "/Settings/Advanced/SmartAlert"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v9, 0xa

    goto/16 :goto_0

    :sswitch_25
    const-string v10, "/Settings/Advanced/AutoScreenOn"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v9, 0x9

    goto/16 :goto_0

    :sswitch_26
    const-string v10, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v9, 0x8

    goto/16 :goto_0

    :sswitch_27
    const-string v10, "/Settings/Advanced/SmartStay"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_27

    goto :goto_0

    :cond_27
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_28
    const-string v10, "/Settings/Advanced/EasyMute"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    goto :goto_0

    :cond_28
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_29
    const-string v10, "/Settings/Advanced/ActiveKeyLongPress"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    goto :goto_0

    :cond_29
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_2a
    const-string v10, "/Settings/Advanced/LabsAppSplitView"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_2b
    const-string v10, "/Settings/Advanced/SideKeyDoublePress"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_2c
    const-string v10, "/Settings/Advanced/LabsFlexModePanel"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_2d
    const-string v10, "/Settings/Advanced/FingerSensorGestures"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    goto :goto_0

    :cond_2d
    move v9, v0

    goto :goto_0

    :sswitch_2e
    const-string v10, "/Settings/Advanced/XcoverTopKeyShortPress"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    goto :goto_0

    :cond_2e
    move v9, v2

    :goto_0
    packed-switch v9, :pswitch_data_0

    const-string p1, "Unknown key to test: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable$1(Landroid/content/Context;)Z

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    goto/16 :goto_1

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable$1(Landroid/content/Context;)Z

    goto/16 :goto_1

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_1

    :pswitch_8
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_9
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_1

    :pswitch_b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto/16 :goto_1

    :pswitch_c
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_d
    const-string v0, "direct_call"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.freeform_window_management"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung:com.android"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    const-string v1, "com.samsung"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_f
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_10
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_11
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    goto/16 :goto_1

    :pswitch_12
    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_13
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_1

    :pswitch_15
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_30

    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x1fc34

    if-le p1, v0, :cond_30

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_1

    :pswitch_17
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto/16 :goto_1

    :pswitch_18
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_19
    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1a
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto/16 :goto_1

    :pswitch_1b
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingCoverOrientation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1d
    sget-boolean p1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v0, "wakeupType"

    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "showHardKey"

    invoke-virtual {p1, v6, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v6, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v6, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    goto/16 :goto_1

    :pswitch_1f
    const-string/jumbo v0, "palm_swipe_to_capture"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_20
    const-string/jumbo v0, "smart_alert"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_21
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    :cond_2f
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_22
    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    goto/16 :goto_1

    :pswitch_23
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_24
    const-string v0, "easy_mute"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v0, "palmTouch"

    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "turnOver"

    invoke-virtual {p1, v6, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v6, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v6, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_25
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto :goto_1

    :pswitch_26
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_30

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto :goto_1

    :pswitch_27
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    goto :goto_1

    :pswitch_28
    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto :goto_1

    :pswitch_29
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v8, v0, p0, p2}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2a
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    :cond_30
    :goto_1
    :pswitch_2b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - test case size: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_31

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c390220 -> :sswitch_2e
        -0x6e202a23 -> :sswitch_2d
        -0x6c2c62ae -> :sswitch_2c
        -0x6af69bc6 -> :sswitch_2b
        -0x68ba8cac -> :sswitch_2a
        -0x6149ea62 -> :sswitch_29
        -0x5facb6d5 -> :sswitch_28
        -0x5da9ee2e -> :sswitch_27
        -0x5cf16054 -> :sswitch_26
        -0x598a05d6 -> :sswitch_25
        -0x589512fd -> :sswitch_24
        -0x51680a0d -> :sswitch_23
        -0x49eb4191 -> :sswitch_22
        -0x454772d9 -> :sswitch_21
        -0x44008817 -> :sswitch_20
        -0x433df9b5 -> :sswitch_1f
        -0x42ede966 -> :sswitch_1e
        -0x40b24cf5 -> :sswitch_1d
        -0x3e758e70 -> :sswitch_1c
        -0x2f96d07d -> :sswitch_1b
        -0x2878e78e -> :sswitch_1a
        -0x1a930666 -> :sswitch_19
        -0x87140b2 -> :sswitch_18
        -0x2fa7e25 -> :sswitch_17
        0x134b032 -> :sswitch_16
        0x53c096d -> :sswitch_15
        0x7c9f249 -> :sswitch_14
        0x962044f -> :sswitch_13
        0x157c112e -> :sswitch_12
        0x169f2581 -> :sswitch_11
        0x1fe09786 -> :sswitch_10
        0x20f02198 -> :sswitch_f
        0x220821d7 -> :sswitch_e
        0x33fc651f -> :sswitch_d
        0x3dc362df -> :sswitch_c
        0x420fccdb -> :sswitch_b
        0x4c956320 -> :sswitch_a
        0x514e2b43 -> :sswitch_9
        0x58736f89 -> :sswitch_8
        0x5e66d1ce -> :sswitch_7
        0x630e1b2f -> :sswitch_6
        0x6710a02b -> :sswitch_5
        0x69f8740e -> :sswitch_4
        0x6af32594 -> :sswitch_3
        0x6d10ba94 -> :sswitch_2
        0x6eeb9000 -> :sswitch_1
        0x73b90f82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_2b
        :pswitch_1c
        :pswitch_1b
        :pswitch_2b
        :pswitch_1a
        :pswitch_19
        :pswitch_2b
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
        :pswitch_2b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 30

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v5, "AdvancedFeatureItem"

    const-string/jumbo v6, "unknown key : "

    new-instance v7, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v11, "/Settings/Advanced/XcoverKeyDedicatedApp"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x14

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_35

    :sswitch_1
    const-string v11, "/Settings/Advanced/LabsMultiWindowAllApps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x22

    goto/16 :goto_1

    :sswitch_2
    const-string v11, "/Settings/Advanced/SideKeyDoublePressType"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v11, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v11, "/Settings/Advanced/SideKeyDoublePressSwitch"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v11, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x1e

    goto/16 :goto_1

    :sswitch_6
    const-string v11, "/Settings/Advanced/LabsAppAllowedOnCoverScreen"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x31

    goto/16 :goto_1

    :sswitch_7
    const-string v11, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x1d

    goto/16 :goto_1

    :sswitch_8
    const-string v11, "/Settings/Advanced/PreventOnlineProcessing"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x20

    goto/16 :goto_1

    :sswitch_9
    const-string v11, "/Settings/Advanced/LabsFullScreenInSplitView"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2b

    goto/16 :goto_1

    :sswitch_a
    const-string v11, "/Settings/Advanced/VideoEnhancerSwitch"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v11, "/Settings/Advanced/XcoverKeyPtt"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v11, "/Settings/Advanced/LabsSynchronizingMainNavigationStyleOnWidget"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x30

    goto/16 :goto_1

    :sswitch_d
    const-string v11, "/Settings/Advanced/LabsSwipeSplitView"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2f

    goto/16 :goto_1

    :sswitch_e
    const-string v11, "/Settings/Advanced/ActiveKeyOnLockScreen"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x12

    goto/16 :goto_1

    :sswitch_f
    const-string v11, "/Settings/Advanced/PalmTouchToSleep"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v11, "/Settings/Advanced/DirectCall"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x3

    goto/16 :goto_1

    :sswitch_11
    const-string v11, "/Settings/Advanced/SmartPopupView"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x21

    goto/16 :goto_1

    :sswitch_12
    const-string v11, "/Settings/Advanced/DirectShare"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x6

    goto/16 :goto_1

    :sswitch_13
    const-string v11, "/Settings/Advanced/DoubleTapToWake"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0xa

    goto/16 :goto_1

    :sswitch_14
    const-string v11, "/Settings/Advanced/LabsLandScapeAllApps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x24

    goto/16 :goto_1

    :sswitch_15
    const-string v11, "/Settings/Advanced/LabsAspectRatioApps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x26

    goto/16 :goto_1

    :sswitch_16
    const-string v11, "/Settings/Advanced/SideKeyLongPressType"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x1a

    goto/16 :goto_1

    :sswitch_17
    const-string v11, "/Settings/Advanced/LabsSwipePopupView"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2d

    goto/16 :goto_1

    :sswitch_18
    const-string v11, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2c

    goto/16 :goto_1

    :sswitch_19
    const-string v11, "/Settings/Advanced/SwipePopupViewCornerAreaLevel"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2e

    goto/16 :goto_1

    :sswitch_1a
    const-string v11, "/Settings/Advanced/XcoverTopKeyLongPress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x1c

    goto/16 :goto_1

    :sswitch_1b
    const-string v11, "/Settings/Advanced/LiftToWake"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x7

    goto/16 :goto_1

    :sswitch_1c
    const-string v11, "/Settings/Advanced/VideoEnhancerApp"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0xf

    goto/16 :goto_1

    :sswitch_1d
    const-string v11, "/Settings/Advanced/DarkModeApps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x32

    goto/16 :goto_1

    :sswitch_1e
    const-string v11, "/Settings/Advanced/LabsRotateApps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x23

    goto/16 :goto_1

    :sswitch_1f
    const-string v11, "/Settings/Advanced/ActiveKeyShortPress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x10

    goto/16 :goto_1

    :sswitch_20
    const-string v11, "/Settings/Advanced/FlexModeScrollWheelPosition"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2a

    goto/16 :goto_1

    :sswitch_21
    const-string v11, "/Settings/Advanced/DoubleTapToSleep"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x8

    goto/16 :goto_1

    :sswitch_22
    const-string v11, "/Settings/Advanced/CoverTextDirection"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0xd

    goto/16 :goto_1

    :sswitch_23
    const-string v11, "/Settings/Advanced/FlexModePanelEnabled"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x28

    goto/16 :goto_1

    :sswitch_24
    const-string v11, "/Settings/Advanced/OneHandedMode"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0xb

    goto/16 :goto_1

    :sswitch_25
    const-string v11, "/Settings/Advanced/SideKeyLongPress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x19

    goto/16 :goto_1

    :sswitch_26
    const-string v11, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x2

    goto/16 :goto_1

    :sswitch_27
    const-string v11, "/Settings/Advanced/SmartAlert"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    goto/16 :goto_1

    :sswitch_28
    const-string v11, "/Settings/Advanced/AutoScreenOn"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    goto/16 :goto_1

    :sswitch_29
    const-string v11, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x25

    goto/16 :goto_1

    :sswitch_2a
    const-string v11, "/Settings/Advanced/SmartStay"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :sswitch_2b
    const-string v11, "/Settings/Advanced/EasyMute"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x5

    goto :goto_1

    :sswitch_2c
    const-string v11, "/Settings/Advanced/ActiveKeyLongPress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x11

    goto :goto_1

    :sswitch_2d
    const-string v11, "/Settings/Advanced/ContinueAppsOnOtherDevices"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x1f

    goto :goto_1

    :sswitch_2e
    const-string v11, "/Settings/Advanced/LabsAppSplitView"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x27

    goto :goto_1

    :sswitch_2f
    const-string v11, "/Settings/Advanced/SideKeyDoublePress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x15

    goto :goto_1

    :sswitch_30
    const-string v11, "/Settings/Advanced/LabsFlexModePanel"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x29

    goto :goto_1

    :sswitch_31
    const-string v11, "/Settings/Advanced/FingerSensorGestures"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0xc

    goto :goto_1

    :sswitch_32
    const-string v11, "/Settings/Advanced/XcoverTopKeyShortPress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_0

    const/16 v11, 0x1b

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v11, -0x1

    :goto_1
    const-string v15, "AIO"

    const-string/jumbo v14, "sensor"

    const-string/jumbo v3, "screen_brightness_mode"

    const-string v12, "adaptive_brightness"

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DEFAULT_DOUBLE_TAP_TO_WAKE"

    const-string v10, "com.samsung.tvmode"

    const-string v4, "TvMode"

    move-object/from16 v16, v15

    const-string v15, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    move-object/from16 v17, v9

    const-string v9, "function_key_config_doublepress"

    move-object/from16 v18, v14

    const-string v14, "com.samsung.android.bixby.agent/com.samsung.android.bixby.assistanthome.AssistantHomeLauncherActivity"

    move-object/from16 v19, v3

    const-string/jumbo v3, "sideKeyType"

    move-object/from16 v20, v12

    const-string v12, "function_key_config_longpress_type"

    move-object/from16 v21, v13

    const-string v13, "com.sprint.sdcplus"

    move-object/from16 v22, v10

    const-string v10, "com.bell.ptt"

    move-object/from16 v23, v4

    const-string v4, "com.att.eptt"

    move-object/from16 v24, v15

    const-string v15, "com.verizon.pushtotalkplus"

    move-object/from16 v25, v9

    const-string v9, "Nothing needs to be checked"

    move-object/from16 v26, v14

    const-string v14, ""

    move-object/from16 v27, v14

    const-string v14, "function_key_config_doublepress_value"

    move-object/from16 v28, v14

    const-string v14, "function_key_config_doublepress_type"

    move-object/from16 v29, v14

    const v14, 0x1110257

    packed-switch v11, :pswitch_data_0

    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistNightPriorityAllowedPackage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getDarkModeAppsPackagesInfo(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_36

    :cond_1
    const-string v1, "getValue : Nothing needs to be checked"

    invoke-static {v5, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :pswitch_1
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_2
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "open_in_split_screen_view"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "freeform_corner_gesture_level"

    const/4 v2, 0x2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-ne v2, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "open_in_pop_up_view"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x1fc34

    if-le v1, v2, :cond_4b

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :cond_5
    const-string/jumbo v1, "multi_window_menu_in_full_screen"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSplitImmersiveModeEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_8
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_9
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_a
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getAppSplitViewPackagesInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_36

    :cond_8
    invoke-static {v5, v9}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :pswitch_c
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_d
    sget-object v2, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getAutoRotatePackagesFlagInfo(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_e
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-boolean v2, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "UsefulfeatureUtils"

    const/4 v4, 0x0

    if-nez v2, :cond_9

    const-string v1, "PackageManager is null"

    invoke-static {v3, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_9
    const-string v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_a

    const/4 v10, 0x0

    :cond_a
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_b
    :try_start_2
    const-string/jumbo v1, "package"

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mode"

    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to put AutoRotatePackages in json object. "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :goto_9
    invoke-virtual {v7, v4, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_f
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "force_resizable_activities"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_e

    const/4 v4, 0x1

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "floating_noti_package_list"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_12
    const-string/jumbo v1, "prevent_online_processing"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_36

    :pswitch_13
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    and-int/lit8 v4, v2, 0x4

    if-eq v4, v3, :cond_f

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4b

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-ne v2, v1, :cond_10

    const/4 v4, 0x1

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_14
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable$1(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "dedicated_app_top_switch"

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "dedicated_app_top"

    invoke-static {v8, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    const-string/jumbo v6, "xcoverTopKeyDedicatedAppPkg"

    invoke-virtual {v7, v3, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasEPttEnable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_d

    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_d

    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_d

    :cond_14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    :goto_e
    if-ne v3, v2, :cond_15

    if-eqz v1, :cond_15

    const/4 v4, 0x1

    goto :goto_f

    :cond_15
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_15
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    goto/16 :goto_36

    :pswitch_16
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    goto/16 :goto_36

    :pswitch_17
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    goto/16 :goto_36

    :pswitch_18
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    invoke-static {v8, v12, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x1

    if-le v2, v1, :cond_16

    const/4 v2, 0x0

    :cond_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v2, :cond_17

    const/4 v4, 0x1

    goto :goto_10

    :cond_17
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_19
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v1, :cond_4b

    :cond_18
    if-eqz v1, :cond_19

    const/4 v13, 0x2

    goto :goto_11

    :cond_19
    const/4 v13, 0x0

    :goto_11
    invoke-static {v8, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v13, v1, :cond_1a

    const/4 v4, 0x1

    goto :goto_12

    :cond_1a
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_1a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object/from16 v2, v29

    const/4 v1, 0x0

    invoke-static {v8, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v4, v28

    invoke-static {v8, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v6, v27

    invoke-virtual {v7, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    goto :goto_13

    :cond_1b
    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    :goto_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_1b
    move-object/from16 v3, v26

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    invoke-static {v8, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v8, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1c

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    goto :goto_14

    :cond_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    :goto_14
    if-nez v2, :cond_1d

    const/4 v4, 0x1

    goto :goto_15

    :cond_1d
    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_1c
    move-object/from16 v6, v27

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_4b

    move-object/from16 v9, v25

    const/4 v2, 0x0

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v10, v24

    invoke-virtual {v2, v10, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v23

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v12, v22

    invoke-static {v1, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_16

    :cond_1e
    const/4 v1, 0x1

    :goto_16
    if-ne v1, v3, :cond_1f

    const/4 v4, 0x1

    goto :goto_17

    :cond_1f
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_1d
    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v6, v27

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v13

    if-eqz v13, :cond_4b

    const/4 v13, 0x0

    invoke-static {v8, v9, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v2, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v8, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "function_key_config_doublepress_intent"

    invoke-static {v8, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "function_key_config_doublepress_app_action"

    invoke-static {v8, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "sideKeyValue"

    invoke-virtual {v7, v4, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "sideKeyKeyIntent"

    invoke-virtual {v7, v13, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "sideKeyAppAction"

    invoke-virtual {v7, v8, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    invoke-virtual {v3, v10, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v1, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    goto :goto_18

    :cond_20
    const/4 v1, 0x1

    :goto_18
    if-ne v1, v9, :cond_21

    if-nez v2, :cond_21

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v4, 0x1

    goto :goto_19

    :cond_21
    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable$1(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "dedicated_app_xcover_switch"

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "dedicated_app_xcover"

    invoke-static {v8, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    const-string/jumbo v6, "xcoverKeyDedicatedAppPkg"

    invoke-virtual {v7, v3, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1a
    const/4 v3, 0x1

    goto :goto_1b

    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasEPttEnable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1a

    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1a

    :cond_24
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1a

    :cond_25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1b
    if-ne v3, v2, :cond_26

    if-eqz v1, :cond_26

    const/4 v4, 0x1

    goto :goto_1c

    :cond_26
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_1f
    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1d524

    if-ge v2, v3, :cond_4b

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "verizon_dedicated_ptt_switch"

    const/4 v2, 0x1

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-ne v2, v1, :cond_27

    const/4 v4, 0x1

    goto :goto_1d

    :cond_27
    const/4 v4, 0x0

    :goto_1d
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_20
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "active_key_on_lockscreen"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_28

    const/4 v4, 0x1

    goto :goto_1e

    :cond_28
    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_21
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "long_press_app"

    invoke-static {v8, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    const-string v2, "com.samsung.android.calendar/com.samsung.android.app.calendar.activity.MainActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_22
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "short_press_app"

    invoke-static {v8, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    const-string v2, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_23
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getVideoEnhanceAppInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v7, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_36

    :cond_29
    invoke-static {v5, v9}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :pswitch_24
    const-string v1, "hdr_effect"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_2a

    const/4 v4, 0x1

    goto :goto_1f

    :cond_2a
    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_25
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingCoverOrientation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "cover_text_direction"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_2b

    const/4 v4, 0x1

    goto :goto_20

    :cond_2b
    const/4 v4, 0x0

    :goto_20
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_26
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "fingerprint_gesture_quick"

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "fingerprint_gesture_spay"

    invoke-static {v8, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "supportSpay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2c
    if-nez v2, :cond_2d

    if-nez v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_21

    :cond_2d
    const/4 v4, 0x0

    :goto_21
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_27
    sget-boolean v1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4b

    const-string v1, "any_screen_enabled"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "one_handed_op_wakeup_type"

    invoke-static {v8, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    const-string/jumbo v2, "wakeupType"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_ONEHAND_MODE_POLICY"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "DefaultOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "GestureType"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_22

    :cond_2e
    const/4 v2, 0x0

    goto :goto_22

    :cond_2f
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_22
    if-ne v4, v1, :cond_30

    if-ne v2, v3, :cond_30

    const/4 v4, 0x1

    goto :goto_23

    :cond_30
    const/4 v4, 0x0

    :goto_23
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_28
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "double_tab_to_wake_up"

    const/4 v3, 0x1

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v6, v20

    const/4 v4, 0x0

    invoke-static {v8, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v9, v19

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v10, v18

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_24
    if-ge v9, v4, :cond_33

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_31

    const/4 v10, 0x1

    :cond_31
    const v13, 0x10044

    if-ne v12, v13, :cond_32

    const/4 v11, 0x1

    :cond_32
    const/4 v12, 0x1

    add-int/2addr v9, v12

    goto :goto_24

    :cond_33
    if-nez v10, :cond_35

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    if-eq v6, v1, :cond_36

    goto :goto_25

    :cond_34
    const/4 v1, 0x1

    :goto_25
    if-eqz v11, :cond_35

    if-eq v8, v1, :cond_36

    :cond_35
    if-nez v3, :cond_37

    :cond_36
    const/4 v1, 0x0

    goto :goto_26

    :cond_37
    const/4 v1, 0x1

    :goto_26
    if-ne v1, v2, :cond_38

    const/4 v4, 0x1

    goto :goto_27

    :cond_38
    const/4 v4, 0x0

    :goto_27
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_29
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto/16 :goto_36

    :pswitch_2a
    move-object/from16 v10, v18

    move-object/from16 v9, v19

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    const-string v2, "double_tap_to_sleep"

    const/4 v3, 0x1

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v8, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_28
    if-ge v9, v4, :cond_3b

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_39

    const/4 v10, 0x1

    :cond_39
    const v14, 0x10044

    if-ne v12, v14, :cond_3a

    const/4 v11, 0x1

    :cond_3a
    const/4 v12, 0x1

    add-int/2addr v9, v12

    goto :goto_28

    :cond_3b
    const/4 v12, 0x1

    if-nez v10, :cond_3c

    if-eq v6, v12, :cond_3d

    if-eqz v11, :cond_3c

    if-eq v8, v12, :cond_3d

    :cond_3c
    if-nez v3, :cond_3e

    :cond_3d
    const/4 v1, 0x0

    goto :goto_29

    :cond_3e
    const/4 v1, 0x1

    :goto_29
    if-ne v1, v2, :cond_3f

    const/4 v4, 0x1

    goto :goto_2a

    :cond_3f
    const/4 v4, 0x0

    :goto_2a
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "lift_to_wake"

    const/4 v2, 0x1

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-ne v2, v1, :cond_40

    const/4 v4, 0x1

    goto :goto_2b

    :cond_40
    const/4 v4, 0x0

    :goto_2b
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_2c
    const-string v1, "direct_share"

    const/4 v2, 0x1

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-ne v2, v1, :cond_41

    const/4 v4, 0x1

    goto :goto_2c

    :cond_41
    const/4 v4, 0x0

    :goto_2c
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_2d
    const-string v2, "easy_mute"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "motion_merged_mute_pause"

    const/4 v2, 0x1

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "motion_overturn"

    invoke-static {v8, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "surface_palm_touch"

    invoke-static {v8, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    const-string/jumbo v2, "palmTouch"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "turnOver"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x1

    if-ne v8, v1, :cond_42

    if-ne v2, v3, :cond_42

    if-ne v6, v4, :cond_42

    const/4 v4, 0x1

    goto :goto_2d

    :cond_42
    const/4 v4, 0x0

    :goto_2d
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_2e
    const-string/jumbo v2, "smart_alert"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "motion_pick_up"

    const/4 v3, 0x1

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_43

    const/4 v4, 0x1

    goto :goto_2e

    :cond_43
    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_2f
    const-string v2, "direct_call"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    const/4 v2, 0x1

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    const-string v2, "VZW"

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "VPP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    move-object/from16 v2, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_2f

    :cond_44
    const/4 v2, 0x1

    goto :goto_30

    :cond_45
    :goto_2f
    const/4 v2, 0x0

    :goto_30
    if-ne v2, v1, :cond_46

    const/4 v4, 0x1

    goto :goto_31

    :cond_46
    const/4 v4, 0x0

    :goto_31
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_36

    :pswitch_30
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const-string/jumbo v4, "palm_swipe_to_capture"

    invoke-static {v1, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "surface_palm_swipe"

    const/4 v4, 0x1

    invoke-static {v8, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-ne v2, v1, :cond_47

    const/4 v4, 0x1

    goto :goto_32

    :cond_47
    const/4 v4, 0x0

    :goto_32
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_36

    :pswitch_31
    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_48

    const/4 v4, 0x1

    goto :goto_33

    :cond_48
    const/4 v4, 0x0

    :goto_33
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_36

    :pswitch_32
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    :cond_49
    const-string v1, "auto_screen_on"

    const/4 v2, 0x1

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)V

    if-ne v2, v1, :cond_4a

    move v4, v2

    goto :goto_34

    :cond_4a
    const/4 v4, 0x0

    :goto_34
    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_36

    :goto_35
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_36
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c390220 -> :sswitch_32
        -0x6e202a23 -> :sswitch_31
        -0x6c2c62ae -> :sswitch_30
        -0x6af69bc6 -> :sswitch_2f
        -0x68ba8cac -> :sswitch_2e
        -0x67add8cb -> :sswitch_2d
        -0x6149ea62 -> :sswitch_2c
        -0x5facb6d5 -> :sswitch_2b
        -0x5da9ee2e -> :sswitch_2a
        -0x5cf16054 -> :sswitch_29
        -0x598a05d6 -> :sswitch_28
        -0x589512fd -> :sswitch_27
        -0x51680a0d -> :sswitch_26
        -0x49eb4191 -> :sswitch_25
        -0x454772d9 -> :sswitch_24
        -0x44008817 -> :sswitch_23
        -0x433df9b5 -> :sswitch_22
        -0x42ede966 -> :sswitch_21
        -0x40b24cf5 -> :sswitch_20
        -0x3e758e70 -> :sswitch_1f
        -0x2f96d07d -> :sswitch_1e
        -0x2a681bc5 -> :sswitch_1d
        -0x2878e78e -> :sswitch_1c
        -0x1a930666 -> :sswitch_1b
        -0x87140b2 -> :sswitch_1a
        -0x2fa7e25 -> :sswitch_19
        0x134b032 -> :sswitch_18
        0x53c096d -> :sswitch_17
        0x7c9f249 -> :sswitch_16
        0x962044f -> :sswitch_15
        0x157c112e -> :sswitch_14
        0x169f2581 -> :sswitch_13
        0x1fe09786 -> :sswitch_12
        0x20f02198 -> :sswitch_11
        0x220821d7 -> :sswitch_10
        0x33fc651f -> :sswitch_f
        0x3dc362df -> :sswitch_e
        0x420fccdb -> :sswitch_d
        0x45451270 -> :sswitch_c
        0x4c956320 -> :sswitch_b
        0x514e2b43 -> :sswitch_a
        0x58736f89 -> :sswitch_9
        0x5e66d1ce -> :sswitch_8
        0x630e1b2f -> :sswitch_7
        0x66bfd147 -> :sswitch_6
        0x6710a02b -> :sswitch_5
        0x69f8740e -> :sswitch_4
        0x6af32594 -> :sswitch_3
        0x6d10ba94 -> :sswitch_2
        0x6eeb9000 -> :sswitch_1
        0x73b90f82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v6, "any_screen_enabled"

    const-string v7, "dedicated_app_top"

    const-string v8, "dedicated_app_top_switch"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v13, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v14, "/Settings/Advanced/XcoverKeyDedicatedApp"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10

    :sswitch_1
    const-string v14, "/Settings/Advanced/LabsMultiWindowAllApps"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_2
    const-string v14, "/Settings/Advanced/SideKeyDoublePressType"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v14, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v14, "/Settings/Advanced/SideKeyDoublePressSwitch"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v14, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_6
    const-string v14, "/Settings/Advanced/LabsAppAllowedOnCoverScreen"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_7
    const-string v14, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_8
    const-string v14, "/Settings/Advanced/PreventOnlineProcessing"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_9
    const-string v14, "/Settings/Advanced/LabsFullScreenInSplitView"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_a
    const-string v14, "/Settings/Advanced/VideoEnhancerSwitch"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v14, "/Settings/Advanced/XcoverKeyPtt"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v14, "/Settings/Advanced/LabsSynchronizingMainNavigationStyleOnWidget"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_d
    const-string v14, "/Settings/Advanced/LabsSwipeSplitView"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_e
    const-string v14, "/Settings/Advanced/ActiveKeyOnLockScreen"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_f
    const-string v14, "/Settings/Advanced/PalmTouchToSleep"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v14, "/Settings/Advanced/DirectCall"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_11
    const-string v14, "/Settings/Advanced/SmartPopupView"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_12
    const-string v14, "/Settings/Advanced/DirectShare"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_13
    const-string v14, "/Settings/Advanced/DoubleTapToWake"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_14
    const-string v14, "/Settings/Advanced/LabsLandScapeAllApps"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_15
    const-string v14, "/Settings/Advanced/LabsAspectRatioApps"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_16
    const-string v14, "/Settings/Advanced/SideKeyLongPressType"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_17
    const-string v14, "/Settings/Advanced/LabsSwipePopupView"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_18
    const-string v14, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_19
    const-string v14, "/Settings/Advanced/SwipePopupViewCornerAreaLevel"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_1a
    const-string v14, "/Settings/Advanced/LabsRotateAllApps"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_1b
    const-string v14, "/Settings/Advanced/XcoverTopKeyLongPress"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_1c
    const-string v14, "/Settings/Advanced/LiftToWake"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_1d
    const-string v14, "/Settings/Advanced/VideoEnhancerApp"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_1e
    const-string v14, "/Settings/Advanced/DarkModeApps"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_1f
    const-string v14, "/Settings/Advanced/LabsRotateApps"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_20
    const-string v14, "/Settings/Advanced/ActiveKeyShortPress"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_21
    const-string v14, "/Settings/Advanced/FlexModeScrollWheelPosition"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_22
    const-string v14, "/Settings/Advanced/DoubleTapToSleep"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_23
    const-string v14, "/Settings/Advanced/CoverTextDirection"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_24
    const-string v14, "/Settings/Advanced/FlexModePanelEnabled"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_25
    const-string v14, "/Settings/Advanced/OneHandedMode"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_26
    const-string v14, "/Settings/Advanced/SideKeyLongPress"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_27
    const-string v14, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_28
    const-string v14, "/Settings/Advanced/SmartAlert"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_29
    const-string v14, "/Settings/Advanced/AutoScreenOn"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v11

    goto/16 :goto_1

    :sswitch_2a
    const-string v14, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_2b
    const-string v14, "/Settings/Advanced/SmartStay"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2c
    const-string v14, "/Settings/Advanced/EasyMute"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2d
    const-string v14, "/Settings/Advanced/ActiveKeyLongPress"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_2e
    const-string v14, "/Settings/Advanced/ContinueAppsOnOtherDevices"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto :goto_1

    :sswitch_2f
    const-string v14, "/Settings/Advanced/LabsAppSplitView"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto :goto_1

    :sswitch_30
    const-string v14, "/Settings/Advanced/SideKeyDoublePress"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto :goto_1

    :sswitch_31
    const-string v14, "/Settings/Advanced/LabsFlexModePanel"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2a

    goto :goto_1

    :sswitch_32
    const-string v14, "/Settings/Advanced/FingerSensorGestures"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_33
    const-string v14, "/Settings/Advanced/XcoverTopKeyShortPress"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    sget-object v14, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const-string v15, "function_key_config_doublepress"

    const-string/jumbo v11, "sideKeyType"

    const-string v5, ""

    const-string v10, "function_key_config_doublepress_value"

    move-object/from16 v16, v6

    const-string v6, "function_key_config_longpress_type"

    move-object/from16 p2, v15

    const-string v15, "function_key_config_doublepress_type"

    move-object/from16 v17, v15

    const-string v15, "dedicated_app_xcover"

    move-object/from16 v18, v15

    const-string v15, "dedicated_app_xcover_switch"

    move-object/from16 v19, v15

    const v15, 0x1110257

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistNightPriorityAllowedPackage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {v1, v4, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setDarkModeAppsPackagesInfo(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_1
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_2
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "open_in_split_screen_view"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_2
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "freeform_corner_gesture_level"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_3
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "open_in_pop_up_view"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_4
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x1fc34

    if-le v1, v2, :cond_5

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    :cond_5
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :cond_6
    const-string/jumbo v1, "multi_window_menu_in_full_screen"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSplitImmersiveMode(Z)V

    goto/16 :goto_11

    :cond_8
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_8
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_9
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_a
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAppSplitViewPackagesInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_c
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_d
    sget-object v2, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {v1, v4, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAutoRotatePackagesFlagInfo(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->UNKNOWN_ERROR:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :cond_a
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :cond_b
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_e
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    sget-boolean v2, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    const-string v2, "UsefulfeatureUtils"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "mode"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_c

    const-string v1, "PackageManager is null"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :cond_c
    const-string v5, "launcherapps"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v7, "com.samsung.android.mediaguardian"

    const-string v8, "com.samsung.android.memoryguardian"

    const-string v9, "com.samsung.android.thermalguardian"

    const-string v10, "com.samsung.android.appbooster"

    const-string v11, "com.samsung.android.statsd"

    const-string v12, "com.android.samsung.batteryusage"

    const-string v14, "com.android.samsung.utilityapp"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {v6, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v6, v12}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    invoke-static {v6, v11}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    invoke-static {v6, v10}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    invoke-static {v6, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    invoke-static {v6, v8}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    invoke-static {v6, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_e
    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_4

    :goto_5
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set AutoRotatePackages. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get AutoRotatePackages from json object. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_11

    :cond_f
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_f
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "force_resizable_activities"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_10
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "floating_noti_package_list"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v12, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :pswitch_12
    const-string/jumbo v1, "prevent_online_processing"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :pswitch_13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    goto/16 :goto_11

    :pswitch_14
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable$1(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v9, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v9, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v6, "xcoverTopKeyDedicatedAppPkg"

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v10, "dedicated_app_label_top"

    if-eqz v6, :cond_11

    :try_start_6
    invoke-static {v9, v7, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_11
    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {v9, v7, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_12
    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v9, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v9, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x0

    invoke-static {v9, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x2

    invoke-static {v1, v2, v5, v7}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_11

    :cond_13
    if-ne v2, v3, :cond_14

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_14
    const/4 v2, 0x1

    if-ne v3, v2, :cond_15

    const/4 v2, 0x2

    const/4 v5, 0x1

    goto :goto_8

    :cond_15
    const/4 v2, 0x2

    const/4 v5, 0x0

    :goto_8
    invoke-static {v1, v2, v6, v5}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_11

    :cond_16
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_15
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_16
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_17
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()V

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_18
    iget v2, v4, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    const/16 v3, 0x23

    if-ge v2, v3, :cond_17

    const/4 v2, 0x0

    invoke-static {v9, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->migrationFunctionKeyDB(Landroid/content/Context;I)V

    invoke-static {v1, v2, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    goto/16 :goto_11

    :cond_17
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_19
    iget v2, v4, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    const/16 v4, 0x22

    if-le v2, v4, :cond_1d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v2

    if-nez v2, :cond_18

    sget-boolean v2, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    if-eqz v2, :cond_1d

    :cond_18
    invoke-virtual {v3, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v4

    if-nez v4, :cond_1b

    :cond_19
    const/4 v3, 0x1

    goto :goto_9

    :cond_1a
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    if-nez v4, :cond_1b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    :cond_1b
    :goto_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v9, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1c
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->migrationFunctionKeyDB(Landroid/content/Context;I)V

    invoke-static {v1, v2, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    goto/16 :goto_11

    :cond_1d
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_1a
    iget v2, v4, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_1e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_11

    :cond_1e
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_1b
    iget v2, v4, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_21

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v4, v17

    const/4 v2, 0x0

    invoke-static {v9, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_1f
    move-object/from16 v4, v17

    const/4 v2, 0x2

    invoke-static {v9, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "com.samsung.android.bixby.agent/com.samsung.android.bixby.assistanthome.AssistantHomeLauncherActivity"

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_20
    move-object/from16 v4, v17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_11

    :cond_21
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_1c
    iget v2, v4, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_22

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v5, p2

    invoke-static {v9, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_11

    :cond_22
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_1d
    move-object/from16 v5, p2

    move-object/from16 v4, v17

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v3, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "sideKeyValue"

    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sideKeyKeyIntent"

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sideKeyAppAction"

    invoke-virtual {v3, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_24
    const-string v2, "function_key_config_doublepress_intent"

    invoke-static {v9, v2, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "function_key_config_doublepress_app_action"

    invoke-static {v9, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_11

    :cond_25
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable$1(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v4, v19

    invoke-static {v9, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v6, v18

    invoke-static {v9, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v9, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v8, "xcoverKeyDedicatedAppPkg"

    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v10, "dedicated_app_label_xcover"

    if-eqz v8, :cond_26

    :try_start_7
    invoke-static {v9, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b

    :cond_26
    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {v9, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_27
    :goto_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v9, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v9, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_28

    const/4 v8, 0x0

    invoke-static {v9, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1, v8, v5, v8}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_11

    :cond_28
    if-ne v2, v3, :cond_29

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_29
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2a

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_c

    :cond_2a
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_c
    invoke-static {v1, v2, v6, v5}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_11

    :cond_2b
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_1f
    move-object/from16 v6, v18

    move-object/from16 v4, v19

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "verizon_dedicated_ptt_switch"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v9, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v9, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "com.verizon.pushtotalkplus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v3, 0x0

    invoke-static {v9, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1, v3, v2, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_11

    :cond_2c
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_20
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "active_key_on_lockscreen"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_2d
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_21
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "long_press_app"

    invoke-static {v9, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v2, v12, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ILjava/lang/String;Z)V

    goto/16 :goto_11

    :cond_2e
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_22
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "short_press_app"

    invoke-static {v9, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v12, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ILjava/lang/String;Z)V

    goto/16 :goto_11

    :cond_2f
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_23
    invoke-static {v1, v12}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setVideoEnhanceAppInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_24
    const-string v1, "hdr_effect"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :pswitch_25
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingCoverOrientation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "cover_text_direction"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_30
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_26
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "fingerprint_gesture_quick"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v9, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string/jumbo v1, "supportSpay"

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "fingerprint_gesture_spay"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v9, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_31
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_27
    sget-boolean v2, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_35

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v4, v16

    invoke-static {v9, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "wakeupType"

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string/jumbo v6, "one_handed_op_wakeup_type"

    if-nez v5, :cond_32

    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    goto :goto_d

    :cond_33
    move v2, v5

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    if-eqz v2, :cond_34

    goto :goto_e

    :cond_34
    const/4 v5, 0x0

    :goto_e
    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string/jumbo v1, "showHardKey"

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string/jumbo v2, "one_handed_op_show_hard_keys"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v9, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_35
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_28
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "double_tab_to_wake_up"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_36
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_29
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_2a
    const-string v1, "double_tap_to_sleep"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "lift_to_wake"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_37
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_2c
    const-string v1, "direct_share"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :pswitch_2d
    const-string v2, "easy_mute"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "palmTouch"

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "turnOver"

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string/jumbo v3, "surface_palm_touch"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v9, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_39
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_2e
    const-string/jumbo v2, "smart_alert"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_3a
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_2f
    const-string v2, "direct_call"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_3b
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto/16 :goto_11

    :pswitch_30
    const-string/jumbo v2, "palm_swipe_to_capture"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_11

    :cond_3c
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto :goto_11

    :pswitch_31
    const-string v1, "intelligent_sleep_mode"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_11

    :pswitch_32
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_f

    :cond_3d
    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)V

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)V

    goto :goto_11

    :cond_3e
    :goto_f
    const-string v2, "auto_screen_on"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v9, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "automatic_unlock"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_11

    :goto_10
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdvancedFeatureItem"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_11
    invoke-virtual {v13}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7c390220 -> :sswitch_33
        -0x6e202a23 -> :sswitch_32
        -0x6c2c62ae -> :sswitch_31
        -0x6af69bc6 -> :sswitch_30
        -0x68ba8cac -> :sswitch_2f
        -0x67add8cb -> :sswitch_2e
        -0x6149ea62 -> :sswitch_2d
        -0x5facb6d5 -> :sswitch_2c
        -0x5da9ee2e -> :sswitch_2b
        -0x5cf16054 -> :sswitch_2a
        -0x598a05d6 -> :sswitch_29
        -0x589512fd -> :sswitch_28
        -0x51680a0d -> :sswitch_27
        -0x49eb4191 -> :sswitch_26
        -0x454772d9 -> :sswitch_25
        -0x44008817 -> :sswitch_24
        -0x433df9b5 -> :sswitch_23
        -0x42ede966 -> :sswitch_22
        -0x40b24cf5 -> :sswitch_21
        -0x3e758e70 -> :sswitch_20
        -0x2f96d07d -> :sswitch_1f
        -0x2a681bc5 -> :sswitch_1e
        -0x2878e78e -> :sswitch_1d
        -0x1a930666 -> :sswitch_1c
        -0x87140b2 -> :sswitch_1b
        -0x690cafe -> :sswitch_1a
        -0x2fa7e25 -> :sswitch_19
        0x134b032 -> :sswitch_18
        0x53c096d -> :sswitch_17
        0x7c9f249 -> :sswitch_16
        0x962044f -> :sswitch_15
        0x157c112e -> :sswitch_14
        0x169f2581 -> :sswitch_13
        0x1fe09786 -> :sswitch_12
        0x20f02198 -> :sswitch_11
        0x220821d7 -> :sswitch_10
        0x33fc651f -> :sswitch_f
        0x3dc362df -> :sswitch_e
        0x420fccdb -> :sswitch_d
        0x45451270 -> :sswitch_c
        0x4c956320 -> :sswitch_b
        0x514e2b43 -> :sswitch_a
        0x58736f89 -> :sswitch_9
        0x5e66d1ce -> :sswitch_8
        0x630e1b2f -> :sswitch_7
        0x66bfd147 -> :sswitch_6
        0x6710a02b -> :sswitch_5
        0x69f8740e -> :sswitch_4
        0x6af32594 -> :sswitch_3
        0x6d10ba94 -> :sswitch_2
        0x6eeb9000 -> :sswitch_1
        0x73b90f82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
