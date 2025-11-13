.class public abstract Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final additionalInfoMap:Ljava/util/Map;

.field public static final candidateBuilders:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->candidateBuilders:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->additionalInfoMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_ACCESSIBILITY_HOMEPAGE_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v4, -0x3e7

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const/16 v4, 0x10

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string v5, "NONE"

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v5, -0x3e6

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string/jumbo v5, "talkback"

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3e5

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_MAGNIFIER_CAMERA_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v5, -0x3e4

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string v5, "com.samsung.android.settings.accessibility.vision.controllers.MagnifierCameraPreferenceController"

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string/jumbo v5, "visibility"

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    const-string v3, "com.android.server.accessibility.MagnificationController"

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f140151

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    const v3, 0x7f080486

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    const-string v3, "magnification_shortcut"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->exclusiveFeature:Ljava/lang/String;

    iput v4, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    const/16 v3, -0x3e3

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    const-string v3, "com.android.settings.accessibility.MagnificationPreferenceController"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f1400ce

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    const v3, 0x7f0803c0

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    const/16 v3, -0x3e2

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    const-string v3, "com.android.settings.accessibility.ColorInversionPreferenceController"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_HIGH_CONTRAST_FONT_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3e1

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string v6, "com.samsung.android.settings.accessibility.vision.controllers.HighContrastFontPreferenceController"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_RELUMINO_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3e0

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string/jumbo v6, "relumino"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->exclusiveFeature:Ljava/lang/String;

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string v6, "com.samsung.android.settings.accessibility.vision.controllers.ReluminoPreferenceController"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f1400cb

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    const v3, 0x7f0803bf

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    const/16 v3, -0x3df

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    const-string v3, "com.android.settings.accessibility.DaltonizerPreferenceController"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_COLOR_ADJUSTMENT_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3de

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string v6, "color_blind"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->exclusiveFeature:Ljava/lang/String;

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string v6, "com.samsung.android.settings.accessibility.vision.controllers.ColorAdjustmentPreferenceController"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_COLOR_LENS_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3dd

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string v6, "color_lens"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->exclusiveFeature:Ljava/lang/String;

    const-string v6, "com.samsung.android.settings.accessibility.vision.controllers.ColorLensPreferenceController"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f141e52

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    const v3, 0x7f0803f0

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    const/16 v3, -0x3dc

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    const-string v3, "com.samsung.android.settings.accessibility.vision.controllers.ReduceBrightColorsPreferenceController"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SPEAK_KEYBOARD_INPUT_ALOUD:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3db

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_HEARING_AID_SUPPORT_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v5, -0x3da

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string v5, "com.samsung.android.settings.accessibility.hearing.controllers.HearingAidsPreferenceController"

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string v5, "hearing"

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3d9

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string v6, "com.samsung.android.settings.accessibility.hearing.controllers.AmplifyAmbientSoundPreferenceController"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_MUTE_ALL_SOUNDS_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3d8

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    const-string/jumbo v6, "mute_all_sound"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->exclusiveFeature:Ljava/lang/String;

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string v6, "com.samsung.android.settings.accessibility.hearing.controllers.MuteAllSoundsPreferenceController"

    iput-object v6, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_SOUND_NOTIFICATION_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3d7

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_LIVE_TRANSCRIBE:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3d6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_LIVE_TRANSCRIBE_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3d5

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    iput-object v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    sget-object v3, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_UNIVERSAL_SWITCH:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f14302b

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    const v3, 0x7f080662

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    const-string/jumbo v3, "universal_switch"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->exclusiveFeature:Ljava/lang/String;

    iput v4, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    const/16 v3, -0x3d4

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    const-string v3, "com.samsung.android.settings.accessibility.dexterity.UniversalSwitchPreferenceController"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    const-string v3, "dexterity"

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    sget-object v5, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_ASSISTANT_MENU:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Ljava/lang/String;)V

    const v5, 0x7f140468

    iput v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    const v5, 0x7f080353

    iput v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    const-string v5, "assistant_menu"

    iput-object v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->exclusiveFeature:Ljava/lang/String;

    iput v4, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    const/16 v5, -0x3d3

    iput v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    const-string v5, "com.samsung.android.settings.accessibility.dexterity.AssistantMenuPreferenceController"

    iput-object v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_VOICE_ACCESS:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    const/16 v6, -0x3d2

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    iput v4, v5, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    iput-object v3, v5, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_INTERACTION_CONTROL_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f140036

    iput v2, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    const v2, 0x7f08046c

    iput v2, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    const-string v2, "interaction_control"

    iput-object v2, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->exclusiveFeature:Ljava/lang/String;

    const/16 v2, 0x11

    iput v2, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    const/16 v2, -0x3d1

    iput v2, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.AccessControlPreferenceController"

    iput-object v2, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    iput-object v3, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getActivityCandidateBuilders(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;-><init>(Landroid/content/pm/ActivityInfo;)V

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->additionalInfoMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    iget-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->componentName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    invoke-direct {v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>()V

    :cond_0
    sget-object v4, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_INTERACTION_CONTROL_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->priority:I

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    iget-object v3, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->controller:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    iget v3, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    iput v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    iget-object v3, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->exclusiveFeature:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->exclusiveFeature:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->candidateBuilders:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getCandidatesMap(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->getComponentNameAccessibilityServiceInfoMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->getTalkbackCandidateBuilder(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->getServiceCandidateBuilder(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->getActivityCandidateBuilders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static getComponentNameAccessibilityServiceInfoMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getServiceCandidateBuilder(Ljava/util/Map;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.accessibility"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->additionalInfoMap:Ljava/util/Map;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>(I)V

    move v1, v4

    :cond_1
    new-instance v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;-><init>(Ljava/lang/String;)V

    iput-object v2, v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->info:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v2, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->priority:I

    iput v2, v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    iget-object v2, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    iput-object v2, v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getTalkbackCandidateBuilder(Ljava/util/Map;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    move-object v2, p0

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$1;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;-><init>(Ljava/lang/String;)V

    iput-object v2, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->info:Landroid/accessibilityservice/AccessibilityServiceInfo;

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->additionalInfoMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;

    invoke-direct {v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;-><init>()V

    :cond_0
    iget v4, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->priority:I

    iput v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    iget-object v2, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    iput-object v2, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
