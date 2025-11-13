.class public final Lcom/android/settings/wifi/factory/WifiFeatureProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

.field public mTetheringManager:Landroid/net/TetheringManager;

.field public mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    const-string v4, "WifiFeatureProvider"

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    const-class v5, Landroid/net/TetheringManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TetheringManager;

    iput-object v3, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getTetheringManager():"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/TetheringManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWifiHotspotRepository():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    return-object p0
.end method

.method public final verboseLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/factory/WifiVerboseLogging;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    iget-boolean p0, p0, Lcom/android/settings/wifi/factory/WifiVerboseLogging;->mIsVerboseLoggingEnabled:Z

    if-eqz p0, :cond_2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
