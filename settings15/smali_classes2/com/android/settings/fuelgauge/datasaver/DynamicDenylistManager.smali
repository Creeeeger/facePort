.class public final Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final PREF_KEY_MANUAL_DENYLIST_SYNCED:Ljava/lang/String; = "manual_denylist_synced"

.field public static sInstance:Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/NetworkPolicyManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "manual_denylist_synced"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "DynamicDenylistManager"

    const-string p1, "syncPolicyIfNeeded() ignore synced manual denylist"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    array-length v2, p2

    if-eqz v2, :cond_1

    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method public static getDenylistAllUids(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "manual_denylist_synced"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "getDenylistAllUids() unexpected format for "

    const-string v3, "DynamicDenylistManager"

    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;
    .locals 3

    const-class v0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->sInstance:Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;-><init>(Landroid/content/Context;Landroid/net/NetworkPolicyManager;)V

    sput-object v1, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->sInstance:Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->sInstance:Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getDynamicDenylistPref()Landroid/content/SharedPreferences;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mContext:Landroid/content/Context;

    const-string v0, "dynamic_denylist_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getManualDenylistPref()Landroid/content/SharedPreferences;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mContext:Landroid/content/Context;

    const-string v0, "manual_denylist_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final resetDenylistIfNeeded(Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "resetDenylistIfNeeded: "

    if-nez p2, :cond_0

    const-string p2, "com.android.settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "DynamicDenylistManager"

    const-string p1, "resetDenylistIfNeeded: invalid conditions"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-eqz v1, :cond_2

    const-string v1, "DynamicDenylistManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p2, v2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getDenylistAllUids(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4, v3, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "DynamicDenylistManager"

    const-string v0, "resetDenylistIfNeeded: there is no valid UIDs"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "DynamicDenylistManager"

    const-string p2, "clearSharedPreferences()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getDynamicDenylistPref()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setUidPolicyLocked(II)V
    .locals 3

    const-string v0, "DynamicDenylistManager"

    const-string v1, "setUidPolicyLocked: uid="

    const-string v2, " policy="

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1, p2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getManualDenylistPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getDynamicDenylistPref()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
