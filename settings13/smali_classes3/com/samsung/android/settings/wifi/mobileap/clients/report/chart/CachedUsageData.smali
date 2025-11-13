.class public abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;
.super Ljava/lang/Object;
.source "CachedUsageData.java"


# instance fields
.field mDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageData;",
            ">;"
        }
    .end annotation
.end field

.field mLastUpdatedTime:J


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->mLastUpdatedTime:J

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->mDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->mDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageData;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageData;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageData;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->mDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->mLastUpdatedTime:J

    return-wide v0
.end method
