.class public final Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/AccessPointController;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field public static final DEBUG:Z

.field public static final ICONS_WIFI:[[I

.field public static final ICONS_WIFI5:[[I

.field public static final ICONS_WIFI6:[[I

.field public static final ICONS_WIFI6E:[[I


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mConnectCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;

.field public mCurrentUser:I

.field public final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWifiApBleCallbacks:Ljava/util/ArrayList;

.field public mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "AccessPointController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    sget-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_FULL_ICONS:[I

    const v0, 0x7f08104b

    const v1, 0x7f081050

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const v1, 0x7f08104c

    const v2, 0x7f081051

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0x7f08104d

    const v3, 0x7f081052

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const v3, 0x7f08104e

    const v4, 0x7f081053

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const v4, 0x7f08104f

    const v5, 0x7f081054

    filled-new-array {v4, v5}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI:[[I

    const v0, 0x7f081064

    const v1, 0x7f081055

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const v1, 0x7f081065

    const v2, 0x7f081056

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0x7f081066

    const v3, 0x7f081057

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const v3, 0x7f081067

    const v4, 0x7f081058

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const v4, 0x7f081068

    const v5, 0x7f081059

    filled-new-array {v4, v5}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI5:[[I

    const v0, 0x7f081069

    const v1, 0x7f08105a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const v1, 0x7f08106a

    const v2, 0x7f08105b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0x7f08106b

    const v3, 0x7f08105c

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const v3, 0x7f08106c

    const v4, 0x7f08105d

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const v4, 0x7f08106d

    const v5, 0x7f08105e    # 1.8086E38f

    filled-new-array {v4, v5}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    const v0, 0x7f08106e

    const v1, 0x7f08105f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const v1, 0x7f08106f

    const v2, 0x7f081060

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0x7f081070

    const v3, 0x7f081061

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const v3, 0x7f081071

    const v4, 0x7f081062

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const v4, 0x7f081072

    const v5, 0x7f081063

    filled-new-array {v4, v5}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    return-void
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mConnectCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCurrentUser:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    new-instance p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;I)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p4, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->context:Landroid/content/Context;

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method public static isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final addAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final canConfigMobileData()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCurrentUser:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canConfigWifi()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCurrentUser:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "no_config_wifi"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCurrentUser:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const-string v2, "no_change_wifi_state"

    invoke-virtual {v0, v2, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final finalize()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final fireAccessPointsCallback(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;->onAccessPointsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getInstantHotspotIcon(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)I
    .locals 5

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    monitor-exit p1

    move p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getConnectionStrength()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v3

    :cond_5
    :goto_2
    sget-object p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->fireAccessPointsCallback(Ljava/util/List;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    return-object p0
.end method

.method public final onScanRequested()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;->onWifiScan(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onWifiEntriesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    return-void
.end method

.method public final onWifiEntriesChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;->onWifiScan(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    return-void
.end method

.method public final removeAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final scanForAccessPoints()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->fireAccessPointsCallback(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->fireAccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public final startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifi_start_connect_ssid"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifi_start_connect_security"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method
