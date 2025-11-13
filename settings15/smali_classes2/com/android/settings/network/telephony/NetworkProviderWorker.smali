.class public Lcom/android/settings/network/telephony/NetworkProviderWorker;
.super Lcom/android/settings/wifi/slice/WifiScanWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
.implements Lcom/android/settings/network/InternetUpdater$InternetChangeListener;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field public final mConnectionChangeReceiver:Lcom/android/settings/network/telephony/NetworkProviderWorker$1;

.field public final mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

.field public final mContext:Landroid/content/Context;

.field public final mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field public mDefaultDataSubId:I

.field public final mHandler:Landroid/os/Handler;

.field public mInternetType:I

.field public mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

.field public final mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

.field public final mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field final mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;

.field public mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    new-instance p2, Lcom/android/settings/network/telephony/NetworkProviderWorker$1;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker$1;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectionChangeReceiver:Lcom/android/settings/network/telephony/NetworkProviderWorker$1;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    new-instance p2, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/network/telephony/NetworkProviderWorker;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getDefaultDataSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Init, SubId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkProviderWorker"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p2, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;

    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    new-instance p2, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    new-instance p2, Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/telephony/DataConnectivityListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    new-instance p2, Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    new-instance p2, Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Lcom/android/settings/network/InternetUpdater;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$InternetChangeListener;)V

    iget p1, p2, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->close()V

    return-void
.end method

.method public final getApRowCount()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 0

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDataSubscriptionId()I
    .locals 0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public final onAirplaneModeChanged(Z)V
    .locals 1

    const-string p1, "NetworkProviderWorker"

    const-string v0, "onAirplaneModeChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onDataConnectivityChange()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onDataConnectivityChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onInternetTypeChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    :cond_3
    return-void
.end method

.method public final onMobileDataEnabledChange()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onMobileDataEnabledChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onSignalStrengthChanged()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onSignalStrengthChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onSlicePinned()V
    .locals 4

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onSlicePinned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->register(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    iget-object v1, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->resume()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectionChangeReceiver:Lcom/android/settings/network/telephony/NetworkProviderWorker$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onSlicePinned()V

    return-void
.end method

.method public final onSliceUnpinned()V
    .locals 4

    const-string v0, "onSliceUnpinned"

    const-string v1, "NetworkProviderWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "DataContentObserver: unregister"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    iget-object v1, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->pause()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectionChangeReceiver:Lcom/android/settings/network/telephony/NetworkProviderWorker$1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onSliceUnpinned()V

    return-void
.end method

.method public final onSubscriptionsChanged()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateListener$1()V

    return-void
.end method

.method public final updateListener$1()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getDefaultDataSubscriptionId()I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    const-string v2, "NetworkProviderWorker"

    if-ne v1, v0, :cond_0

    const-string p0, "DDS: no change"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DDS: defaultDataSubId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "DataContentObserver: unregister"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderTelephonyCallback;

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->register(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method
