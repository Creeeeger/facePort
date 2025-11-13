.class public Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final CMD_CHECK_MOBILEDATA_SPEED:I = 0x1

.field private static final CMD_CHECK_MOBILEDATA_SPEED_TIME_INTERVAL:I = 0x4e20

.field private static final DBG:Z

.field private static final PREFERENCE_PREFIX:Ljava/lang/String; = "DownstreamBandwidth : "

.field private static final TAG:Ljava/lang/String; = "WifiApSmartPrioritySpeedController"


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

.field private mWifiApSmartPrioritySpeedPreference:Landroidx/preference/Preference;


# direct methods
.method public static bridge synthetic -$$Nest$mrefreshTitle(Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->refreshTitle()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;-><init>(Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    return-void
.end method

.method private getLinkDownStreamBandwidthMbps()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const-string v1, "0.00"

    const-string v2, "WifiApSmartPrioritySpeedController"

    if-nez v0, :cond_0

    const-string p0, "activeNetwork is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "nc is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadSpeed in Mbps:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "downloadSpeed in Mbps :"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Mbps"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private refreshTitle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mWifiApSmartPrioritySpeedPreference:Landroidx/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownstreamBandwidth : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->getLinkDownStreamBandwidthMbps()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->refreshTitle()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
