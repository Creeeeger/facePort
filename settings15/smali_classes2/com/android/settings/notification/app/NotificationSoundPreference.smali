.class public Lcom/android/settings/notification/app/NotificationSoundPreference;
.super Lcom/android/settings/RingtonePreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mRingtone:Landroid/net/Uri;

.field public mRingtoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    if-eqz p3, :cond_1

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->isValidRingtoneUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onActivityResult for URI:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: invalid ringtone Uri"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationSoundPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onRestoreRingtone()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    return-object p0
.end method

.method public final setRingtone(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    if-ne v0, p1, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference;->mRingtoneName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    const-string p1, "\u00a0"

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    new-instance v0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/app/NotificationSoundPreference$1;-><init>(Lcom/android/settings/notification/app/NotificationSoundPreference;Landroid/net/Uri;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
