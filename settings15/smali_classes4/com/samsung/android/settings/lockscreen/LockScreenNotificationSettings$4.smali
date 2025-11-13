.class public final Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$4;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_minimizing_notification"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v6, ""

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_1

    move-object v0, v6

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

    :goto_1
    const/16 v1, 0x232c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object v1, v7, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_silent_notifications"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v6, "Alerting and silent notifications"

    goto :goto_2

    :cond_6
    const-string v6, "Alerting notifications only"

    :goto_2
    const/16 v0, 0x2348

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x232b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v6, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object v1, v6, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz v0, :cond_8

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const-string p1, "Show Content"

    goto :goto_4

    :cond_8
    :goto_3
    const-string p1, "Hide Content"

    :goto_4
    const/16 v0, 0x2349

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
