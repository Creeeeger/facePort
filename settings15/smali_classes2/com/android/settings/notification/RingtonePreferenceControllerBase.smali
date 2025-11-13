.class public abstract Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public static $r8$lambda$wz34Fh1d7xtSUshSAMQdGfTqG5g(Lcom/android/settings/notification/RingtonePreferenceControllerBase;Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrefControllerMixin"

    const-string v0, "Error getting ringtone summary."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract getRingtoneType()I
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/RingtonePreferenceControllerBase;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
