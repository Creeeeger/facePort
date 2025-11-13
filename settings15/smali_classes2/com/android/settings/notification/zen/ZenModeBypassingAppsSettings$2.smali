.class public final Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getAppsBypassingDndCount(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "getAppsBypassingDndCount"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_0
    const v2, 0x8dd9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object v2, v4, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "zen_selected_apps_bypass_dnd_allowed"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, p1

    :goto_1
    const p1, 0x8de5

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x0

    goto :goto_3

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v4, "0"

    iput-object v4, v3, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object p1, v3, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    :goto_2
    move-object p1, v3

    goto :goto_3

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v4, "1"

    iput-object v4, v3, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object p1, v3, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    goto :goto_2

    :goto_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v0, v2, :cond_3

    const p1, 0x8de4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    iput-object p1, v1, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method
