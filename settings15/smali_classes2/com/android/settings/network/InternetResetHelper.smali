.class public final Lcom/android/settings/network/InternetResetHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

.field public mIsWifiReady:Z

.field public final mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

.field public final mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

.field public final mResettingPreference:Landroidx/preference/Preference;

.field public final mTimeoutRunnable:Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiNetworkPreferences:Ljava/util/List;

.field public final mWifiStateFilter:Landroid/content/IntentFilter;

.field public final mWifiStateReceiver:Lcom/android/settings/network/InternetResetHelper$1;

.field public final mWifiTogglePreferences:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/NetworkMobileProviderController;Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;Landroidx/preference/Preference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/InternetResetHelper$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/InternetResetHelper$1;-><init>(Lcom/android/settings/network/InternetResetHelper;)V

    iput-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Lcom/android/settings/network/InternetResetHelper$1;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    new-instance v1, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/InternetResetHelper;)V

    iput-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    iput-object p4, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p8, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    new-instance p3, Lcom/android/settingslib/utils/HandlerInjector;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/android/settingslib/utils/HandlerInjector;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    const-class p3, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.net.wifi.STATE_CHANGE"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateFilter:Landroid/content/IntentFilter;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sCallback:Ljava/lang/ref/WeakReference;

    sget-object p3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sInstance:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-direct {p3}, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;-><init>()V

    sput-object p3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sInstance:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object p3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    sget-object p3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sInstance:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    :goto_0
    iput-object p3, p0, Lcom/android/settings/network/InternetResetHelper;->mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object v0, v0, Lcom/android/settingslib/utils/HandlerInjector;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Lcom/android/settings/network/InternetResetHelper$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Lcom/android/settings/network/InternetResetHelper$1;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final resumePreferences()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    const-string v3, "InternetResetHelper"

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    if-eqz v4, :cond_0

    const-string v5, "Resume the Mobile Network controller"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2, v1}, Lcom/android/settings/network/NetworkMobileProviderController;->hidePreference(ZZ)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    if-eqz v4, :cond_1

    const-string v5, "Resume the Wi-Fi preferences"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v4, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object v0, v0, Lcom/android/settingslib/utils/HandlerInjector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_2

    const-string v0, "Resume the Resetting preference"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public final showResettingAndSendTimeoutChecks()V
    .locals 4

    const-string v0, "InternetResetHelper"

    const-string v1, "Suspend the subsystem preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/network/NetworkMobileProviderController;->hidePreference(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object v0, v0, Lcom/android/settingslib/utils/HandlerInjector;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateWifiStateChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InternetResetHelper"

    const-string v1, "The Wi-Fi subsystem is done for recovery."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    :cond_0
    return-void
.end method
