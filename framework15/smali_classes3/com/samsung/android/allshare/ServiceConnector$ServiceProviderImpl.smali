.class Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;
.super Lcom/samsung/android/allshare/ServiceProvider;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectorGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceProviderImpl"
.end annotation


# instance fields
.field blacklist mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

.field blacklist mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

.field blacklist mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

.field blacklist mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceProvider;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    new-instance v0, Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-direct {v0, p2}, Lcom/samsung/android/allshare/DeviceFinderImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECDownloader;

    invoke-direct {v0, p2}, Lcom/samsung/android/allshare/extension/SECDownloader;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    return-void
.end method


# virtual methods
.method public blacklist getAllShareConnector()Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    return-object v0
.end method

.method public bridge synthetic whitelist getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinderImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

    return-object v0
.end method

.method public whitelist getDownloader()Lcom/samsung/android/allshare/extension/SECDownloader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    return-object v0
.end method

.method public blacklist getServiceState()Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public blacklist getServiceVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    if-nez v0, :cond_0

    const-string v0, "ServiceProviderImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-void
.end method
