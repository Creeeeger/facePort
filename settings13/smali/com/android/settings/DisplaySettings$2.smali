.class Lcom/android/settings/DisplaySettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 435
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v0

    .line 439
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x1d10

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 441
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenZoomInfo(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 447
    :cond_1
    aget v0, v0, v1

    .line 448
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v3, 0x1d06

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 450
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 451
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110128

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x1089

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 457
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 459
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x10d0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 463
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 465
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_4
    invoke-static {p1, v1}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v0

    const/16 v2, 0x28ab

    if-eqz v0, :cond_5

    .line 469
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 470
    invoke-static {p1, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v3

    .line 469
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v0, 0x0

    .line 474
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 476
    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v2

    .line 475
    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 477
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v0

    :goto_3
    if-eqz v2, :cond_9

    .line 484
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter_adaptive_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 487
    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v4, 0x9d08

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 488
    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 489
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter_scheduled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 494
    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v4, 0x1cf3

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 495
    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v3

    .line 496
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v2, v1, :cond_9

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "blue_light_filter_type"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 501
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x1081

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 502
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 503
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object p0
.end method
