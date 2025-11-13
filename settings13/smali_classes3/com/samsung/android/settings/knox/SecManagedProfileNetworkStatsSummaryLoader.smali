.class public Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;
.super Landroid/os/AsyncTask;
.source "SecManagedProfileNetworkStatsSummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;,
        Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/NetworkTemplate;",
        "Ljava/lang/String;",
        "Landroid/app/usage/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;

.field private final mEnd:J

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private final mStart:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->listener:Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;

    .line 25
    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->-$$Nest$fgetmStart(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mStart:J

    .line 26
    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->-$$Nest$fgetmEnd(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mEnd:J

    .line 27
    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->-$$Nest$fgetmNetworkTemplate(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)Landroid/net/NetworkTemplate;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 28
    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "netstats"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/NetworkTemplate;)Landroid/app/usage/NetworkStats;
    .locals 7

    const-string p1, "SecManagedProfileNetworkStatsSummaryLoader "

    const-string v0, "Do In Background..."

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
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

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Landroid/net/NetworkTemplate;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->doInBackground([Landroid/net/NetworkTemplate;)Landroid/app/usage/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/app/usage/NetworkStats;)V
    .locals 2

    const-string v0, "SecManagedProfileNetworkStatsSummaryLoader "

    const-string v1, "Do PostExecute..."

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->listener:Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;->setNetworkStatsData(Landroid/app/usage/NetworkStats;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Landroid/app/usage/NetworkStats;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;->onPostExecute(Landroid/app/usage/NetworkStats;)V

    return-void
.end method
