.class public Lcom/samsung/android/settings/bixbyroutinehandler/interactor/SoundSettingsActionInteractor;
.super Ljava/lang/Object;
.source "SoundSettingsActionInteractor.java"

# interfaces
.implements Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback<",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p0

    const-string p3, "audio"

    .line 37
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "routines_set_ringtone"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p4, "routines_set_call_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p5

    goto :goto_0

    :sswitch_2
    const-string p4, "routines_set_bixby_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const-string p2, "volume_level_recovery"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 40
    :pswitch_0
    invoke-static {p1, p5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 43
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "routines_ringtone_uri"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 45
    :cond_3
    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_1

    .line 54
    :pswitch_1
    invoke-virtual {p3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 55
    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    const/16 p1, 0xb

    .line 49
    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 50
    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_2
        -0x2e2ff452 -> :sswitch_1
        0x2b6d34ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "audio"

    .line 64
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, 0x0

    const/4 v0, -0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "routines_set_ringtone"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p4, "routines_set_call_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p4, "routines_set_bixby_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, p5

    :goto_0
    const-string p2, "%"

    const/high16 p4, 0x42c80000    # 100.0f

    const/high16 v1, 0x40e00000    # 7.0f

    const-string v2, "volume_level"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    const-string p2, "routines_ringtone_title"

    .line 67
    invoke-virtual {p3, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "silent"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 70
    :cond_3
    sget p0, Lcom/android/settings/R$string;->sec_notification_sound_silent:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_4
    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_1

    .line 82
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 83
    invoke-virtual {p0, p5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float/2addr p1, p4

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/16 p3, 0xb

    .line 77
    invoke-virtual {p0, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float/2addr p1, p4

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_2
        -0x2e2ff452 -> :sswitch_1
        0x2b6d34ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 1

    const-string v0, "routines_set_bixby_volume"

    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0

    :cond_0
    const-string v0, "routines_set_ringtone"

    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "audio"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 99
    invoke-virtual {v0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0

    .line 103
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object p0

    return-object p0
.end method

.method public onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 3

    const-string p0, "audio"

    .line 108
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 110
    sget-object p4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    .line 111
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p5, "routines_set_ringtone"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p5, "routines_set_call_volume"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string p5, "routines_set_bixby_volume"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const-string p2, "volume_level"

    const/4 p5, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p0, "routines_ringtone_title"

    .line 113
    invoke-virtual {p3, p0, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "routines_ringtone_uri"

    .line 114
    invoke-virtual {p3, p2, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "routines_ringtone_path"

    .line 115
    invoke-virtual {p3, v1, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "silent"

    .line 117
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 119
    invoke-static {p1, v0, p5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 120
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    return-void

    .line 124
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 128
    :cond_4
    invoke-static {p3}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 129
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_INVALID_PARAMETER:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {p0, p1, p5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    return-void

    .line 132
    :cond_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 133
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto :goto_2

    .line 125
    :cond_6
    :goto_1
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_INVALID_PARAMETER:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {p0, p1, p5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    return-void

    .line 143
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 142
    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 144
    invoke-virtual {p0, v1, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 145
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto :goto_2

    :pswitch_2
    const/16 p1, 0xb

    .line 137
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 136
    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    .line 138
    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 139
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_2
        -0x2e2ff452 -> :sswitch_1
        0x2b6d34ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V
    .locals 2

    const-string p0, "audio"

    .line 152
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "routines_set_ringtone"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p4, "routines_set_call_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p5

    goto :goto_0

    :sswitch_2
    const-string p4, "routines_set_bixby_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const-string p2, "volume_level_recovery"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "routines_ringtone_uri"

    const/4 p2, 0x0

    .line 157
    invoke-virtual {p3, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 160
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 162
    :cond_3
    invoke-static {p1, p5, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 171
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 170
    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 172
    invoke-virtual {p0, v0, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    :pswitch_2
    const/16 p1, 0xb

    .line 166
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    .line 165
    invoke-virtual {p3, p2, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    .line 167
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_2
        -0x2e2ff452 -> :sswitch_1
        0x2b6d34ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
