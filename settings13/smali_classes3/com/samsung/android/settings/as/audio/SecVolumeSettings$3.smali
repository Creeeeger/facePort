.class Lcom/samsung/android/settings/as/audio/SecVolumeSettings$3;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "SecVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 413
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "audio"

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 417
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0xfa7

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v1, 0x2

    .line 419
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 420
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0xfa8

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v1, 0x3

    .line 424
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 423
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 425
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0xfa9

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v1, 0x5

    .line 429
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 430
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0xfaa

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 434
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 433
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 435
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x1c56

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/16 v1, 0xb

    .line 439
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 438
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 440
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
