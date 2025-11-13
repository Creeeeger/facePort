.class public final Lcom/android/settings/wifi/repository/WifiHotspotRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sSpeedMap:Ljava/util/Map;


# instance fields
.field public m5gAvailable:Landroidx/lifecycle/MutableLiveData;

.field public m6gAvailable:Landroidx/lifecycle/MutableLiveData;

.field public mActiveCountryCodeChangedCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;

.field public final mAppContext:Landroid/content/Context;

.field public final mBand5g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

.field public final mBand6g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

.field public mIs5gBandSupported:Ljava/lang/Boolean;

.field public mIs6gBandSupported:Ljava/lang/Boolean;

.field mIsConfigShowSpeed:Ljava/lang/Boolean;

.field public mIsDualBand:Ljava/lang/Boolean;

.field mIsRestarting:Z

.field public mIsSpeedFeatureAvailable:Ljava/lang/Boolean;

.field public mLastPassword:Ljava/lang/String;

.field public final mLastPasswordListener:Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;

.field mRestarting:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field public mSecurityType:Landroidx/lifecycle/MutableLiveData;

.field mSoftApCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;

.field public mSpeedType:Landroidx/lifecycle/MutableLiveData;

.field mStartTetheringCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;

.field public final mTetheringManager:Landroid/net/TetheringManager;

.field mWifiApState:I

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->sSpeedMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/TetheringManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;-><init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mLastPasswordListener:Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;

    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand5g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand6g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;-><init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSoftApCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiApState:I

    iput-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSoftApCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    const-string v1, "WifiHotspotRepository"

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final generatePassword()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mLastPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mLastPassword:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public generatePassword(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->generatePassword()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getRestarting()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mRestarting:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mRestarting:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsRestarting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mRestarting:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSecurityType()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSecurityType:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->startAutoRefresh()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSecurityType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->updateSecurityType()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSecurityType():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSecurityType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSecurityType:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSpeedType()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->startAutoRefresh()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->updateSpeedType()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSpeedType():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final is5GHzBandSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs5gBandSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs5gBandSupported:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is5GHzBandSupported():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs5gBandSupported:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs5gBandSupported:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final is5gAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand5g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    iget-boolean v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsReady:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5GHzBandSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isChannelAvailable(Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;)Z

    :cond_0
    iget-boolean p0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasCapability:Z

    goto :goto_0

    :cond_1
    iget-boolean p0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasUsableChannels:Z

    :goto_0
    return p0
.end method

.method public final is6GHzBandSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs6gBandSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is6GHzBandSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs6gBandSupported:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is6GHzBandSupported():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs6gBandSupported:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIs6gBandSupported:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final is6gAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand6g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    iget-boolean v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsReady:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6GHzBandSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isChannelAvailable(Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;)Z

    :cond_0
    iget-boolean p0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasCapability:Z

    goto :goto_0

    :cond_1
    iget-boolean p0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasUsableChannels:Z

    :goto_0
    return p0
.end method

.method public isChannelAvailable(Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;)Z
    .locals 6

    const-string v0, "WifiHotspotRepository"

    const-string v1, "isChannelAvailable(), band:"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->band:I

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiManager;->getUsableChannels(II)Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->band:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    iput-boolean p0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasUsableChannels:Z

    iput-boolean v2, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Querying usable SAP channels is unsupported, band:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->band:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasUsableChannels:Z

    iput-boolean v3, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    goto :goto_1

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Querying usable SAP channels failed, band:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->band:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasUsableChannels:Z

    iput-boolean v3, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    :goto_1
    iput-boolean v3, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsReady:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isChannelAvailable(), "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasCapability:Z

    goto :goto_2

    :cond_1
    iget-boolean p0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasUsableChannels:Z

    :goto_2
    return p0
.end method

.method public final isDualBand()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsDualBand:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsDualBand:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDualBand():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsDualBand:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsDualBand:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSpeedFeatureAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsSpeedFeatureAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsConfigShowSpeed:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsConfigShowSpeed:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isConfigShowSpeed():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsConfigShowSpeed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsConfigShowSpeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsSpeedFeatureAvailable:Ljava/lang/Boolean;

    const-string p0, "isSpeedFeatureAvailable():false, isConfigShowSpeed():false"

    invoke-static {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5GHzBandSupported()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsSpeedFeatureAvailable:Ljava/lang/Boolean;

    const-string p0, "isSpeedFeatureAvailable():false, 5 GHz band is not supported on this device"

    invoke-static {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    return v1

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsSpeedFeatureAvailable:Ljava/lang/Boolean;

    const-string p0, "isSpeedFeatureAvailable():true"

    invoke-static {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final refresh()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->updateSecurityType()V

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6gAvailable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5gAvailable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->updateSpeedType()V

    return-void
.end method

.method public restartTetheringIfNeeded()V
    .locals 4

    iget v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiApState:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "restartTetheringIfNeeded()"

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setRestarting(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRestarting(), isRestarting:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsRestarting:Z

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mRestarting:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsRestarting:Z

    if-eqz v0, :cond_0

    const-string p0, "WifiHotspotRepository"

    const-string p1, "Skip setSoftApConfiguration because hotspot is restarting."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->refresh()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->restartTetheringIfNeeded()V

    return-void
.end method

.method public final startAutoRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mActiveCountryCodeChangedCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "startMonitorSoftApConfiguration()"

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;-><init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mActiveCountryCodeChangedCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mActiveCountryCodeChangedCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerActiveCountryCodeChangedCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;)V

    return-void
.end method

.method public updateCapabilityChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand5g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    iget-boolean v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    const-string v2, "updateCapabilityChanged(), "

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5gAvailable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand6g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    iget-boolean v3, v1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6gAvailable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsUnsupported:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->updateSpeedType()V

    :cond_5
    return-void
.end method

.method public final updateSecurityType()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSecurityType:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSecurityType(), securityType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSecurityType:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSpeedType()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateSpeedType(), getBand():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5gAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    and-int/lit8 v0, v0, -0x3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6gAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    and-int/lit8 v0, v0, -0x5

    :cond_3
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isDualBand()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5gAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_6

    const/4 v1, 0x2

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateSpeedType(), keyBand:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->sSpeedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
