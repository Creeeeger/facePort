.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "LockScreenNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 434
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    .line 438
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_minimizing_notification"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, ""

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "Hide content & icons only"

    goto :goto_1

    :cond_2
    const-string v0, "Icons only"

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "Hide content (Detailed + Hide)"

    goto :goto_1

    :cond_4
    const-string v0, "Detailed"

    .line 460
    :goto_1
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v5, 0x232c

    invoke-direct {v1, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 461
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_notifications_option"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    move v3, v2

    .line 465
    :cond_5
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x2338

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v3, :cond_6

    const-string v1, "1"

    goto :goto_2

    :cond_6
    const-string v1, "0"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 466
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_silent_notifications"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_3

    :cond_7
    const-string v4, "Alerting and silent notifications"

    goto :goto_3

    :cond_8
    const-string v4, "Alerting notifications only"

    .line 477
    :goto_3
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v0, 0x2348

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 478
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
