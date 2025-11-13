.class public Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;
.super Ljava/lang/Object;
.source "AdvancedFeatureItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final OPEN_BIXBY_COMPONENT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdvancedFeatureItem"

    .line 124
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.bixby.agent/com.samsung.android.bixby.assistanthome.AssistantHomeLauncherActivity"

    .line 125
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->OPEN_BIXBY_COMPONENT:Ljava/lang/String;

    return-void
.end method

.method private sideKeyDoublePressRestore(Landroid/content/Context;)V
    .locals 4

    .line 1770
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "function_key_config_doublepress"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 1771
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "function_key_config_doublepress_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-eqz p0, :cond_1

    .line 1773
    invoke-static {p1, v1, v3, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    goto :goto_1

    .line 1775
    :cond_1
    invoke-static {p1, v0, v3, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    .line 776
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 782
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v1, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "/Settings/Advanced/XcoverKeyDedicatedApp"

    .line 755
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "/Settings/Advanced/LabsMultiWindowAllApps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "/Settings/Advanced/SideKeyDoublePressType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x27

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x26

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "/Settings/Advanced/SideKeyDoublePressSwitch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "/Settings/Advanced/LabsFullScreenInSplitView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x22

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "/Settings/Advanced/VideoEnhancerSwitch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "/Settings/Advanced/XcoverKeyPtt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "/Settings/Advanced/LabsSwipeSplitView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "/Settings/Advanced/ActiveKeyOnLockScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "/Settings/Advanced/PalmTouchToSleep"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "/Settings/Advanced/DirectCall"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "/Settings/Advanced/SmartPopupView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "/Settings/Advanced/DirectShare"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "/Settings/Advanced/DoubleTapToWake"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "/Settings/Advanced/LabsLandScapeAllApps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "/Settings/Advanced/LabsAspectRatioApps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "/Settings/Advanced/SideKeyLongPressType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "/Settings/Advanced/LabsSwipePopupView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "/Settings/Advanced/XcoverTopKeyLongPress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "/Settings/Advanced/LiftToWake"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "/Settings/Advanced/VideoEnhancerApp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "/Settings/Advanced/LabsRotateApps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "/Settings/Advanced/ActiveKeyShortPress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "/Settings/Advanced/DoubleTapToSleep"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "/Settings/Advanced/CoverTextDirection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "/Settings/Advanced/OneHandedMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "/Settings/Advanced/SmartAlert"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "/Settings/Advanced/AutoScreenOn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_22
    const-string v0, "/Settings/Advanced/SmartStay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_23
    const-string v0, "/Settings/Advanced/EasyMute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_24
    const-string v0, "/Settings/Advanced/ActiveKeyLongPress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_25
    const-string v0, "/Settings/Advanced/LabsAppSplitView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_26
    const-string v0, "/Settings/Advanced/SideKeyDoublePress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_27
    const-string v0, "/Settings/Advanced/LabsFlexModePanel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_28
    const-string v0, "/Settings/Advanced/FingerSensorGestures"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "/Settings/Advanced/XcoverTopKeyShortPress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    move v1, v3

    :cond_29
    :goto_1
    const-string v0, "AdvancedFeatureItem"

    const-string v5, "0"

    const-string v6, "1"

    const v7, 0x11101da

    const-string v8, "expectedResult"

    packed-switch v1, :pswitch_data_0

    .line 1186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key to test: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1031
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;)Z

    goto/16 :goto_2

    .line 1120
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_2

    .line 1059
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    goto/16 :goto_2

    .line 1065
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    goto/16 :goto_2

    .line 1043
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1045
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1047
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1048
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1053
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1054
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1095
    :pswitch_5
    invoke-static {p1, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;Z)Z

    goto/16 :goto_2

    .line 1089
    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    goto/16 :goto_2

    .line 1162
    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_2

    .line 987
    :pswitch_8
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 989
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 990
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 995
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 996
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1025
    :pswitch_9
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    goto/16 :goto_2

    .line 1180
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_2

    .line 1019
    :pswitch_b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto/16 :goto_2

    .line 903
    :pswitch_c
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 905
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 906
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 911
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 912
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_d
    const-string v1, "direct_call"

    .line 805
    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 807
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 809
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 810
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 815
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 816
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1102
    :pswitch_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1105
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung:com.android"

    .line 1106
    invoke-virtual {p1, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1107
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1108
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung"

    .line 1112
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1113
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 1114
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 859
    :pswitch_f
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 861
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 862
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 867
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 868
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 916
    :pswitch_10
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 918
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 920
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 921
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 926
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 927
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1132
    :pswitch_11
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    goto/16 :goto_2

    .line 1144
    :pswitch_12
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    goto/16 :goto_2

    .line 1071
    :pswitch_13
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    goto/16 :goto_2

    .line 1174
    :pswitch_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/16 :goto_2

    .line 1168
    :pswitch_15
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_2b

    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1fc34

    if-le p1, v1, :cond_2b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    goto/16 :goto_2

    .line 1083
    :pswitch_16
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    goto/16 :goto_2

    .line 872
    :pswitch_17
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 874
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 876
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 877
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 882
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 883
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1126
    :pswitch_18
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    goto/16 :goto_2

    .line 1007
    :pswitch_19
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto/16 :goto_2

    .line 889
    :pswitch_1a
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 891
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 892
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 897
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 898
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 969
    :pswitch_1b
    invoke-static {p1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingCoverOrientation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 971
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 973
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 974
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 979
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 980
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 932
    :pswitch_1c
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVisibleOneHandOperation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 935
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v1, "wakeupType"

    .line 937
    invoke-virtual {p1, v1, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v2, "showHardKey"

    .line 938
    invoke-virtual {p1, v2, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 939
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 940
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 945
    invoke-virtual {p1, v8, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 946
    invoke-virtual {p1, v1, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 947
    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 948
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1d
    const-string v1, "palm_swipe_to_capture"

    .line 789
    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 791
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 793
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 794
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 799
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 800
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1e
    const-string v1, "smart_alert"

    .line 821
    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 823
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 825
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 826
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 831
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 832
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 757
    :pswitch_1f
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isNFCAuthCover(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 759
    :cond_2a
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 761
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 762
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 767
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 768
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1138
    :pswitch_20
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    goto/16 :goto_2

    .line 775
    :pswitch_21
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 777
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 778
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 783
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 784
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_22
    const-string v1, "easy_mute"

    .line 837
    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 840
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v1, "palmTouch"

    .line 842
    invoke-virtual {p1, v1, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v2, "turnOver"

    .line 843
    invoke-virtual {p1, v2, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 844
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 845
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 850
    invoke-virtual {p1, v8, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 851
    invoke-virtual {p1, v1, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 852
    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 853
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1013
    :pswitch_23
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    goto :goto_2

    .line 1150
    :pswitch_24
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    goto :goto_2

    .line 1037
    :pswitch_25
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    goto :goto_2

    .line 1156
    :pswitch_26
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableNoSubDisplay()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    goto :goto_2

    .line 953
    :pswitch_27
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 955
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 957
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 958
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 963
    invoke-virtual {p1, v8, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 964
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1077
    :pswitch_28
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    .line 1190
    :cond_2b
    :goto_2
    :pswitch_29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - test case size: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_2c

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7c390220 -> :sswitch_29
        -0x6e202a23 -> :sswitch_28
        -0x6c2c62ae -> :sswitch_27
        -0x6af69bc6 -> :sswitch_26
        -0x68ba8cac -> :sswitch_25
        -0x6149ea62 -> :sswitch_24
        -0x5facb6d5 -> :sswitch_23
        -0x5da9ee2e -> :sswitch_22
        -0x5cf16054 -> :sswitch_21
        -0x598a05d6 -> :sswitch_20
        -0x589512fd -> :sswitch_1f
        -0x51680a0d -> :sswitch_1e
        -0x454772d9 -> :sswitch_1d
        -0x433df9b5 -> :sswitch_1c
        -0x42ede966 -> :sswitch_1b
        -0x3e758e70 -> :sswitch_1a
        -0x2f96d07d -> :sswitch_19
        -0x2878e78e -> :sswitch_18
        -0x1a930666 -> :sswitch_17
        -0x87140b2 -> :sswitch_16
        0x134b032 -> :sswitch_15
        0x53c096d -> :sswitch_14
        0x7c9f249 -> :sswitch_13
        0x962044f -> :sswitch_12
        0x157c112e -> :sswitch_11
        0x169f2581 -> :sswitch_10
        0x1fe09786 -> :sswitch_f
        0x20f02198 -> :sswitch_e
        0x220821d7 -> :sswitch_d
        0x33fc651f -> :sswitch_c
        0x3dc362df -> :sswitch_b
        0x420fccdb -> :sswitch_a
        0x4c956320 -> :sswitch_9
        0x514e2b43 -> :sswitch_8
        0x58736f89 -> :sswitch_7
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
        :pswitch_29
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

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "AdvancedFeatureItem"

    .line 140
    new-instance v3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 144
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 146
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "/Settings/Advanced/XcoverKeyDedicatedApp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x14

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "/Settings/Advanced/LabsMultiWindowAllApps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "/Settings/Advanced/SideKeyDoublePressType"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "/Settings/Advanced/SideKeyDoublePressSwitch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x1c

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "/Settings/Advanced/LabsFullScreenInSplitView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x27

    goto/16 :goto_1

    :sswitch_8
    const-string v7, "/Settings/Advanced/VideoEnhancerSwitch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v7, "/Settings/Advanced/XcoverKeyPtt"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v7, "/Settings/Advanced/LabsSwipeSplitView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x2a

    goto/16 :goto_1

    :sswitch_b
    const-string v7, "/Settings/Advanced/ActiveKeyOnLockScreen"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string v7, "/Settings/Advanced/PalmTouchToSleep"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v7, "/Settings/Advanced/DirectCall"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    goto/16 :goto_1

    :sswitch_e
    const-string v7, "/Settings/Advanced/SmartPopupView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x1f

    goto/16 :goto_1

    :sswitch_f
    const-string v7, "/Settings/Advanced/DirectShare"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    goto/16 :goto_1

    :sswitch_10
    const-string v7, "/Settings/Advanced/DoubleTapToWake"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_11
    const-string v7, "/Settings/Advanced/LabsLandScapeAllApps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x22

    goto/16 :goto_1

    :sswitch_12
    const-string v7, "/Settings/Advanced/LabsAspectRatioApps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x24

    goto/16 :goto_1

    :sswitch_13
    const-string v7, "/Settings/Advanced/SideKeyLongPressType"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string v7, "/Settings/Advanced/LabsSwipePopupView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x29

    goto/16 :goto_1

    :sswitch_15
    const-string v7, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x28

    goto/16 :goto_1

    :sswitch_16
    const-string v7, "/Settings/Advanced/XcoverTopKeyLongPress"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x1b

    goto/16 :goto_1

    :sswitch_17
    const-string v7, "/Settings/Advanced/LiftToWake"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    goto/16 :goto_1

    :sswitch_18
    const-string v7, "/Settings/Advanced/VideoEnhancerApp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xf

    goto/16 :goto_1

    :sswitch_19
    const-string v7, "/Settings/Advanced/LabsRotateApps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x21

    goto/16 :goto_1

    :sswitch_1a
    const-string v7, "/Settings/Advanced/ActiveKeyShortPress"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x10

    goto/16 :goto_1

    :sswitch_1b
    const-string v7, "/Settings/Advanced/DoubleTapToSleep"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_1c
    const-string v7, "/Settings/Advanced/CoverTextDirection"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_1d
    const-string v7, "/Settings/Advanced/OneHandedMode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_1e
    const-string v7, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto/16 :goto_1

    :sswitch_1f
    const-string v7, "/Settings/Advanced/SmartAlert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto/16 :goto_1

    :sswitch_20
    const-string v7, "/Settings/Advanced/AutoScreenOn"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_1

    :sswitch_21
    const-string v7, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x23

    goto/16 :goto_1

    :sswitch_22
    const-string v7, "/Settings/Advanced/SmartStay"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_23
    const-string v7, "/Settings/Advanced/EasyMute"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_24
    const-string v7, "/Settings/Advanced/ActiveKeyLongPress"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x11

    goto :goto_1

    :sswitch_25
    const-string v7, "/Settings/Advanced/ContinueAppsOnOtherDevices"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x1e

    goto :goto_1

    :sswitch_26
    const-string v7, "/Settings/Advanced/LabsAppSplitView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x25

    goto :goto_1

    :sswitch_27
    const-string v7, "/Settings/Advanced/SideKeyDoublePress"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x15

    goto :goto_1

    :sswitch_28
    const-string v7, "/Settings/Advanced/LabsFlexModePanel"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x26

    goto :goto_1

    :sswitch_29
    const-string v7, "/Settings/Advanced/FingerSensorGestures"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc

    goto :goto_1

    :sswitch_2a
    const-string v7, "/Settings/Advanced/XcoverTopKeyShortPress"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    const/16 v7, 0x1a

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v7, -0x1

    :goto_1
    const-string v14, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    const-string v15, "screen_brightness_mode"

    const-string v11, "com.samsung.android.bixby.agent/com.samsung.android.bixby.assistanthome.AssistantHomeLauncherActivity"

    const-string v12, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    const-string v9, "adaptive_brightness"

    const-string v8, "AIO"

    const-string v10, "torch/torch"

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DEFAULT_DOUBLE_TAP_TO_WAKE"

    const-string v6, "function_key_config_doublepress"

    move-object/from16 v16, v14

    const-string v14, "function_key_config_doublepress_value"

    const-string v1, "function_key_config_doublepress_type"

    move-object/from16 v17, v8

    const-string v8, ""

    move-object/from16 v18, v5

    const-string v5, "Nothing needs to be checked"

    move-object/from16 v19, v15

    const v15, 0x11101da

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_35

    .line 719
    :pswitch_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "open_in_split_screen_view"

    const/4 v1, 0x0

    .line 720
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 721
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    .line 724
    :goto_2
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 709
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "open_in_pop_up_view"

    const/4 v1, 0x0

    .line 710
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 711
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    .line 714
    :goto_3
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 699
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1fc34

    if-le v0, v1, :cond_4b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_3
    const-string v0, "multi_window_menu_in_full_screen"

    const/4 v1, 0x0

    .line 700
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 701
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 704
    :goto_4
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 689
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 690
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSplitImmersiveModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 691
    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_6

    const/4 v13, 0x1

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    .line 694
    :goto_6
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 678
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableNoSubDisplay()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_7
    const/4 v1, 0x0

    .line 679
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getFlexModePackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 681
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 683
    :cond_8
    invoke-static {v2, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 667
    :pswitch_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_9
    const/4 v1, 0x0

    .line 668
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getAppSplitViewPackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 670
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 672
    :cond_a
    invoke-static {v2, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 656
    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    .line 657
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getFixedAspectRatioPackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 659
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 661
    :cond_b
    invoke-static {v2, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 645
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_c
    move-object/from16 v1, p3

    .line 646
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getAutoRotatePackagesFlagInfo(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x1

    .line 648
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    const/4 v1, 0x0

    .line 649
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 637
    :pswitch_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    .line 638
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getAutoRotatePackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 639
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_d

    const/4 v13, 0x1

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 640
    :goto_7
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 629
    :pswitch_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    .line 630
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getAutoRotatePackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 631
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_e

    const/4 v13, 0x1

    goto :goto_8

    :cond_e
    const/4 v13, 0x0

    .line 632
    :goto_8
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 619
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "force_resizable_activities"

    const/4 v1, 0x0

    .line 620
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 621
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_f

    const/4 v13, 0x1

    goto :goto_9

    :cond_f
    const/4 v13, 0x0

    .line 624
    :goto_9
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 608
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.software.freeform_window_management"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 610
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->getPackageListStrFromDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 592
    :pswitch_c
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_10

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4b

    .line 600
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    .line 601
    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const/4 v1, 0x1

    if-ne v1, v0, :cond_12

    const/4 v13, 0x1

    goto :goto_b

    :cond_12
    const/4 v13, 0x0

    .line 602
    :goto_b
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    :pswitch_d
    const/4 v1, 0x0

    .line 581
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "dedicated_app_top_switch"

    .line 582
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "dedicated_app_top"

    .line 583
    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v4, "xcoverTopKeyDedicatedAppPkg"

    .line 585
    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_13

    .line 587
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v13, 0x1

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 571
    :pswitch_e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "xcover_top_key_on_lockscreen"

    const/4 v1, 0x0

    .line 572
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_14

    const/4 v13, 0x1

    goto :goto_d

    :cond_14
    const/4 v13, 0x0

    .line 576
    :goto_d
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 562
    :pswitch_f
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "xcover_top_long_press_app"

    .line 563
    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 552
    :pswitch_10
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "xcover_top_short_press_app"

    .line 553
    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 557
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 542
    :pswitch_11
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "function_key_config_longpress_type"

    const/4 v1, 0x0

    .line 543
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_15

    const/4 v13, 0x1

    goto :goto_e

    :cond_15
    const/4 v13, 0x0

    .line 547
    :goto_e
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 528
    :pswitch_12
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v5, 0x0

    .line 529
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 530
    invoke-static {v4, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_16

    .line 531
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 532
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_f

    .line 534
    :cond_16
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 537
    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 513
    :pswitch_13
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v5, 0x0

    .line 514
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 515
    invoke-static {v4, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_17

    .line 516
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    .line 517
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_10

    .line 519
    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :goto_10
    if-nez v0, :cond_18

    const/4 v13, 0x1

    goto :goto_11

    :cond_18
    const/4 v13, 0x0

    .line 523
    :goto_11
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 497
    :pswitch_14
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    .line 498
    invoke-static {v4, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 499
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 501
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    invoke-virtual {v1, v12, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "TvMode"

    .line 502
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "com.samsung.tvmode"

    .line 503
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_12

    :cond_19
    const/4 v0, 0x1

    :goto_12
    if-ne v0, v4, :cond_1a

    const/4 v13, 0x1

    goto :goto_13

    :cond_1a
    const/4 v13, 0x0

    .line 508
    :goto_13
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 476
    :pswitch_15
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v5, 0x0

    .line 477
    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 478
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 479
    invoke-static {v4, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v5, "sideKeyType"

    .line 481
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v5, "sideKeyValue"

    .line 482
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 484
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    invoke-virtual {v5, v12, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "TvMode"

    .line 485
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "com.samsung.tvmode"

    .line 486
    invoke-static {v0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_14

    :cond_1b
    const/4 v0, 0x1

    :goto_14
    if-ne v0, v6, :cond_1c

    if-nez v1, :cond_1c

    .line 492
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v13, 0x1

    goto :goto_15

    :cond_1c
    const/4 v13, 0x0

    :goto_15
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 451
    :pswitch_16
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "dedicated_app_xcover_switch"

    const/4 v5, 0x0

    .line 452
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "dedicated_app_xcover"

    .line 453
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v5, "xcoverKeyDedicatedAppPkg"

    .line 455
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 458
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v0, "com.verizon.pushtotalkplus"

    .line 460
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_16
    const/4 v4, 0x1

    goto :goto_17

    .line 461
    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v0, "com.bell.ptt"

    .line 463
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    .line 464
    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "com.sprint.sdcplus"

    .line 466
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    .line 469
    :cond_1f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    :goto_17
    if-ne v4, v1, :cond_20

    if-eqz v0, :cond_20

    const/4 v13, 0x1

    goto :goto_18

    :cond_20
    const/4 v13, 0x0

    .line 471
    :goto_18
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 439
    :pswitch_17
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x1d524

    if-ge v1, v5, :cond_4b

    .line 440
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "verizon_dedicated_ptt_switch"

    const/4 v1, 0x1

    .line 441
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 442
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_21

    const/4 v13, 0x1

    goto :goto_19

    :cond_21
    const/4 v13, 0x0

    .line 445
    :goto_19
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 429
    :pswitch_18
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "active_key_on_lockscreen"

    const/4 v1, 0x0

    .line 430
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 431
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_22

    const/4 v13, 0x1

    goto :goto_1a

    :cond_22
    const/4 v13, 0x0

    .line 434
    :goto_1a
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 412
    :pswitch_19
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "long_press_app"

    .line 413
    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 417
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v14, "quickMessageSender/quickMessageSender"

    goto :goto_1b

    .line 419
    :cond_23
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v1

    if-eqz v1, :cond_24

    move-object/from16 v14, v16

    goto :goto_1b

    :cond_24
    const-string v14, "com.samsung.android.calendar/com.samsung.android.app.calendar.activity.MainActivity"

    .line 424
    :goto_1b
    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 395
    :pswitch_1a
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "short_press_app"

    .line 396
    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 400
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v14, v8

    goto :goto_1c

    .line 402
    :cond_25
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v1

    if-eqz v1, :cond_26

    move-object v14, v10

    goto :goto_1c

    :cond_26
    move-object/from16 v14, v16

    .line 407
    :goto_1c
    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 383
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getVideoEnhanceAppInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 385
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 387
    :cond_27
    invoke-static {v2, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    :pswitch_1c
    const-string v0, "hdr_effect"

    const/4 v1, 0x0

    .line 373
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_28

    const/4 v13, 0x1

    goto :goto_1d

    :cond_28
    const/4 v13, 0x0

    .line 377
    :goto_1d
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 361
    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingCoverOrientation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "cover_text_direction"

    const/4 v1, 0x0

    .line 363
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_29

    const/4 v13, 0x1

    goto :goto_1e

    :cond_29
    const/4 v13, 0x0

    .line 367
    :goto_1e
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 346
    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "fingerprint_gesture_quick"

    const/4 v5, 0x0

    .line 347
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v6, "fingerprint_gesture_spay"

    .line 348
    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 350
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "supportSpay"

    .line 351
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_2a
    if-nez v1, :cond_2b

    if-nez v4, :cond_2b

    const/4 v13, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v13, 0x0

    .line 356
    :goto_1f
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 321
    :pswitch_1f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVisibleOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "any_screen_enabled"

    const/4 v1, 0x0

    .line 322
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v5, "one_handed_op_wakeup_type"

    .line 323
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v1, "wakeupType"

    .line 325
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 329
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_ONEHAND_MODE_POLICY"

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "DefaultOn"

    .line 331
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "GestureType"

    .line 334
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_20

    :cond_2c
    const/4 v1, 0x0

    goto :goto_20

    :cond_2d
    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_20
    if-ne v5, v0, :cond_2e

    if-ne v1, v4, :cond_2e

    const/4 v13, 0x1

    goto :goto_21

    :cond_2e
    const/4 v13, 0x0

    .line 341
    :goto_21
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 290
    :pswitch_20
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "double_tab_to_wake_up"

    const/4 v5, 0x1

    .line 291
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 294
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    .line 295
    invoke-static {v4, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v8, v19

    .line 296
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "sensor"

    .line 300
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    .line 301
    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v6, :cond_31

    .line 304
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_2f

    const/4 v8, 0x1

    :cond_2f
    const v12, 0x10044

    if-ne v11, v12, :cond_30

    const/4 v9, 0x1

    :cond_30
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_31
    if-nez v8, :cond_33

    .line 310
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    if-eq v7, v0, :cond_34

    goto :goto_23

    :cond_32
    const/4 v0, 0x1

    :goto_23
    if-eqz v9, :cond_33

    if-eq v4, v0, :cond_34

    :cond_33
    if-nez v5, :cond_35

    :cond_34
    const/4 v0, 0x0

    goto :goto_24

    :cond_35
    const/4 v0, 0x1

    :goto_24
    if-ne v0, v1, :cond_36

    const/4 v13, 0x1

    goto :goto_25

    :cond_36
    const/4 v13, 0x0

    .line 316
    :goto_25
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 281
    :pswitch_21
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPalmTouchToSleep()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "palm_touch_to_sleep"

    const/4 v1, 0x0

    .line 282
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_37

    const/4 v13, 0x1

    goto :goto_26

    :cond_37
    const/4 v13, 0x0

    .line 285
    :goto_26
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    :pswitch_22
    move-object/from16 v8, v19

    const-string v1, "double_tap_to_sleep"

    const/4 v5, 0x1

    .line 252
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 255
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    .line 256
    invoke-static {v4, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 257
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "sensor"

    .line 261
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    .line 262
    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    if-ge v10, v6, :cond_3a

    .line 265
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_38

    const/4 v8, 0x1

    :cond_38
    const v13, 0x10044

    if-ne v11, v13, :cond_39

    const/4 v9, 0x1

    :cond_39
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_3a
    if-nez v8, :cond_3c

    .line 271
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    if-eq v7, v0, :cond_3d

    goto :goto_28

    :cond_3b
    const/4 v0, 0x1

    :goto_28
    if-eqz v9, :cond_3c

    if-eq v4, v0, :cond_3d

    :cond_3c
    if-nez v5, :cond_3e

    :cond_3d
    const/4 v0, 0x0

    goto :goto_29

    :cond_3e
    const/4 v0, 0x1

    :goto_29
    if-ne v0, v1, :cond_3f

    const/4 v13, 0x1

    goto :goto_2a

    :cond_3f
    const/4 v13, 0x0

    .line 277
    :goto_2a
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    .line 242
    :pswitch_23
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "lift_to_wake"

    const/4 v1, 0x1

    .line 243
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_40

    const/4 v13, 0x1

    goto :goto_2b

    :cond_40
    const/4 v13, 0x0

    .line 247
    :goto_2b
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    :pswitch_24
    const-string v0, "direct_share"

    const/4 v1, 0x1

    .line 234
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_41

    const/4 v13, 0x1

    goto :goto_2c

    :cond_41
    const/4 v13, 0x0

    .line 238
    :goto_2c
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    :pswitch_25
    const-string v1, "easy_mute"

    .line 210
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "motion_merged_mute_pause"

    const/4 v1, 0x1

    .line 211
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v5, "motion_overturn"

    .line 212
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "surface_palm_touch"

    .line 213
    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v1, "palmTouch"

    .line 217
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v1, "turnOver"

    .line 218
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 223
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v1, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 226
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v0, :cond_42

    if-ne v1, v5, :cond_42

    if-ne v6, v4, :cond_42

    const/4 v13, 0x1

    goto :goto_2d

    :cond_42
    const/4 v13, 0x0

    .line 229
    :goto_2d
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    :pswitch_26
    const-string v1, "smart_alert"

    .line 196
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "motion_pick_up"

    const/4 v5, 0x1

    .line 197
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_43

    const/4 v13, 0x1

    goto :goto_2e

    :cond_43
    const/4 v13, 0x0

    .line 205
    :goto_2e
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    :pswitch_27
    const-string v1, "direct_call"

    .line 182
    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "motion_pick_up_to_call_out"

    const/4 v1, 0x1

    .line 183
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v1, "VZW"

    move-object/from16 v5, v18

    .line 186
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "VPP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    move-object/from16 v1, v17

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_2f

    :cond_44
    const/4 v1, 0x1

    goto :goto_30

    :cond_45
    :goto_2f
    const/4 v1, 0x0

    :goto_30
    if-ne v1, v0, :cond_46

    const/4 v13, 0x1

    goto :goto_31

    :cond_46
    const/4 v13, 0x0

    .line 191
    :goto_31
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_36

    :pswitch_28
    move-object/from16 v1, v17

    move-object/from16 v5, v18

    const-string v6, "palm_swipe_to_capture"

    .line 168
    invoke-static {v0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "surface_palm_swipe"

    const/4 v6, 0x1

    .line 169
    invoke-static {v4, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 172
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v6

    if-ne v1, v0, :cond_47

    const/4 v13, 0x1

    goto :goto_32

    :cond_47
    const/4 v13, 0x0

    .line 177
    :goto_32
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_36

    :pswitch_29
    const-string v0, "intelligent_sleep_mode"

    const/4 v1, 0x0

    .line 159
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_48

    const/4 v13, 0x1

    goto :goto_33

    :cond_48
    const/4 v13, 0x0

    .line 163
    :goto_33
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_36

    .line 148
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isNFCAuthCover(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_49
    const-string v0, "auto_screen_on"

    const/4 v1, 0x1

    .line 149
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_4a

    move v13, v1

    goto :goto_34

    :cond_4a
    const/4 v13, 0x0

    .line 153
    :goto_34
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_36

    .line 729
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_36

    :catch_0
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_36
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x7c390220 -> :sswitch_2a
        -0x6e202a23 -> :sswitch_29
        -0x6c2c62ae -> :sswitch_28
        -0x6af69bc6 -> :sswitch_27
        -0x68ba8cac -> :sswitch_26
        -0x67add8cb -> :sswitch_25
        -0x6149ea62 -> :sswitch_24
        -0x5facb6d5 -> :sswitch_23
        -0x5da9ee2e -> :sswitch_22
        -0x5cf16054 -> :sswitch_21
        -0x598a05d6 -> :sswitch_20
        -0x589512fd -> :sswitch_1f
        -0x51680a0d -> :sswitch_1e
        -0x454772d9 -> :sswitch_1d
        -0x433df9b5 -> :sswitch_1c
        -0x42ede966 -> :sswitch_1b
        -0x3e758e70 -> :sswitch_1a
        -0x2f96d07d -> :sswitch_19
        -0x2878e78e -> :sswitch_18
        -0x1a930666 -> :sswitch_17
        -0x87140b2 -> :sswitch_16
        0x134b032 -> :sswitch_15
        0x53c096d -> :sswitch_14
        0x7c9f249 -> :sswitch_13
        0x962044f -> :sswitch_12
        0x157c112e -> :sswitch_11
        0x169f2581 -> :sswitch_10
        0x1fe09786 -> :sswitch_f
        0x20f02198 -> :sswitch_e
        0x220821d7 -> :sswitch_d
        0x33fc651f -> :sswitch_c
        0x3dc362df -> :sswitch_b
        0x420fccdb -> :sswitch_a
        0x4c956320 -> :sswitch_9
        0x514e2b43 -> :sswitch_8
        0x58736f89 -> :sswitch_7
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

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "function_key_config_longpress_type"

    const-string v5, "any_screen_enabled"

    const-string v6, "dedicated_app_top"

    const-string v7, "dedicated_app_top_switch"

    .line 1216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1217
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 1218
    new-instance v10, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v10, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 1219
    sget-object v11, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v11}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 1222
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v13, "/Settings/Advanced/XcoverKeyDedicatedApp"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_1
    const-string v13, "/Settings/Advanced/LabsMultiWindowAllApps"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_2
    const-string v13, "/Settings/Advanced/SideKeyDoublePressType"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v13, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v13, "/Settings/Advanced/SideKeyDoublePressSwitch"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v13, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v13, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_7
    const-string v13, "/Settings/Advanced/LabsFullScreenInSplitView"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_8
    const-string v13, "/Settings/Advanced/VideoEnhancerSwitch"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v13, "/Settings/Advanced/XcoverKeyPtt"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v13, "/Settings/Advanced/LabsSwipeSplitView"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_b
    const-string v13, "/Settings/Advanced/ActiveKeyOnLockScreen"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string v13, "/Settings/Advanced/PalmTouchToSleep"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v13, "/Settings/Advanced/DirectCall"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_e
    const-string v13, "/Settings/Advanced/SmartPopupView"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_f
    const-string v13, "/Settings/Advanced/DirectShare"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_10
    const-string v13, "/Settings/Advanced/DoubleTapToWake"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_11
    const-string v13, "/Settings/Advanced/LabsLandScapeAllApps"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_12
    const-string v13, "/Settings/Advanced/LabsAspectRatioApps"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_13
    const-string v13, "/Settings/Advanced/SideKeyLongPressType"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string v13, "/Settings/Advanced/LabsSwipePopupView"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_15
    const-string v13, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_16
    const-string v13, "/Settings/Advanced/LabsRotateAllApps"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_17
    const-string v13, "/Settings/Advanced/XcoverTopKeyLongPress"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_18
    const-string v13, "/Settings/Advanced/LiftToWake"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_19
    const-string v13, "/Settings/Advanced/VideoEnhancerApp"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_1a
    const-string v13, "/Settings/Advanced/LabsRotateApps"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_1b
    const-string v13, "/Settings/Advanced/ActiveKeyShortPress"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_1c
    const-string v13, "/Settings/Advanced/DoubleTapToSleep"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_1d
    const-string v13, "/Settings/Advanced/CoverTextDirection"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_1e
    const-string v13, "/Settings/Advanced/OneHandedMode"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_1f
    const-string v13, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_20
    const-string v13, "/Settings/Advanced/SmartAlert"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_21
    const-string v13, "/Settings/Advanced/AutoScreenOn"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_22
    const-string v13, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_23
    const-string v13, "/Settings/Advanced/SmartStay"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_24
    const-string v13, "/Settings/Advanced/EasyMute"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_25
    const-string v13, "/Settings/Advanced/ActiveKeyLongPress"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_26
    const-string v13, "/Settings/Advanced/ContinueAppsOnOtherDevices"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto :goto_1

    :sswitch_27
    const-string v13, "/Settings/Advanced/LabsAppSplitView"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    goto :goto_1

    :sswitch_28
    const-string v13, "/Settings/Advanced/SideKeyDoublePress"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto :goto_1

    :sswitch_29
    const-string v13, "/Settings/Advanced/LabsFlexModePanel"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    goto :goto_1

    :sswitch_2a
    const-string v13, "/Settings/Advanced/FingerSensorGestures"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_2b
    const-string v13, "/Settings/Advanced/XcoverTopKeyShortPress"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v13, ""

    const-string v15, "function_key_config_doublepress"

    const-string v11, "function_key_config_doublepress_value"

    const-string v12, "function_key_config_doublepress_type"

    const-string v14, "dedicated_app_xcover"

    move-object/from16 v16, v5

    const-string v5, "dedicated_app_xcover_switch"

    move-object/from16 v17, v14

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_14

    .line 1751
    :pswitch_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "open_in_split_screen_view"

    .line 1752
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1754
    :cond_1
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1755
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1742
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "open_in_pop_up_view"

    .line 1743
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1745
    :cond_2
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1746
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1733
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x1fc34

    if-le v1, v2, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 1736
    :cond_3
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1737
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :cond_4
    :goto_2
    const-string v1, "multi_window_menu_in_full_screen"

    .line 1734
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1723
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1724
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    .line 1725
    :goto_3
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSplitImmersiveMode(Z)V

    goto/16 :goto_14

    .line 1727
    :cond_6
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1728
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1711
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableNoSubDisplay()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 1717
    :cond_7
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1718
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :cond_8
    :goto_4
    const/4 v2, 0x1

    .line 1712
    invoke-virtual {v3, v14, v2}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 1714
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setFlexModePackagesInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1699
    :pswitch_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    .line 1705
    :cond_9
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1706
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :cond_a
    :goto_5
    const/4 v2, 0x1

    .line 1700
    invoke-virtual {v3, v14, v2}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 1702
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAppSplitViewPackagesInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1687
    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 1688
    invoke-virtual {v3, v14, v1}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 1690
    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setFixedAspectRatioPackagesInfo(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1693
    :cond_b
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1694
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1668
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    .line 1681
    :cond_c
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1682
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :cond_d
    :goto_6
    const/4 v2, 0x1

    .line 1669
    invoke-virtual {v3, v14, v2}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v3, p4

    .line 1671
    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAutoRotatePackagesFlagInfo(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1673
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->UNKNOWN_ERROR:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1674
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1677
    :cond_e
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1678
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1656
    :pswitch_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    .line 1657
    invoke-virtual {v3, v14, v2}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 1659
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAutoRotatePackagesInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1662
    :cond_f
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1663
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1639
    :pswitch_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    .line 1640
    invoke-virtual {v3, v14, v2}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rotateType"

    .line 1641
    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_44

    .line 1643
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1644
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAutoRotatePackagesInfo(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_14

    .line 1646
    :cond_10
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAutoRotatePackagesInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1650
    :cond_11
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1651
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1629
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "force_resizable_activities"

    .line 1630
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1632
    :cond_12
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1633
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1621
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1623
    invoke-static {v1, v9}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->putPackageListStrToDB(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1616
    :pswitch_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    goto/16 :goto_14

    :pswitch_d
    const/4 v2, 0x0

    .line 1582
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1583
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1584
    invoke-static {v8, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1586
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v8, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "xcoverTopKeyDedicatedAppPkg"

    .line 1587
    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1588
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "dedicated_app_label_top"

    if-eqz v5, :cond_13

    .line 1589
    :try_start_2
    invoke-static {v8, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1590
    invoke-static {v8, v11, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 1592
    :cond_13
    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1593
    invoke-static {v8, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1594
    invoke-static {v1, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v11, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1598
    :cond_14
    :goto_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v8, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1599
    invoke-static {v8, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1601
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v2, 0x0

    .line 1602
    invoke-static {v8, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x2

    .line 1603
    invoke-static {v1, v2, v3, v13}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto/16 :goto_14

    :cond_15
    if-ne v2, v3, :cond_16

    .line 1605
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_16
    const/4 v2, 0x1

    if-ne v3, v2, :cond_17

    const/4 v2, 0x2

    const/4 v14, 0x1

    goto :goto_8

    :cond_17
    const/4 v2, 0x2

    const/4 v14, 0x0

    .line 1606
    :goto_8
    invoke-static {v1, v14, v2, v5}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto/16 :goto_14

    .line 1610
    :cond_18
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1611
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1573
    :pswitch_e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "xcover_top_key_on_lockscreen"

    .line 1574
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1576
    :cond_19
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1577
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1562
    :pswitch_f
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "xcover_top_long_press_app"

    .line 1563
    invoke-static {v8, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1565
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x4

    const/4 v14, 0x1

    goto :goto_9

    :cond_1a
    const/4 v1, 0x4

    const/4 v14, 0x0

    :goto_9
    invoke-static {v14, v1, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto/16 :goto_14

    .line 1567
    :cond_1b
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1568
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1551
    :pswitch_10
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "xcover_top_short_press_app"

    .line 1552
    invoke-static {v8, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1554
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x3

    const/4 v14, 0x1

    goto :goto_a

    :cond_1c
    const/4 v1, 0x3

    const/4 v14, 0x0

    :goto_a
    invoke-static {v14, v1, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto/16 :goto_14

    .line 1556
    :cond_1d
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1557
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1539
    :pswitch_11
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1540
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    .line 1542
    invoke-static {v8, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v2, 0x1

    .line 1543
    invoke-static {v1, v2, v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    goto/16 :goto_14

    .line 1545
    :cond_1e
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1546
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_12
    move-object/from16 v3, p4

    .line 1528
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->getOSVersion()I

    move-result v2

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_1f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1529
    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1531
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 1533
    :cond_1f
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1534
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_13
    move-object/from16 v3, p4

    .line 1506
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->getOSVersion()I

    move-result v2

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_22

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1507
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 1508
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x0

    .line 1510
    invoke-static {v8, v12, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    :cond_20
    const/4 v2, 0x2

    .line 1513
    invoke-static {v8, v12, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "com.samsung.android.bixby.agent/com.samsung.android.bixby.assistanthome.AssistantHomeLauncherActivity"

    .line 1514
    invoke-static {v8, v11, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b

    .line 1517
    :cond_21
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v12, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1520
    :goto_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 1522
    :cond_22
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1523
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_14
    move-object/from16 v3, p4

    .line 1495
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->getOSVersion()I

    move-result v2

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_23

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1496
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v15, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1498
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 1500
    :cond_23
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1501
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1476
    :pswitch_15
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1477
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v15, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "sideKeyType"

    .line 1478
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sideKeyValue"

    .line 1479
    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1480
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1481
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v12, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1483
    :cond_24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1484
    invoke-static {v8, v11, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1487
    :cond_25
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->sideKeyDoublePressRestore(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 1489
    :cond_26
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1490
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1442
    :pswitch_16
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1443
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v4, v17

    .line 1444
    invoke-static {v8, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1446
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "xcoverKeyDedicatedAppPkg"

    .line 1447
    invoke-virtual {v3, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1448
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "dedicated_app_label_xcover"

    if-eqz v7, :cond_27

    .line 1449
    :try_start_3
    invoke-static {v8, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1450
    invoke-static {v8, v11, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    .line 1452
    :cond_27
    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1453
    invoke-static {v8, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1454
    invoke-static {v1, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v11, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1458
    :cond_28
    :goto_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v8, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1459
    invoke-static {v8, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1461
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v2, 0x0

    .line 1462
    invoke-static {v8, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1463
    invoke-static {v1, v2, v2, v13}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto/16 :goto_14

    :cond_29
    if-ne v2, v3, :cond_2a

    .line 1465
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_2a
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2b

    const/4 v2, 0x0

    const/4 v14, 0x1

    goto :goto_d

    :cond_2b
    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 1466
    :goto_d
    invoke-static {v1, v14, v2, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto/16 :goto_14

    .line 1470
    :cond_2c
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1471
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_17
    move-object/from16 v4, v17

    .line 1428
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "verizon_dedicated_ptt_switch"

    .line 1429
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1430
    invoke-static {v8, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1431
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "com.verizon.pushtotalkplus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x0

    .line 1432
    invoke-static {v8, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1433
    invoke-static {v1, v3, v3, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto/16 :goto_14

    .line 1436
    :cond_2d
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1437
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1419
    :pswitch_18
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "active_key_on_lockscreen"

    .line 1420
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1422
    :cond_2e
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1423
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1408
    :pswitch_19
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "long_press_app"

    .line 1409
    invoke-static {v8, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1411
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_e

    :cond_2f
    const/4 v1, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-static {v1, v2, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto/16 :goto_14

    .line 1413
    :cond_30
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1414
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1397
    :pswitch_1a
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "short_press_app"

    .line 1398
    invoke-static {v8, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1400
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const/4 v1, 0x0

    const/4 v14, 0x1

    goto :goto_f

    :cond_31
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_f
    invoke-static {v14, v1, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto/16 :goto_14

    .line 1402
    :cond_32
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1403
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1389
    :pswitch_1b
    invoke-static {v1, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setVideoEnhanceAppInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_1c
    const-string v1, "hdr_effect"

    .line 1380
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1369
    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingCoverOrientation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "cover_text_direction"

    .line 1371
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1373
    :cond_33
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1374
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1354
    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "fingerprint_gesture_quick"

    .line 1355
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1356
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "supportSpay"

    .line 1357
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "fingerprint_gesture_spay"

    .line 1359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1363
    :cond_34
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1364
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1328
    :pswitch_1f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVisibleOneHandOperation(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1329
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v4, v16

    invoke-static {v8, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "wakeupType"

    .line 1331
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v6, "one_handed_op_wakeup_type"

    if-nez v5, :cond_35

    .line 1333
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1337
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_10

    :cond_36
    move v2, v5

    .line 1338
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    move v4, v5

    goto :goto_11

    :cond_37
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_38

    if-eqz v2, :cond_38

    move v14, v5

    goto :goto_12

    :cond_38
    const/4 v14, 0x0

    .line 1339
    :goto_12
    invoke-static {v14}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    .line 1341
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "showHardKey"

    .line 1342
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "one_handed_op_show_hard_keys"

    .line 1344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1348
    :cond_39
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1349
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1319
    :pswitch_20
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "double_tab_to_wake_up"

    .line 1320
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1322
    :cond_3a
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1323
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    .line 1310
    :pswitch_21
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPalmTouchToSleep()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "palm_touch_to_sleep"

    .line 1311
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1313
    :cond_3b
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1314
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_22
    const-string v1, "double_tap_to_sleep"

    .line 1306
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1297
    :pswitch_23
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "lift_to_wake"

    .line 1298
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1300
    :cond_3c
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1301
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_24
    const-string v1, "direct_share"

    .line 1293
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    :pswitch_25
    const-string v2, "easy_mute"

    .line 1272
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "motion_merged_mute_pause"

    .line 1273
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "palmTouch"

    .line 1274
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "turnOver"

    .line 1275
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "surface_palm_touch"

    .line 1279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1278
    invoke-static {v8, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1282
    :cond_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "motion_overturn"

    .line 1284
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1283
    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1287
    :cond_3e
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1288
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_26
    const-string v2, "smart_alert"

    .line 1263
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "motion_pick_up"

    .line 1264
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1266
    :cond_3f
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1267
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_27
    const-string v2, "direct_call"

    .line 1254
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "motion_pick_up_to_call_out"

    .line 1255
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1257
    :cond_40
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1258
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_14

    :pswitch_28
    const-string v2, "palm_swipe_to_capture"

    .line 1245
    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "surface_palm_swipe"

    .line 1246
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    .line 1248
    :cond_41
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1249
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_14

    :pswitch_29
    const-string v1, "intelligent_sleep_mode"

    .line 1237
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14

    .line 1224
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isNFCAuthCover(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_13

    .line 1230
    :cond_42
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v10, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1231
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_14

    :cond_43
    :goto_13
    const-string v2, "auto_screen_on"

    .line 1225
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v8, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1226
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_44

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "automatic_unlock"

    .line 1227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1763
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdvancedFeatureItem"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_44
    :goto_14
    invoke-virtual {v10}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c390220 -> :sswitch_2b
        -0x6e202a23 -> :sswitch_2a
        -0x6c2c62ae -> :sswitch_29
        -0x6af69bc6 -> :sswitch_28
        -0x68ba8cac -> :sswitch_27
        -0x67add8cb -> :sswitch_26
        -0x6149ea62 -> :sswitch_25
        -0x5facb6d5 -> :sswitch_24
        -0x5da9ee2e -> :sswitch_23
        -0x5cf16054 -> :sswitch_22
        -0x598a05d6 -> :sswitch_21
        -0x589512fd -> :sswitch_20
        -0x51680a0d -> :sswitch_1f
        -0x454772d9 -> :sswitch_1e
        -0x433df9b5 -> :sswitch_1d
        -0x42ede966 -> :sswitch_1c
        -0x3e758e70 -> :sswitch_1b
        -0x2f96d07d -> :sswitch_1a
        -0x2878e78e -> :sswitch_19
        -0x1a930666 -> :sswitch_18
        -0x87140b2 -> :sswitch_17
        -0x690cafe -> :sswitch_16
        0x134b032 -> :sswitch_15
        0x53c096d -> :sswitch_14
        0x7c9f249 -> :sswitch_13
        0x962044f -> :sswitch_12
        0x157c112e -> :sswitch_11
        0x169f2581 -> :sswitch_10
        0x1fe09786 -> :sswitch_f
        0x20f02198 -> :sswitch_e
        0x220821d7 -> :sswitch_d
        0x33fc651f -> :sswitch_c
        0x3dc362df -> :sswitch_b
        0x420fccdb -> :sswitch_a
        0x4c956320 -> :sswitch_9
        0x514e2b43 -> :sswitch_8
        0x58736f89 -> :sswitch_7
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
