.class public final Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

.field public final mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public mAreActiveLocationRequests:Z

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mContentObserver:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public final mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

.field public mLocationManager:Landroid/location/ILocationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsChangeCallbacks:Ljava/util/ArrayList;

.field public mShouldDisplayAllAccesses:Z

.field public mShowSystemAccessesFlag:Z

.field public mShowSystemAccessesSetting:Z

.field public final mSupportChnNlpIcon:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/DeviceConfigProxy;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/BootCompleteCache;Lcom/android/systemui/settings/UserTracker;Landroid/content/pm/PackageManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p7, 0x0

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance p1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p10, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p11, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mBackgroundHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "persist.sys.gps.dds.subId"

    const-string p3, "0"

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "LocationControllerImpl"

    const-string p3, "Sim slot property has wrong value, set 0"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p1

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p3

    const-string p4, "CarrierFeature_GPS_ConfigAgpsSetting"

    const-string p7, ""

    invoke-virtual {p3, p2, p4, p7, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    const-string/jumbo p2, "ro.csc.sales_code"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string/jumbo p3, "ro.product.first_api_level"

    invoke-static {p3, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    const/16 p4, 0x22

    const/4 p7, 0x1

    if-lt p3, p4, :cond_3

    const-string p3, "CHN"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "CHC"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "CHU"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "CTC"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "CHM"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    move p2, p7

    goto :goto_1

    :cond_3
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSupportChnNlpIcon:Z

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string p4, "location_indicators_small_enabled"

    const-string/jumbo p8, "privacy"

    invoke-virtual {p3, p8, p4, p1}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSupportChnNlpIcon:Z

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move p3, p1

    goto :goto_3

    :cond_5
    :goto_2
    move p3, p7

    :goto_3
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShouldDisplayAllAccesses:Z

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string p4, "location_indicators_show_system"

    invoke-virtual {p3, p8, p4, p1}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    move p2, p1

    goto :goto_5

    :cond_7
    :goto_4
    move p2, p7

    :goto_5
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesFlag:Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 p3, -0x2

    const-string p4, "locationShowSystemOps"

    invoke-interface {p2, p4, p1, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p2

    if-ne p2, p7, :cond_8

    move p2, p7

    goto :goto_6

    :cond_8
    move p2, p1

    :goto_6
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesSetting:Z

    new-instance p2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mBackgroundHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/os/Handler;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 p9, -0x1

    invoke-interface {p3, p4, p2, p9}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {p3, p5}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    new-instance p4, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    invoke-virtual {p2, p8, p3, p4}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.location.MODE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p6, p0, p2, p3, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    const/16 p3, 0x2a

    filled-new-array {p1, p7, p3}, [I

    move-result-object p1

    check-cast p2, Lcom/android/systemui/appops/AppOpsControllerImpl;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    new-instance p1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;I)V

    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public areActiveHighPowerLocationRequests()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    check-cast v0, Lcom/android/systemui/appops/AppOpsControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getActiveAppOps(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appops/AppOpItem;

    iget v4, v4, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpItem;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    return v1
.end method

.method public areActiveLocationRequests()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShouldDisplayAllAccesses:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesFlag:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesSetting:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    check-cast v5, Lcom/android/systemui/appops/AppOpsControllerImpl;

    invoke-virtual {v5, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getActiveAppOps(Z)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_2
    if-ge v8, v7, :cond_f

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/appops/AppOpItem;

    iget v12, v12, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    if-eq v12, v4, :cond_4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/appops/AppOpItem;

    iget v12, v12, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    if-nez v12, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSupportChnNlpIcon:Z

    if-eqz v12, :cond_e

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/appops/AppOpItem;

    iget v12, v12, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    const/16 v13, 0x2a

    if-ne v12, v13, :cond_e

    move v9, v4

    goto/16 :goto_9

    :cond_4
    :goto_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/appops/AppOpItem;

    iget v13, v12, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v12, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v4, v3, :cond_6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v16, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    goto :goto_4

    :cond_6
    if-nez v16, :cond_7

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v12, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v13, v4, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const/4 v15, -0x1

    invoke-static {v12, v13, v15, v14, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_8

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_a

    const/4 v10, 0x1

    goto :goto_7

    :cond_a
    const/4 v11, 0x1

    :goto_7
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SYSTEM_ICONS_LOCATION:Z

    if-eqz v4, :cond_d

    if-nez v2, :cond_c

    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    if-nez v2, :cond_c

    if-nez v9, :cond_c

    if-nez v3, :cond_b

    goto :goto_8

    :cond_e
    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    move-result v2

    iput-boolean v9, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v9, v1, :cond_10

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    if-nez v1, :cond_14

    if-nez v2, :cond_11

    if-nez v10, :cond_11

    if-eqz v11, :cond_14

    :cond_11
    if-eqz v2, :cond_12

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_MONITOR_HIGH_POWER:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_12
    if-eqz v10, :cond_13

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_13
    if-eqz v11, :cond_14

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_NON_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_14
    return-void
.end method

.method public final isLocationEnabled$1()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method

.method public final onActiveStateChanged(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceive() = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LocationControllerImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    goto :goto_0

    :cond_0
    const-string p2, "android.location.MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setLocationEnabled(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v2, "no_share_location"

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_changer"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateActiveLocationRequests()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShouldDisplayAllAccesses:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_MONITOR_HIGH_POWER:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    if-eq v0, v1, :cond_7

    :cond_2
    :goto_1
    const-string v1, "LocationControllerImpl"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "icon"

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    const-string v0, "onlyItemChanged"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    iget v0, v0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    const-string v3, "activeAppOpUid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mActiveAppOpItem:Lcom/android/systemui/appops/AppOpItem;

    iget-object v0, v0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    const-string v3, "activeAppOpPackageName"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0xcc

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v2, :cond_5

    const-string v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mLocationManager:Landroid/location/ILocationManager;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mLocationManager:Landroid/location/ILocationManager;

    if-nez p0, :cond_6

    const-string p0, "Failed to get Location Manager"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    invoke-interface {p0, v0}, Landroid/location/ILocationManager;->notifyNSFLP(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to send nsflp message, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method
