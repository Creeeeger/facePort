.class public Lcom/android/settings/notification/zen/ZenModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildMessage(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 8

    const-string v0, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ZenModeVoiceActivity"

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const-string v1, "android.settings.extra.do_not_disturb_mode_minutes"

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x3

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    move v6, v3

    move-object p1, v5

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v5, v6, p1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_2
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_3

    const/4 v2, 0x5

    const/4 v5, 0x1

    invoke-virtual {p1, v2, v3, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_3
    if-eqz v6, :cond_5

    if-eq v6, v0, :cond_4

    goto :goto_3

    :cond_4
    const v4, 0x7f1438f5

    goto :goto_3

    :cond_5
    const v4, 0x7f1438f6

    :goto_3
    if-ltz v1, :cond_a

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const p1, 0xea60

    mul-int/2addr p1, v1

    int-to-long v6, p1

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Hm"

    goto :goto_4

    :cond_7
    const-string p1, "hma"

    :goto_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    const/16 v0, 0x3c

    if-ge v1, v0, :cond_8

    const v0, 0x7f1438f3

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/notification/zen/ZenModeVoiceActivity;->buildMessage(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_6

    :cond_8
    rem-int/lit8 v2, v1, 0x3c

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1438f4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    div-int/2addr v1, v0

    const v0, 0x7f1438f2

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/notification/zen/ZenModeVoiceActivity;->buildMessage(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/VoiceSettingsActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/utils/VoiceSettingsActivity$1;-><init>(Lcom/android/settings/utils/VoiceSettingsActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_7

    :cond_b
    const-string p1, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_c
    :goto_7
    return v3
.end method
