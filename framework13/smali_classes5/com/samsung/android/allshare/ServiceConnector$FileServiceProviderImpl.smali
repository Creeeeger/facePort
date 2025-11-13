.class Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;
.super Lcom/samsung/android/allshare/file/FileServiceProvider;
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
    name = "FileServiceProviderImpl"
.end annotation


# instance fields
.field blacklist mFileDeviceFinder:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

.field blacklist mFileServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

.field blacklist mFileServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 625
    invoke-direct {p0}, Lcom/samsung/android/allshare/file/FileServiceProvider;-><init>()V

    .line 619
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileDeviceFinder:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    .line 623
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 626
    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 627
    new-instance v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-direct {v0, p2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileDeviceFinder:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    .line 628
    return-void
.end method


# virtual methods
.method public blacklist getAllShareConnector()Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    return-object v0
.end method

.method public bridge synthetic whitelist getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->getDeviceFinder()Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceFinder()Lcom/samsung/android/allshare/FileDeviceFinderImpl;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileDeviceFinder:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist getDeviceFinder()Lcom/samsung/android/allshare/file/FileDeviceFinder;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->getDeviceFinder()Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDownloader()Lcom/samsung/android/allshare/extension/SECDownloader;
    .locals 1

    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getServiceState()Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public blacklist getServiceVersion()Ljava/lang/String;
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    if-nez v0, :cond_0

    .line 651
    const-string v0, "FileServiceProviderImpl"

    const-string v1, "Connection FAIL: AllShare File Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, ""

    return-object v0

    .line 656
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 661
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;->mFileServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 662
    return-void
.end method
