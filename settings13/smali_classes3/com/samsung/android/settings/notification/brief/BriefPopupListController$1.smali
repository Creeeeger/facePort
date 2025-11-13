.class Lcom/samsung/android/settings/notification/brief/BriefPopupListController$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "BriefPopupListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopupListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 135
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

    .line 139
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 142
    new-instance v1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 143
    invoke-virtual {v1, p1}, Lcom/android/settings/notification/NotificationBackend;->getEdgeLightingEnabledList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v3, "AllAppsAvailable"

    .line 147
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "all"

    goto :goto_0

    :cond_1
    const-string v4, ","

    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v0, v2

    const-string v4, ""

    .line 155
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    array-length v2, v3

    .line 158
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v3, 0x8d06

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 161
    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v2, 0x8d07

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 165
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/settings/notification/NotificationBackend;->getBlockedAppCount(I)I

    move-result p1

    .line 169
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v1, 0x8d69

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 170
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
