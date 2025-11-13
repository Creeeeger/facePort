.class public final Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static INSTANCE:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

.field public static final USING_FUNCTION_CONTROLLERS:Ljava/util/Map;


# instance fields
.field public final usingFunctionItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x25

    new-array v0, v0, [Ljava/util/Map$Entry;

    const-string v1, "daltonizer_preference_screen"

    const-string v2, "com.android.settings.accessibility.DaltonizerPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "accessibility_control_timeout_preference_fragment"

    const-string v2, "com.samsung.android.settings.accessibility.advanced.controller.SecAccessibilityTimeoutPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "camera_flash"

    const-string v2, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecCameraFlashNotificationPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_flash"

    const-string v2, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecScreenFlashNotificationPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "assistant_menu_preference"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.AssistantMenuPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_UNIVERSAL_SWITCH:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.UniversalSwitchPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "auto_action_preference_screen"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.autoaction.AutoActionPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "bounce_keys"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.controllers.BounceKeysPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ignore_repeat_key"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.controllers.IgnoreRepeatPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "slow_keys"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.controllers.SlowKeysPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "sticky_keys"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.controllers.StickyKeysPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "tap_duration_key"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.controllers.TapDurationPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_long_press_timeout_preference"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.controllers.TouchAndHoldPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "voice_access_preference"

    const-string v2, "com.samsung.android.settings.accessibility.dexterity.controllers.VoiceAccessPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "amplify_ambient_sound"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.AmplifyAmbientSoundPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "connected_audio_balance"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.ConnectedSoundBalancePreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "all_sound_off_key"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.MuteAllSoundsPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "call_hearing_aid"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.SecHearingAidCompatibilityPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "call_hearing_aid_in_hearing"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.SecSecondDepthHearingAidCompatibilityPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "mono_audio_key"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.SecPrimaryMonoPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "mono_audio_support_dual_spk_key"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.SecPrimaryMonoHasDepthPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "speaker_audio_balance"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.SpeakerSoundBalancePreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "live_caption"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.controllers.SecLiveCaptionPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "talkback_preference"

    const-string v2, "com.samsung.android.settings.accessibility.home.TalkBackPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "color_adjustment_preference_screen"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.ColorAdjustmentPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_inversion_preference"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.ColorInversionPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "color_lens_preference_screen"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.ColorLensPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_high_text_contrast_preference"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.HighContrastFontPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "high_keyboard_contrast_preference_screen"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.HighContrastKeyboardPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "high_light_buttons_preference_screen"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.HighLightButtonPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "magnification_preference_screen"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.MagnificationPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "reduce_bright_colors_preference"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.ReduceBrightColorsPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_reduce_transparency"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.ReduceTransparencyPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_relumino_preference"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.ReluminoPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_remove_animations"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.RemoveAnimationPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_audio_description"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.SecAudioDescriptionPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "speak_keyboard_input_aloud"

    const-string v2, "com.samsung.android.settings.accessibility.vision.controllers.SpeakKeyboardPreferenceController"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->USING_FUNCTION_CONTROLLERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->USING_FUNCTION_CONTROLLERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->usingFunctionItems:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->INSTANCE:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->INSTANCE:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->INSTANCE:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

    return-object p0
.end method
