.class public final Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/NetworkController;
.implements Lcom/android/systemui/demomode/DemoMode;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final CHATTY:Z

.field public static final DEBUG:Z

.field public static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mAccessPoints:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

.field public mActiveMobileDataSubscription:I

.field public mAirplaneMode:Z

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBgLooper:Landroid/os/Looper;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

.field public final mClearForceValidated:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

.field public mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field public final mConnectedTransports:Ljava/util/BitSet;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSubscriptions:Ljava/util/List;

.field public final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

.field public final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field public mDefaultSignalController:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public mEmergencySource:I

.field final mEthernetSignalController:Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;

.field public mForceCellularValidated:Z

.field public final mHasMobileDataFeature:Z

.field public mHasNoSubs:Z

.field public final mHistory:[Ljava/lang/String;

.field public mHistoryIndex:I

.field public mInetCondition:Z

.field public final mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

.field public mIsEmergency:Z

.field public mLastDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field mLastServiceState:Landroid/telephony/ServiceState;

.field mListening:Z

.field public mLocale:Ljava/util/Locale;

.field public final mLock:Ljava/lang/Object;

.field public final mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMobileFactory:Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;

.field final mMobileSignalControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/connectivity/MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field public mNoDefaultNetwork:Z

.field public mNoNetworksAvailable:Z

.field public final mPhone:Landroid/telephony/TelephonyManager;

.field public final mPhoneStateListener:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;

.field public final mReceiverHandler:Landroid/os/Handler;

.field public final mRegisterListeners:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

.field public mSimDetected:Z

.field public final mSubDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

.field public mSubscriptionListener:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public mUserSetup:Z

.field public final mValidatedTransports:Ljava/util/BitSet;

.field public final mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;


# direct methods
.method public static -$$Nest$mgetProcessedTransportTypes(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/net/NetworkCapabilities;)[I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget v1, p0, v0

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    instance-of v1, v1, Landroid/net/vcn/VcnTransportInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnTransportInfo;

    invoke-virtual {v1}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    aput p1, p0, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NetworkController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    const-string v0, "NetworkControllerChat"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->CHATTY:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/settingslib/net/DataUsageController;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogBuffer;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move-object/from16 v0, p8

    move-object/from16 v11, p10

    move-object/from16 v1, p13

    move-object/from16 v12, p15

    move-object/from16 v13, p22

    invoke-direct/range {p0 .. p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    iput-boolean v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mNoDefaultNetwork:Z

    const/4 v14, 0x1

    iput-boolean v14, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mNoNetworksAvailable:Z

    const/4 v2, 0x0

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHistory:[Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$1;

    invoke-direct {v2, v8}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    new-instance v15, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$2;

    invoke-direct {v15, v8}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    iput-object v15, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    const/4 v3, 0x4

    invoke-direct {v2, v8, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mClearForceValidated:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    const/4 v3, 0x5

    invoke-direct {v2, v8, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mRegisterListeners:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    iput-object v9, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v2, p4

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    move-object/from16 v2, p7

    iput-object v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iput-object v13, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mBgLooper:Landroid/os/Looper;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object v11, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    move-object/from16 v0, p16

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v0, p21

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileFactory:Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;

    move-object/from16 v0, p6

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v0, p14

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v2

    iput-boolean v2, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p18

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    move-object/from16 v0, p24

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iput-object v10, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p11

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    iput-object v1, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    iput-object v0, v1, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;

    new-instance v6, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v3, p10

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    move-object v14, v6

    move-object/from16 v6, p20

    move-object/from16 p3, v7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;Landroid/os/Handler;)V

    iput-object v14, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;

    invoke-direct {v0, v9, v11, v8}, Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateAirplaneMode(Z)V

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, v13}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object/from16 v1, p17

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v15, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$4;

    invoke-direct {v0, v8, v12}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    move-object v1, v12

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v0

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, v8, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$5;

    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    if-eqz v10, :cond_0

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v10, v2, v1}, Landroid/net/wifi/WifiManager;->registerScanResultsCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$6;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhoneStateListener:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;

    const-string v0, "NetworkController"

    move-object/from16 v1, p23

    invoke-virtual {v1, v0, v8}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-direct {v0, v9}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;Landroid/os/Handler;Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogBuffer;)V
    .locals 26

    move-object/from16 v14, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object v7

    new-instance v13, Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 p2, v13

    move-object/from16 v14, p1

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    invoke-direct {v0, v14}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    move-object v14, v0

    invoke-direct {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;-><init>()V

    move-object/from16 v0, v25

    invoke-direct/range {v0 .. v24}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/settingslib/net/DataUsageController;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogBuffer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mRegisterListeners:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setSubs(Ljava/util/List;)V

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_DATA_ACTIVITY_ICONS:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f13004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f081298

    invoke-direct {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSimDetected:Z

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setNoSims(ZZ)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mNoDefaultNetwork:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mInetCondition:Z

    xor-int/2addr v2, v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mNoNetworksAvailable:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setConnectivityStatus(ZZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;->notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final demoCommands()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "network"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public doUpdateMobileControllers()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    if-ne v3, v4, :cond_4

    move-object v1, v2

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateNoSims()V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->setCurrentSubscriptionsLocked(Ljava/util/List;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateNoSims()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->recalculateEmergency()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string p2, "NetworkController state:"

    const-string v0, "  mUserSetup="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  - telephony ------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  hasVoiceCallingFeature()="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "  mListening="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mListening:Z

    const-string v2, "  mActiveMobileDataSubscription="

    invoke-static {p2, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  - connectivity ------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mConnectedTransports="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mValidatedTransports="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mInetCondition="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mAirplaneMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mLocale="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mLastServiceState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mIsEmergency="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mEmergencySource="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEmergencySource:I

    const/16 v1, 0xc8

    const-string v2, ")"

    const/16 v3, 0x12c

    if-le p2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ASSUMED_VOICE_CONTROLLER("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p2, v1

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-le p2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "NO_SUB("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-le p2, v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VOICE_CONTROLLER("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p2, v1

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/16 v1, 0x64

    if-le p2, v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FIRST_CONTROLLER("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p2, v1

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    const-string p2, "NO_CONTROLLERS"

    goto :goto_1

    :cond_5
    const-string p2, "UNKNOWN_SOURCE"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  - DefaultNetworkCallback -----"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p2, v0

    move v1, p2

    :goto_2
    const/16 v2, 0x10

    if-ge p2, v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHistory:[Ljava/lang/String;

    aget-object v2, v2, p2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    iget p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHistoryIndex:I

    add-int/lit8 p2, p2, 0xf

    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHistoryIndex:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    const-string v4, "): "

    if-lt p2, v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  Previous NetworkCallback("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHistoryIndex:I

    add-int/2addr v5, v2

    sub-int/2addr v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHistory:[Ljava/lang/String;

    and-int/lit8 v5, p2, 0xf

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_8
    const-string p2, "  - config ------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p2, v0

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "AccessPointControllerImpl:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Callbacks: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WifiPickerTracker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v2, :cond_a

    iget-object v2, p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v3, v3, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Other wifi entries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;

    const/4 v6, 0x2

    invoke-direct {v5, p2, v6}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object p2, p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz p2, :cond_b

    const-string p2, "WifiPickerTracker not started, cannot get reliable entries"

    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    :goto_5
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "  - CallbackHandler -----"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p2, v0

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistory:[Ljava/lang/String;

    const/16 v2, 0x40

    if-ge v0, v2, :cond_d

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    add-int/lit8 p2, p2, 0x1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistoryIndex:I

    add-int/lit8 v0, v0, 0x3f

    :goto_7
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistoryIndex:I

    add-int/2addr v3, v2

    sub-int/2addr v3, p2

    if-lt v0, v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  Previous Callback("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistoryIndex:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v0, 0x3f

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_e
    return-void
.end method

.method public final getControllerWithSubId(I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController;
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const-string v1, "NetworkController"

    if-nez v0, :cond_1

    sget-boolean p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "No data sim selected"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    return-object p0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Cannot find controller for data sub: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    return-object p0
.end method

.method public final getNumberSubscriptions()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public handleConfigurationChanged()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateMobileControllers()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iput-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v3, v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    const-class v5, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    const-string v4, "inflate_signal_strength_bool"

    invoke-virtual {v3, v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    iget-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v4, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v3, v3, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_3

    :cond_2
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_3
    iput-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->refreshLocale()V

    return-void
.end method

.method public hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isPowerOffServiceState()Z
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v4, v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v5, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    iget-object v7, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->canCellularVoiceService()Z

    move-result v7

    goto :goto_2

    :cond_1
    move v7, v0

    :goto_2
    iget-object v8, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getMobileDataRegState()I

    move-result v6

    :cond_2
    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    const-string v6, "isPowerOffServiceState,mCurrentState.getVoiceServiceState() = "

    const-string v8, ",mCurrentState.airplaneMode = "

    invoke-static {v5, v6, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    const-string v9, ",mCurrentState.canCellularVoiceService() = "

    const-string v10, ",mCurrentState.getMobileDataRegState() = "

    invoke-static {v6, v8, v9, v7, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-eq v5, v2, :cond_5

    iget-boolean v2, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-eqz v2, :cond_4

    if-nez v5, :cond_4

    if-eqz v7, :cond_5

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    return v0

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method public isUserSetup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mUserSetup:Z

    return p0
.end method

.method public final notifyAllListeners()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->notifyListeners()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListeners()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListeners()V

    return-void
.end method

.method public final notifyListeners()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_DATA_ACTIVITY_ICONS:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f13004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f081298

    invoke-direct {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->setNoSims(ZZ)V

    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    const-string v1, "Exiting demo mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateMobileControllers()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mRegisterListeners:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->notifyAllListeners()V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x6

    sget-boolean v4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->CHATTY:Z

    const-string v5, "NetworkController"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onReceive: intent="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v6, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v4, v2

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :sswitch_3
    const-string v5, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_4
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_6
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move v4, p1

    goto :goto_1

    :sswitch_7
    const-string v5, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move v4, v0

    goto :goto_1

    :sswitch_8
    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateMobileControllers()V

    goto/16 :goto_3

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->doInBackground(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :pswitch_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :goto_2
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/2addr v1, v0

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :pswitch_2
    const-string p1, "rebroadcastOnUnlock"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_3

    :pswitch_3
    const-string p1, "android.telephony.extra.SUBSCRIPTION_ID"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->refreshLocale()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateAirplaneMode(Z)V

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateConnectivity()V

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_3

    :pswitch_8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->recalculateEmergency()V

    :cond_e
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d6de25e -> :sswitch_8
        -0x5753691f -> :sswitch_7
        -0x45e5283a -> :sswitch_6
        -0x43dd7a3f -> :sswitch_5
        -0x402b4235 -> :sswitch_4
        -0x16312dc7 -> :sswitch_3
        -0xdb21ee7 -> :sswitch_2
        -0x18365bb -> :sswitch_1
        0x1babcc93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final pushConnectivityToSignals()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    iget v4, v1, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    iget-object v5, v1, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v5, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, v5, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iput v2, v5, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v3, v5

    :cond_4
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    iget v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    iput p0, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public final recalculateEmergency()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEmergencySource:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    const-string v4, "NetworkController"

    if-nez v3, :cond_3

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v6, v5, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v6, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-nez v6, :cond_2

    iget-object v0, v5, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found emergency "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5

    add-int/lit16 v2, v0, 0xc8

    iput v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Getting emergency from "

    invoke-static {v0, v2, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Getting assumed emergency from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    goto :goto_1

    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "Cannot find controller for voice sub: "

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit16 v0, v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mEmergencySource:I

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mIsEmergency:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {p0, v1, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final refreshLocale()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    new-instance v1, Lcom/android/settingslib/wifi/WifiStatusTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/wifi/WifiStatusTracker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->notifyAllListeners()V

    :cond_0
    return-void
.end method

.method public registerListeners()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->registerListener()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionListener:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mBgLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionListener:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionListener:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhoneStateListener:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateMobileControllers()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setCurrentSubscriptionsLocked(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$8;

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$8;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v14, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "old=%s, new=%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscriptions changed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v14, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {v12, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_6

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->remove(I)V

    move v11, v9

    move/from16 v18, v10

    move-object/from16 v16, v12

    move-object v0, v14

    goto/16 :goto_4

    :cond_3
    iget-object v0, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileFactory:Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;

    iget-object v2, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v3, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v8}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    iget-object v6, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    iget-object v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;

    invoke-direct {v1, v4, v5, v7, v6}, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Looper;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;)V

    new-instance v15, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v11, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->context:Landroid/content/Context;

    move-object/from16 v17, v12

    iget-object v12, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v18, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->callbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->mobileMappings:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    move-object/from16 v19, v0

    move-object v0, v15

    move-object/from16 v20, v1

    move-object v1, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    move-object/from16 v21, v7

    move-object/from16 v7, v19

    move v14, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move-object/from16 v9, v18

    move/from16 v18, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v16, v17

    move-object/from16 v12, v20

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Landroid/os/Looper;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;)V

    iget-boolean v0, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mUserSetup:Z

    iget-object v1, v15, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    iget-object v0, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v11, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-nez v1, :cond_4

    iput-object v15, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    :cond_4
    iget-boolean v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mListening:Z

    if-eqz v1, :cond_5

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->registerListener()V

    :cond_5
    :goto_4
    add-int/lit8 v9, v11, 0x1

    move-object v14, v0

    move-object/from16 v12, v16

    move/from16 v10, v18

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v12

    move-object v0, v14

    iget-boolean v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mListening:Z

    if-eqz v1, :cond_8

    const/4 v11, 0x0

    :goto_5
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_8

    move-object/from16 v1, v16

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    iput-object v3, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v4, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    iget-object v4, v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mObserver:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v16, v1

    goto :goto_5

    :cond_8
    iget-object v1, v13, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->setSubs(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->notifyAllListeners()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->pushConnectivityToSignals()V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateAirplaneMode(Z)V

    return-void
.end method

.method public setNoNetworksAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mNoNetworksAvailable:Z

    return-void
.end method

.method public final updateAirplaneMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    iget-object v1, p1, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->notifyListeners()V

    :cond_3
    return-void
.end method

.method public final updateConnectivity()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLastDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    aget v6, v0, v5

    if-eqz v6, :cond_0

    if-eq v6, v3, :cond_0

    if-eq v6, v1, :cond_0

    goto :goto_3

    :cond_0
    const/16 v7, 0x10

    if-nez v6, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLastDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v9

    instance-of v9, v9, Landroid/net/vcn/VcnTransportInfo;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v8

    check-cast v8, Landroid/net/vcn/VcnTransportInfo;

    invoke-virtual {v8}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLastDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mLastDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mForceCellularValidated:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateConnectivity: mConnectedTransports="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NetworkController"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateConnectivity: mValidatedTransports="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    :goto_4
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->pushConnectivityToSignals()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mNoDefaultNetwork:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mInetCondition:Z

    xor-int/2addr v1, v3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mNoNetworksAvailable:Z

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->setConnectivityStatus(ZZZ)V

    return-void
.end method

.method public final updateMobileControllers()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mListening:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->doUpdateMobileControllers()V

    return-void
.end method

.method public updateNoSims()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    if-eq v5, v2, :cond_1

    if-eqz v5, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasNoSubs:Z

    if-ne v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSimDetected:Z

    if-eq v1, v2, :cond_4

    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasNoSubs:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSimDetected:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->setNoSims(ZZ)V

    :cond_4
    return-void
.end method
