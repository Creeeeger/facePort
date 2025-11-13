.class public final Lcom/android/settings/notification/history/HistoryLoader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final channelList:Ljava/util/List;

.field public final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field public final mContext:Landroid/content/Context;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "INSIGNIFICANT"

    const-string v1, "edge_lighting_chnnel_id"

    const-string v2, "ZEN_ONGOING"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/notification/history/HistoryLoader;->channelList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/notification/history/HistoryLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/history/HistoryLoader;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iput-object p3, p0, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method
