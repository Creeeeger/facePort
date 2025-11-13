.class public final Lcom/android/settings/notification/DialPadTonePreferenceController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isApplicable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
