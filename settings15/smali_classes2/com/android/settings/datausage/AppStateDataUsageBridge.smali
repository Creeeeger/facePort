.class public final Lcom/android/settings/datausage/AppStateDataUsageBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p3, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-void
.end method


# virtual methods
.method public final loadAllExtraInfo()V
    .locals 15

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    new-instance v5, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v8, v7, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v8

    array-length v10, v8

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_0

    aget v12, v8, v11

    iget-object v13, v7, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v12, v9}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    iget-object v8, v7, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v9, :cond_1

    move v6, v8

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    iget-object v9, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v7, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v10, v8}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v10

    array-length v11, v10

    move v12, v2

    :goto_3
    if-ge v12, v11, :cond_2

    aget v13, v10, v12

    iget-object v14, v7, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v13, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    iget-object v10, v7, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ne v10, v8, :cond_3

    iget-object v7, v7, Lcom/android/settings/datausage/DataSaverBackend;->mDynamicDenylistManager:Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move v8, v2

    :goto_4
    invoke-direct {v5, v6, v8}, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;-><init>(ZZ)V

    iput-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 8

    new-instance p2, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-object p0, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v1

    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_2

    aget v6, v1, v5

    iget-object v7, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mDynamicDenylistManager:Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v3, v2

    :cond_3
    invoke-direct {p2, v0, v3}, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;-><init>(ZZ)V

    iput-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
