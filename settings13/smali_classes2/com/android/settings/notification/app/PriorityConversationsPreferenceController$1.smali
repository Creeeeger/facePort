.class Lcom/android/settings/notification/app/PriorityConversationsPreferenceController$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "PriorityConversationsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
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

    .line 91
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :try_start_0
    sget-object p1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PriorityConversationsPreferenceController"

    const-string v1, "Error calling NoMan"

    .line 96
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 98
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v1, 0x8e34

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
