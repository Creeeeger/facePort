.class public final Lcom/android/settings/network/CarrierConfigCache;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field protected static sCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field protected static final sCarrierConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static sInstance:Lcom/android/settings/network/CarrierConfigCache;

.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sTestInstances:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/network/CarrierConfigCache;->sInstanceLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/CarrierConfigCache;->sCarrierConfigs:Ljava/util/Map;

    return-void
.end method

.method public static getConfig()Landroid/os/PersistableBundle;
    .locals 1

    sget-object v0, Lcom/android/settings/network/CarrierConfigCache;->sCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 5

    const-string v0, "Could not get carrier config, subId:"

    sget-object v1, Lcom/android/settings/network/CarrierConfigCache;->sCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/android/settings/network/CarrierConfigCache;->sCarrierConfigs:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/settings/network/CarrierConfigCache;->sCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "CarrConfCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v3

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;
    .locals 4

    const-string v0, "The context owner try to use a test instance:"

    sget-object v1, Lcom/android/settings/network/CarrierConfigCache;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/settings/network/CarrierConfigCache;->sTestInstances:Ljava/util/Map;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/network/CarrierConfigCache;->sTestInstances:Ljava/util/Map;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/CarrierConfigCache;

    const-string v2, "CarrConfCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/network/CarrierConfigCache;->sInstance:Lcom/android/settings/network/CarrierConfigCache;

    if-eqz v0, :cond_1

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/settings/network/CarrierConfigCache;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/network/CarrierConfigCache;->sInstance:Lcom/android/settings/network/CarrierConfigCache;

    new-instance v0, Lcom/android/settings/network/CarrierConfigCache$CarrierConfigChangeReceiver;

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    sput-object v2, Lcom/android/settings/network/CarrierConfigCache;->sCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget-object p0, Lcom/android/settings/network/CarrierConfigCache;->sInstance:Lcom/android/settings/network/CarrierConfigCache;

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static hasCarrierConfigManager()Z
    .locals 1

    sget-object v0, Lcom/android/settings/network/CarrierConfigCache;->sCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setTestInstance(Landroid/content/Context;Lcom/android/settings/network/CarrierConfigCache;)V
    .locals 4

    const-string v0, "Try to set a test instance by context:"

    sget-object v1, Lcom/android/settings/network/CarrierConfigCache;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/settings/network/CarrierConfigCache;->sTestInstances:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/android/settings/network/CarrierConfigCache;->sTestInstances:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "CarrConfCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/network/CarrierConfigCache;->sTestInstances:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
