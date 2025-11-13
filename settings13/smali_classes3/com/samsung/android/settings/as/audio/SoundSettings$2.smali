.class Lcom/samsung/android/settings/as/audio/SoundSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0xfab

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 393
    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 395
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 400
    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$smisInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 403
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v3, 0x1004

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 404
    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0xfac

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 409
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->getVibrationPattern(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 410
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x76c0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 414
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->getNotificationVibrationPattern(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 415
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0xfae

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v2, 0x2

    .line 419
    invoke-static {p1, v2}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "audio"

    .line 423
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 425
    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v4, 0x2591

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 427
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 426
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v3, 0x27e3

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 433
    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$smgetSystemSoundThemeLog(Landroid/content/Context;)I

    move-result v3

    .line 432
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 434
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "multisound_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ":"

    .line 443
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 444
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 445
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 448
    :cond_1
    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v7, 0x9093

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 450
    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v5

    .line 451
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "multisound_devicetype"

    const/4 v3, -0x1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_4

    .line 460
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v3, 0x9094

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 461
    :goto_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    .line 462
    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 463
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method
