.class public abstract Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final A11Y_LOGGING_RECEIVER_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final PROVIDER_CLASSNAME_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 49

    const-string v0, "com.samsung.accessibility"

    const-string v1, ".salogging.StatusLogBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingUtil;->A11Y_LOGGING_RECEIVER_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v47, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecCameraFlashNotificationPreferenceController"

    const-string v48, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecScreenFlashNotificationPreferenceController"

    const-string v1, "com.samsung.android.settings.accessibility.home.TalkBackPreferenceController"

    const-string v2, "com.samsung.android.settings.accessibility.home.RecommendedForYouPreferenceController"

    const-string v3, "com.samsung.android.settings.accessibility.home.InstalledAppsPreferenceController"

    const-string v4, "com.samsung.android.settings.accessibility.home.UsingFunctionsExpandablePreferenceController"

    const-string v5, "com.samsung.android.settings.accessibility.dexterity.autoaction.AutoActionPreferenceController"

    const-string v6, "com.samsung.android.settings.accessibility.dexterity.autoaction.CornerActionTypePreferenceController"

    const-string v7, "com.samsung.android.settings.accessibility.dexterity.controllers.BounceKeysPreferenceController"

    const-string v8, "com.samsung.android.settings.accessibility.dexterity.controllers.IgnoreRepeatPreferenceController"

    const-string v9, "com.samsung.android.settings.accessibility.dexterity.controllers.SlowKeysPreferenceController"

    const-string v10, "com.samsung.android.settings.accessibility.dexterity.controllers.StickyKeysPreferenceController"

    const-string v11, "com.samsung.android.settings.accessibility.dexterity.controllers.TapDurationPreferenceController"

    const-string v12, "com.samsung.android.settings.accessibility.dexterity.controllers.TouchAndHoldPreferenceController"

    const-string v13, "com.samsung.android.settings.accessibility.dexterity.controllers.VoiceAccessPreferenceController"

    const-string v14, "com.samsung.android.settings.accessibility.dexterity.controllers.EasyScreenTurnOnPreferenceController"

    const-string v15, "com.samsung.android.settings.accessibility.vision.controllers.SecAudioDescriptionPreferenceController"

    const-string v16, "com.samsung.android.settings.accessibility.vision.controllers.ColorLensPreferenceController"

    const-string v17, "com.samsung.android.settings.accessibility.vision.controllers.ColorAdjustmentPreferenceController"

    const-string v18, "com.samsung.android.settings.accessibility.vision.controllers.HighContrastFontPreferenceController"

    const-string v19, "com.samsung.android.settings.accessibility.vision.controllers.HighContrastThemePreferenceController"

    const-string v20, "com.samsung.android.settings.accessibility.vision.controllers.ReluminoPreferenceController"

    const-string v21, "com.samsung.android.settings.accessibility.vision.controllers.HighLightButtonPreferenceController"

    const-string v22, "com.samsung.android.settings.accessibility.vision.controllers.RemoveAnimationPreferenceController"

    const-string v23, "com.samsung.android.settings.accessibility.vision.controllers.ReduceTransparencyPreferenceController"

    const-string v24, "com.samsung.android.settings.accessibility.vision.controllers.CursorThicknessPreferenceController"

    const-string v25, "com.samsung.android.settings.accessibility.vision.controllers.MagnifierCameraPreferenceController"

    const-string v26, "com.samsung.android.settings.accessibility.vision.controllers.ColorInversionPreferenceController"

    const-string v27, "com.samsung.android.settings.accessibility.vision.controllers.ReduceBrightColorsPreferenceController"

    const-string v28, "com.samsung.android.settings.accessibility.vision.controllers.MagnificationPreferenceController"

    const-string v29, "com.android.settings.accessibility.DaltonizerPreferenceController"

    const-string v30, "com.android.settings.accessibility.ReduceBrightColorsPersistencePreferenceController"

    const-string v31, "com.samsung.android.settings.accessibility.hearing.controllers.SecLiveCaptionPreferenceController"

    const-string v32, "com.samsung.android.settings.accessibility.hearing.controllers.SecHearingAidCompatibilityPreferenceController"

    const-string v33, "com.samsung.android.settings.accessibility.hearing.controllers.SecPrimaryMonoHasDepthPreferenceController"

    const-string v34, "com.samsung.android.settings.accessibility.hearing.controllers.MuteAllSoundsPreferenceController"

    const-string v35, "com.samsung.android.settings.accessibility.hearing.controllers.AmplifyAmbientSoundPreferenceController"

    const-string v36, "com.samsung.android.settings.accessibility.hearing.controllers.SpeakerSoundBalancePreferenceController"

    const-string v37, "com.samsung.android.settings.accessibility.hearing.controllers.AdaptSoundController"

    const-string v38, "com.samsung.android.settings.accessibility.hearing.controllers.SecAccessibilityHearingAidPreferenceController"

    const-string v39, "com.samsung.android.settings.accessibility.advanced.controller.SecAccessibilityTimeoutPreferenceController"

    const-string v40, "com.samsung.android.settings.accessibility.advanced.shortcut.FloatingMenuOpacityPreferenceController"

    const-string v41, "com.samsung.android.settings.accessibility.advanced.shortcut.AccessibilityButtonAppPreferenceController"

    const-string v42, "com.samsung.android.settings.accessibility.advanced.shortcut.AccessibilityButtonLocationNavigationBarPreferenceController"

    const-string v43, "com.samsung.android.settings.accessibility.advanced.shortcut.SideAndVolumeUpGuidePreferenceController"

    const-string v44, "com.samsung.android.settings.accessibility.advanced.shortcut.VolumeUpAndDownGuidePreferenceController"

    const-string v45, "com.samsung.android.settings.accessibility.advanced.flashnotification.ScreenFlashNotificationAllAppsPreferenceController"

    const-string v46, "com.samsung.android.settings.accessibility.advanced.flashnotification.ScreenFlashNotificationCustomAppsPreferenceController"

    filled-new-array/range {v1 .. v48}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingUtil;->PROVIDER_CLASSNAME_SET:Ljava/util/Set;

    return-void
.end method

.method public static getShortcutStatusMap(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/util/Map;
    .locals 10

    const/16 v0, 0x21f

    invoke-static {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "on"

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "off"

    goto :goto_0

    :goto_1
    and-int/lit8 p1, p0, 0x1

    const-string/jumbo v9, "n"

    const-string/jumbo v0, "y"

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_2

    :cond_1
    move-object v3, v9

    :goto_2
    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_2

    move-object v5, v0

    goto :goto_3

    :cond_2
    move-object v5, v9

    :goto_3
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    move-object v7, v0

    goto :goto_4

    :cond_3
    move-object v7, v9

    :goto_4
    const-string/jumbo v6, "volUpAndDown"

    const-string/jumbo v8, "tripleTap"

    const-string/jumbo v0, "switch"

    const-string v2, "a11yBtn"

    const-string/jumbo v4, "sideAndVolUp"

    invoke-static/range {v0 .. v9}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getSwitchStatus(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "On"

    goto :goto_0

    :cond_0
    const-string p0, "Off"

    :goto_0
    return-object p0
.end method
