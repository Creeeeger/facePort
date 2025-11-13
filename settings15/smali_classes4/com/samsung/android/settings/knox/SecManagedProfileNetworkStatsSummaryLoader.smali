.class public final Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final listener:Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;

.field public final mEnd:J

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field public final mStart:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->listener:Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;

    iget-wide v0, p1, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mStart:J

    iput-wide v0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mStart:J

    iget-wide v0, p1, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mEnd:J

    iput-wide v0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mEnd:J

    iget-object p2, p1, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "netstats"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, [Landroid/net/NetworkTemplate;

    const-string p1, "SecManagedProfileNetworkStatsSummaryLoader "

    const-string v0, "Do In Background..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-wide v3, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mStart:J

    iget-wide v5, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mEnd:J

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/app/usage/NetworkStats;

    const-string v0, "SecManagedProfileNetworkStatsSummaryLoader "

    const-string v1, "Do PostExecute..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->listener:Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;->setNetworkStatsData(Landroid/app/usage/NetworkStats;)V

    return-void
.end method
