.class public final Lcom/android/settings/notification/TouchSoundPreferenceController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final setSetting(Landroid/content/Context;I)Z
    .locals 1

    new-instance v0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method
