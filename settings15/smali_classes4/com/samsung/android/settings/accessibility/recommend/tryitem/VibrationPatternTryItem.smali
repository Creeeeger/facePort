.class public final Lcom/samsung/android/settings/accessibility/recommend/tryitem/VibrationPatternTryItem;
.super Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final controller:Lcom/android/settings/core/BasePreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    const-string v0, "dummy"

    const-string v1, "com.samsung.android.settings.asbase.vibration.SecSoundDeviceVibrationController"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/VibrationPatternTryItem;->controller:Lcom/android/settings/core/BasePreferenceController;

    return-void
.end method


# virtual methods
.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "VibrationPattern"

    return-object p0
.end method

.method public final getLaunchIntent()Landroid/content/Intent;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "vibration_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.asbase.vibration.VibPickerContainer"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getMappedUsingFunctionKeySet()Ljava/util/Set;
    .locals 8

    const-string/jumbo v6, "mono_audio_key"

    const-string v7, "amplify_ambient_sound"

    const-string v0, "connected_audio_balance"

    const-string/jumbo v1, "speaker_audio_balance"

    const-string v2, "all_sound_off_key"

    const-string v3, "call_hearing_aid"

    const-string v4, "call_hearing_aid_in_hearing"

    const-string/jumbo v5, "mono_audio_support_dual_spk_key"

    invoke-static/range {v0 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f142845

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/VibrationPatternTryItem;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
