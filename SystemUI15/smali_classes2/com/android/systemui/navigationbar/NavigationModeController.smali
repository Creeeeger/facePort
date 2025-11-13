.class public final Lcom/android/systemui/navigationbar/NavigationModeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserContext:Landroid/content/Context;

.field public mDeviceProvisioned:Z

.field public final mDeviceProvisionedCallback:Lcom/android/systemui/navigationbar/NavigationModeController$1;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final mOverlayHistoryList:Ljava/util/ArrayList;

.field public final mOverlayManager:Landroid/content/om/IOverlayManager;

.field public final mReceiver:Lcom/android/systemui/navigationbar/NavigationModeController$3;

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationModeController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationModeController$1;-><init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationModeController$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationModeController$2;-><init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v5, Lcom/android/systemui/navigationbar/NavigationModeController$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/NavigationModeController$3;-><init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    move-object v6, p4

    invoke-virtual {v2, v4, p4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    const-string v2, "overlay"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "NavigationModeController"

    move-object/from16 v4, p6

    invoke-static {v4, v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    move-object/from16 v7, p8

    check-cast v7, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v8, 0x0

    if-nez v2, :cond_0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v4, v2, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, v5

    move-object v5, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SETUP_WIZARD:Z

    if-eqz v1, :cond_1

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    :cond_1
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationModeController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController$4;-><init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/navigationbar/NavigationModeController;->updateCurrentInteractionMode(Z)V

    return-void
.end method

.method public static getCurrentInteractionMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "getCurrentInteractionMode: mode="

    const-string v2, " contextUser="

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NavigationModeController"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isGestureDefault()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x23

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p2, "NavigationModeController:"

    const-string v0, "  mode="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    const-string p2, ", "

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "failed_to_fetch"

    :goto_0
    const-string v0, "  defaultOverlays="

    invoke-static {p1, v0, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "    contextUser="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    assetPaths="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p2

    array-length v1, p2

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/NavigationModeController;->dumpAssetPaths(Landroid/content/Context;)V

    :cond_1
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string v1, "  mOverlayHistoryList.size="

    invoke-static {v1, p2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    :goto_2
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final dumpAssetPaths(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  contextUser="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavigationModeController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "  assetPaths="

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getCurrentUserContext()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    const-string v2, "NavigationModeController"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentUserContext: contextUser="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentUser="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    return-object p0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Failed to create package context"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final makeOverlayHistory(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " UserId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OverlayPkg="

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " OverlayReason="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v1, v2, v3, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "%02d:%02d:%02d.%03d"

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x1e

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setModeOverlay(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/NavigationModeController;->makeOverlayHistory(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NavigationModeController"

    const-string p2, "Failed to setModeOverlay: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final updateCurrentInteractionMode(Z)V
    .locals 10

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const-string v1, "NavigationModeController"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skip updateCurrentInteractionMode for userId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "NMC#updateCurrentInteractionMode"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const-string v0, "migrateNavBar: targetPackage="

    const-string v3, "migrateNavBar: currentPackageName="

    const-string v4, "migrateNavigationBarIfNecessary currentOverlayInfo="

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v6, "android"

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_SIMPLIFIED_GESTURE:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "navigationbar_splugin_flags"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v7

    :goto_2
    invoke-static {}, Lcom/android/systemui/navigationbar/NavigationModeController;->isGestureDefault()Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "empty"

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isSupportLegacyGestureOptions="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isChinaModel="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->getOverlayPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_GESTURE_BY_DEFAULT:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v5, v9, v3}, Lcom/android/systemui/navigationbar/NavigationModeController;->setModeOverlay(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V

    :cond_5
    if-nez v6, :cond_9

    const-string v3, "com.samsung.internal.systemui.navbar.sec_gestural"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_while_hidden"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_detail_type"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_hint"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v8, :cond_7

    const-string v3, "com.android.internal.systemui.navbar.gestural"

    goto :goto_4

    :cond_7
    const-string v3, "com.android.internal.systemui.navbar.threebutton"

    :goto_4
    sget-object v4, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_SIMPLIFIED_GESTURE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/systemui/navigationbar/NavigationModeController;->setModeOverlay(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sem_bottom_gesture_restored"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    const-string v3, "Failed to migrate navigation bar overlay package:"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-eq v0, v3, :cond_a

    const-string/jumbo v0, "updateCurrentInteractionMode() : Overlay guest\'s package as owner\'s package"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->getOverlayPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    sget-object v4, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_AS_OWNER_USER:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->setModeOverlay(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    const-string/jumbo v0, "unexpected error while running updateCurrentInteractionMode()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    :goto_8
    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    goto :goto_8

    :goto_9
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationModeController;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateCurrentInteractionMode: mode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->dumpAssetPaths(Landroid/content/Context;)V

    if-eqz p1, :cond_c

    :goto_a
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;->onNavigationModeChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
