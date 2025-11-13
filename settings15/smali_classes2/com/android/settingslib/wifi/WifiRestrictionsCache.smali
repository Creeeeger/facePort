.class public final Lcom/android/settingslib/wifi/WifiRestrictionsCache;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field protected static final sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/wifi/WifiRestrictionsCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserManager:Landroid/os/UserManager;

.field protected mUserRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->sInstances:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mRestrictions:Ljava/util/Map;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mUserManager:Landroid/os/UserManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mUserRestrictions:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/WifiRestrictionsCache;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    sget-object v1, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->sInstances:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiRestrictionsCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final isConfigWifiAllowed()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "no_config_wifi"

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mUserRestrictions:Landroid/os/Bundle;

    if-nez v1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mRestrictions:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mRestrictions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mRestrictions:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mUserRestrictions:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiRestrictionsCache;->mRestrictions:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
