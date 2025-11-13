.class public final synthetic Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatusMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCurrentSaLogStatusMap:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCriticalCount:I

    iget v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mWarningCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatusMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-lez v0, :cond_0

    const-string v0, "2"

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    const-string v1, "DB"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;Ljava/util/HashMap;)V

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v0, "SL"

    const-string v1, "3"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SA"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GA"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FMM"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DP"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GPP"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SU"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GPSU"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2348

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2349

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCurrentSaLogStatusMap:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCurrentSaLogStatusMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatusMap:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    return-void
.end method
