.class public abstract Lcom/samsung/android/settings/accessibility/AccessibilityConstant;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final COMPONENT_NAME_ACCESSIBILITY_HOMEPAGE_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_ACCESSIBILITY_MENU:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SERVICE:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_ASSISTANT_MENU:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_BIXBY_AGENT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_COLOR_ADJUSTMENT_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_COLOR_LENS_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_GOOGLE_LIVE_TRANSCRIBE_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_GOOGLE_SELECT_TO_SPEAK:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_GOOGLE_SOUND_NOTIFICATION_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_HEARING_AID_SUPPORT_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_HIGH_CONTRAST_FONT_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_INTERACTION_CONTROL_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_LIVE_TRANSCRIBE:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_MAGNIFIER_CAMERA_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_MUTE_ALL_SOUNDS_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_RELUMINO_SHORTCUT:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_SAMSUNG_TALKBACK_SETTING_ACTIVITY:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_SELECT_TO_SPEAK:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_SPEAK_KEYBOARD_INPUT_ALOUD:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_SWITCH_ACCESS:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_UNIVERSAL_SWITCH:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_VOICE_ACCESS:Landroid/content/ComponentName;

.field public static final HAPTIC_CONSTANT_CURSOR_MOVE:I

.field public static final URI_ACCESSIBILITY_PROVIDER:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://com.samsung.accessibility.provider/a11ysettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->URI_ACCESSIBILITY_PROVIDER:Landroid/net/Uri;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.AccessibilityHomepageActivityShortcut"

    const-string v1, "com.android.settings"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_ACCESSIBILITY_HOMEPAGE_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, ".TalkBackService"

    const-string v2, "com.google.android.marvin.talkback"

    invoke-static {v2, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.marvin.talkback.TalkBackService"

    const-string v4, "com.samsung.android.accessibility.talkback"

    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.talkback.TalkBackPreferencesActivity"

    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK_SETTING_ACTIVITY:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SELECT_TO_SPEAK:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_SELECT_TO_SPEAK:Landroid/content/ComponentName;

    const-string v0, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-static {v2, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_ACCESSIBILITY_MENU:Landroid/content/ComponentName;

    const-string v0, "com.google.android.accessibility.switchaccess"

    const-string v2, "com.android.switchaccess.SwitchAccessService"

    invoke-static {v0, v2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SWITCH_ACCESS:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.honeyboard"

    const-string v2, ".settings.swipetouchandfeedback.speakkeyboardinputaloud.SpeakKeyboardInputAloudShortcut"

    invoke-static {v0, v2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SPEAK_KEYBOARD_INPUT_ALOUD:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.MagnifierCameraShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_MAGNIFIER_CAMERA_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.HighContrastFontsShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_HIGH_CONTRAST_FONT_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.ColorLensShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_COLOR_LENS_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.ColorAdjustmentShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_COLOR_ADJUSTMENT_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.ReluminoShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_RELUMINO_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.HearingAidSupportShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_HEARING_AID_SUPPORT_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.AmplifyShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, ".amplifyambientsound.AmplifyAmbientSoundService"

    const-string v2, "com.samsung.accessibility"

    invoke-static {v2, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SERVICE:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.settings.accessibility.shortcut.MuteAllShortcut"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_MUTE_ALL_SOUNDS_SHORTCUT:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.audio.hearing.visualization.accessibility.dolphin.ui.visualizer.TimelineActivity"

    const-string v3, "com.google.audio.hearing.visualization.accessibility.scribe"

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_SOUND_NOTIFICATION_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, ".SpeechToTextAccessibilityService"

    invoke-static {v3, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_LIVE_TRANSCRIBE:Landroid/content/ComponentName;

    const-string v0, ".MainActivity"

    invoke-static {v3, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_LIVE_TRANSCRIBE_SHORTCUT:Landroid/content/ComponentName;

    const-string v0, ".universalswitch.UniversalSwitchService"

    invoke-static {v2, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_UNIVERSAL_SWITCH:Landroid/content/ComponentName;

    const-string v0, ".assistantmenu.serviceframework.AssistantMenuService"

    invoke-static {v2, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_ASSISTANT_MENU:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.accessibility.voiceaccess"

    const-string v3, "com.google.android.apps.accessibility.voiceaccess.JustSpeakService"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_VOICE_ACCESS:Landroid/content/ComponentName;

    const-string v0, ".shortcut.InteractionControlShortcut"

    invoke-static {v2, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_INTERACTION_CONTROL_SHORTCUT:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.bixby.agent"

    const-string v2, "com.samsung.android.bixby.agent2.actorcore.ActorNormalAccessibilityService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_BIXBY_AGENT:Landroid/content/ComponentName;

    const/16 v0, 0x29

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->HAPTIC_CONSTANT_CURSOR_MOVE:I

    return-void
.end method
