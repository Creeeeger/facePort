.class public Lcom/android/settings/network/InternetResetHelper;
.super Ljava/lang/Object;
.source "InternetResetHelper.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;


# instance fields
.field protected mConnectivitySubsystemsRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

.field protected final mContext:Landroid/content/Context;

.field protected mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

.field protected mIsRecoveryReady:Z

.field protected mIsWifiReady:Z

.field protected mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

.field protected mResettingPreference:Landroidx/preference/Preference;

.field protected final mResumeRunnable:Ljava/lang/Runnable;

.field protected final mTimeoutRunnable:Ljava/lang/Runnable;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiNetworkPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWifiStateFilter:Landroid/content/IntentFilter;

.field protected final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mWifiTogglePreferences:Landroidx/preference/Preference;

.field protected mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$gaGvTJqN8TKYvI281arLlaV8Tr4(Lcom/android/settings/network/InternetResetHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/InternetResetHelper;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$odMUwjJi4ME6hJkeQING_DL2H60(Lcom/android/settings/network/InternetResetHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/InternetResetHelper;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/android/settings/network/InternetResetHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetResetHelper$1;-><init>(Lcom/android/settings/network/InternetResetHelper;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/InternetResetHelper;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mResumeRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/InternetResetHelper;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 88
    iput-object p1, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/settingslib/utils/HandlerInjector;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/utils/HandlerInjector;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    .line 90
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternetResetHelper{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWorkerThread:Landroid/os/HandlerThread;

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mWorkerThread:Landroid/os/HandlerThread;

    .line 98
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mConnectivitySubsystemsRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsRecoveryReady:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    return-void
.end method


# virtual methods
.method public addWifiNetworkPreference(Landroidx/preference/PreferenceCategory;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/HandlerInjector;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/HandlerInjector;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onSubsystemRestartOperationBegin()V
    .locals 1

    const-string p0, "InternetResetHelper"

    const-string v0, "The connectivity subsystem is starting for recovery."

    .line 129
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSubsystemRestartOperationEnd()V
    .locals 3

    const-string v0, "InternetResetHelper"

    const-string v1, "The connectivity subsystem is done for recovery."

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsRecoveryReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsRecoveryReady:Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/utils/HandlerInjector;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mConnectivitySubsystemsRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-virtual {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isRecoveryAvailable()Z

    move-result v0

    const-string v1, "InternetResetHelper"

    if-nez v0, :cond_0

    const-string p0, "The connectivity subsystem is not available to restart."

    .line 232
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "The connectivity subsystem is restarting for recovery."

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->suspendPreferences()V

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsRecoveryReady:Z

    .line 239
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    .line 240
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/utils/HandlerInjector;->postDelayed(Ljava/lang/Runnable;J)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mConnectivitySubsystemsRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->triggerSubsystemRestart(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V

    return-void
.end method

.method protected resumePreferences()V
    .locals 5

    .line 206
    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsRecoveryReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "InternetResetHelper"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    if-eqz v0, :cond_0

    const-string v0, "Resume the Mobile Network controller"

    .line 207
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/NetworkMobileProviderController;->hidePreference(ZZ)V

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    const-string v0, "Resume the Wi-Fi preferences"

    .line 211
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    .line 214
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 217
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsRecoveryReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object v2, p0, Lcom/android/settings/network/InternetResetHelper;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/utils/HandlerInjector;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    const-string v0, "Resume the Resetting preference"

    .line 220
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public setMobileNetworkController(Lcom/android/settings/network/NetworkMobileProviderController;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    return-void
.end method

.method public setResettingPreference(Landroidx/preference/Preference;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public setWifiTogglePreference(Landroidx/preference/Preference;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    return-void
.end method

.method protected suspendPreferences()V
    .locals 4

    const-string v0, "InternetResetHelper"

    const-string v1, "Suspend the subsystem preferences"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, v1, v1}, Lcom/android/settings/network/NetworkMobileProviderController;->hidePreference(ZZ)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 196
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 197
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_3

    .line 200
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method protected updateWifiStateChange()V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InternetResetHelper"

    const-string v1, "The Wi-Fi subsystem is done for recovery."

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mHandlerInjector:Lcom/android/settingslib/utils/HandlerInjector;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/utils/HandlerInjector;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
