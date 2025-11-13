.class public final Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "time_key"

    const/16 v1, 0xb4

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    move p1, v1

    :cond_0
    const v0, 0x8e40

    if-eq p1, v1, :cond_4

    const/16 v1, 0x12c

    if-eq p1, v1, :cond_3

    const/16 v1, 0x258

    if-eq p1, v1, :cond_2

    const/16 v1, 0x384

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "15 minutes"

    iput-object v1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "10 minutes"

    iput-object v1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "5 minutes"

    iput-object v1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "3 minutes"

    iput-object v1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
