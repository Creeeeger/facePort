.class Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "NotificationReminderTimeIntervalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 129
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "time_key"

    const/16 v1, 0xb4

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v0, 0x0

    const v2, 0x8e40

    if-eq p1, v1, :cond_4

    const/16 v1, 0x12c

    if-eq p1, v1, :cond_3

    const/16 v1, 0x258

    if-eq p1, v1, :cond_2

    const/16 v1, 0x384

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const-string v0, "15 minutes"

    .line 154
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const-string v0, "10 minutes"

    .line 150
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_3
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const-string v0, "5 minutes"

    .line 146
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_4
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const-string v0, "3 minutes"

    .line 142
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
