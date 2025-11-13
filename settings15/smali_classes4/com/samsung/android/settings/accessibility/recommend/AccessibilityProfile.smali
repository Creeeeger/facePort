.class public final Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public profileType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->initProfileType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->profileType:I

    return-void
.end method

.method public static initProfileType(Landroid/content/Context;)I
    .locals 16

    move-object/from16 v1, p0

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const-string v2, "isScreenReaderTurnedOn: "

    const-string v3, "AccessibilityProfile"

    invoke-static {v2, v3, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "enable_time_screen_reader"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureOperate24Hours(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v5, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    const/16 v6, 0x21f

    invoke-static {v1, v6, v5}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    invoke-static {v1, v6, v7}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x5

    if-eqz v7, :cond_3

    const-string/jumbo v7, "use_count_screen_reader"

    invoke-static {v1, v8, v7}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    if-nez v0, :cond_5

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    const-string v7, "isNoVisionProfileRegistered: "

    invoke-static {v7, v3, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x2

    if-eqz v0, :cond_6

    move v0, v7

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getUserShortcutTypeFromSettings(Landroid/content/Context;)I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    move v9, v2

    :goto_7
    sget-object v10, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v1, v6, v10}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v10

    invoke-static {v1, v6, v5}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    invoke-static {v1, v6, v5}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_8

    :cond_8
    move v5, v2

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v5, 0x1

    :goto_9
    sget-object v11, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_HIGH_CONTRAST_FONT_SHORTCUT:Landroid/content/ComponentName;

    invoke-static {v1, v6, v11}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v11

    sget-object v12, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SELECT_TO_SPEAK:Landroid/content/ComponentName;

    invoke-static {v1, v6, v12}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v12

    const/16 v13, 0xa

    if-eqz v9, :cond_a

    const-string/jumbo v14, "use_count_magnification"

    invoke-static {v1, v13, v14}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    goto :goto_a

    :cond_a
    move v14, v2

    :goto_a
    if-eqz v10, :cond_b

    const-string/jumbo v15, "use_count_color_inversion"

    invoke-static {v1, v13, v15}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    goto :goto_b

    :cond_b
    move v15, v2

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "font_size"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v8, 0x6

    if-lt v4, v8, :cond_c

    const/4 v4, 0x1

    goto :goto_c

    :cond_c
    move v4, v2

    :goto_c
    if-eqz v5, :cond_d

    if-eqz v9, :cond_d

    const/4 v8, 0x1

    goto :goto_d

    :cond_d
    move v8, v2

    :goto_d
    if-eqz v5, :cond_e

    if-eqz v10, :cond_e

    const/4 v9, 0x1

    goto :goto_e

    :cond_e
    move v9, v2

    :goto_e
    if-eqz v5, :cond_f

    if-eqz v11, :cond_f

    const/4 v10, 0x1

    goto :goto_f

    :cond_f
    move v10, v2

    :goto_f
    if-eqz v5, :cond_10

    if-eqz v12, :cond_10

    const/4 v5, 0x1

    goto :goto_10

    :cond_10
    move v5, v2

    :goto_10
    if-nez v14, :cond_12

    if-nez v15, :cond_12

    if-nez v4, :cond_12

    if-nez v8, :cond_12

    if-nez v9, :cond_12

    if-nez v10, :cond_12

    if-eqz v5, :cond_11

    goto :goto_11

    :cond_11
    move v4, v2

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v4, 0x1

    :goto_12
    const-string v5, "isVisibilityProfileRegistered: "

    invoke-static {v5, v3, v4}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "all_sound_off"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_13

    :cond_14
    move v5, v2

    :goto_13
    const-string v8, "camera_flash_notification"

    invoke-static {v4, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_16

    const-string/jumbo v8, "screen_flash_notification"

    invoke-static {v4, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_14

    :cond_15
    move v8, v2

    goto :goto_15

    :cond_16
    :goto_14
    const/4 v8, 0x1

    :goto_15
    const-string/jumbo v9, "odi_captions_enabled"

    invoke-static {v4, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_16

    :cond_17
    move v4, v2

    :goto_16
    const-string/jumbo v9, "use_count_mute_all_sounds"

    invoke-static {v1, v13, v9}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v10

    if-eqz v5, :cond_18

    const-string v5, "enable_time_mute_all_sounds"

    invoke-static {v1, v5}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureOperate24Hours(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_17

    :cond_18
    move v5, v2

    :goto_17
    if-eqz v8, :cond_19

    if-eqz v10, :cond_19

    const/4 v11, 0x1

    goto :goto_18

    :cond_19
    move v11, v2

    :goto_18
    if-eqz v4, :cond_1a

    if-eqz v10, :cond_1a

    const/4 v4, 0x1

    goto :goto_19

    :cond_1a
    move v4, v2

    :goto_19
    if-eqz v8, :cond_1b

    if-eqz v10, :cond_1b

    const/4 v8, 0x1

    goto :goto_1a

    :cond_1b
    move v8, v2

    :goto_1a
    if-nez v5, :cond_1d

    if-nez v11, :cond_1d

    if-nez v4, :cond_1d

    if-eqz v8, :cond_1c

    goto :goto_1b

    :cond_1c
    move v4, v2

    goto :goto_1c

    :cond_1d
    :goto_1b
    const/4 v4, 0x1

    :goto_1c
    const-string v5, "isDeafProfileRegistered: "

    invoke-static {v5, v3, v4}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_1e

    or-int/lit8 v0, v0, 0x10

    :cond_1e
    sget-object v4, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_LIVE_TRANSCRIBE_SHORTCUT:Landroid/content/ComponentName;

    invoke-static {v1, v6, v4}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v4

    sget-object v5, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    invoke-static {v1, v6, v5}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v5

    if-eqz v4, :cond_1f

    invoke-static {v1, v13, v9}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x1

    goto :goto_1d

    :cond_1f
    move v8, v2

    :goto_1d
    if-eqz v4, :cond_20

    if-eqz v5, :cond_20

    const-string/jumbo v4, "use_count_amplify_ambient_sound"

    const/4 v5, 0x5

    invoke-static {v1, v5, v4}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_1e

    :cond_20
    move v4, v2

    :goto_1e
    if-nez v8, :cond_22

    if-eqz v4, :cond_21

    goto :goto_1f

    :cond_21
    move v4, v2

    goto :goto_20

    :cond_22
    :goto_1f
    const/4 v4, 0x1

    :goto_20
    const-string v5, "isHardHearingProfileRegistered: "

    invoke-static {v5, v3, v4}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_23

    or-int/lit8 v0, v0, 0x8

    :cond_23
    move v4, v0

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_UNIVERSAL_SWITCH:Landroid/content/ComponentName;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v1, v6, v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v9

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_ASSISTANT_MENU:Landroid/content/ComponentName;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    const-string v0, "assistant_menu_size"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->readDataFromAccessibilityProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_24

    :goto_21
    const/4 v0, 0x1

    goto :goto_22

    :cond_24
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_22

    :catch_0
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "readDataFromAccessibilityProvider - value : "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not NumberFormat."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "A11yUtils"

    invoke-static {v11, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :goto_22
    if-ne v0, v7, :cond_25

    const/4 v0, 0x1

    goto :goto_23

    :cond_25
    move v0, v2

    :goto_23
    sget-object v7, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_VOICE_ACCESS:Landroid/content/ComponentName;

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v1, v6, v7}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v6

    if-eqz v8, :cond_26

    const-string v7, "enable_time_universal_switch"

    invoke-static {v1, v7}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureOperate24Hours(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    const/4 v7, 0x1

    goto :goto_24

    :cond_26
    move v7, v2

    :goto_24
    if-eqz v9, :cond_27

    const-string/jumbo v8, "use_count_universal_switch"

    const/4 v9, 0x5

    invoke-static {v1, v9, v8}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_25

    :cond_27
    move v8, v2

    :goto_25
    if-eqz v10, :cond_28

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_26

    :cond_28
    move v0, v2

    :goto_26
    if-eqz v5, :cond_29

    const-string v5, "enable_time_voice_access"

    invoke-static {v1, v5}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureOperate24Hours(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    goto :goto_27

    :cond_29
    move v5, v2

    :goto_27
    if-eqz v6, :cond_2a

    const-string/jumbo v6, "use_count_voice_access"

    const/4 v9, 0x5

    invoke-static {v1, v9, v6}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->isFeatureUsedMoreCount(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_28

    :cond_2a
    move v1, v2

    :goto_28
    if-nez v7, :cond_2b

    if-nez v8, :cond_2b

    if-nez v0, :cond_2b

    if-nez v5, :cond_2b

    if-eqz v1, :cond_2c

    :cond_2b
    const/4 v2, 0x1

    :cond_2c
    const-string v0, "isDexterityProfileRegistered: "

    invoke-static {v0, v3, v2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_2d

    or-int/lit8 v4, v4, 0x20

    :cond_2d
    if-nez v4, :cond_2e

    or-int/lit8 v4, v4, 0x1

    :cond_2e
    return v4
.end method


# virtual methods
.method public final isProfileRegistered(I)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->profileType:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
