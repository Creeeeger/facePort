.class public Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_b

    const-string p0, "com.samsung.accessibility.action.UPDATE_PROFILE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p0, "component"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "onReceive - componentName : "

    const-string v0, "RecommendedForYouReceiver"

    invoke-static {p2, p0, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const-string/jumbo p0, "use_count_magnification"

    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->updateFeatureConditionForProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_2
    sget-object p2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "accessibility_display_inversion_enabled"

    invoke-static {p0, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_b

    const-string/jumbo p0, "use_count_color_inversion"

    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->updateFeatureConditionForProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_3
    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_MUTE_ALL_SOUNDS_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "all_sound_off"

    invoke-static {p0, p2, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    const-string p0, "enable_time_mute_all_sounds"

    const-string/jumbo p2, "use_count_mute_all_sounds"

    invoke-static {p1, p0, p2, v1}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->updateFeatureConditionForProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_5
    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "run_amplify_ambient_sound"

    invoke-static {p0, p2, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_b

    const-string/jumbo p0, "use_count_amplify_ambient_sound"

    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->updateFeatureConditionForProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_UNIVERSAL_SWITCH:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "enable_time_universal_switch"

    const-string/jumbo v0, "use_count_universal_switch"

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->updateFeatureConditionForProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_7
    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_VOICE_ACCESS:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "enable_time_voice_access"

    const-string/jumbo v0, "use_count_voice_access"

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->updateFeatureConditionForProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    const-string/jumbo p2, "tap_duration"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/AccessibilityNotificationUtil;->updateTapDurationNotification(Landroid/content/Context;)V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouReceiver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    sget p2, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->$r8$clinit:I

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "enable_time_screen_reader"

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_a

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    const-string/jumbo p2, "use_count_screen_reader"

    invoke-static {p1, v0, p2, p0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouUtils;->updateFeatureConditionForProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    :goto_2
    return-void
.end method
