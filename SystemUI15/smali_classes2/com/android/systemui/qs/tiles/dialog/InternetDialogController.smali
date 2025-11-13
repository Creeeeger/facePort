.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_TELEPHONY_DISPLAY_INFO:Landroid/telephony/TelephonyDisplayInfo;

.field public static final EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

.field static final SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field public static final SUBTITLE_TEXT_ALL_CARRIER_NETWORK_UNAVAILABLE:I

.field public static final SUBTITLE_TEXT_NON_CARRIER_NETWORK_UNAVAILABLE:I

.field public static final SUBTITLE_TEXT_SEARCHING_FOR_NETWORKS:I

.field public static final SUBTITLE_TEXT_TAP_A_NETWORK_TO_CONNECT:I

.field public static final SUBTITLE_TEXT_UNLOCK_TO_VIEW_NETWORKS:I

.field public static final SUBTITLE_TEXT_WIFI_IS_OFF:I

.field static final TOAST_PARAMS_HORIZONTAL_WEIGHT:F = 1.0f

.field static final TOAST_PARAMS_VERTICAL_WEIGHT:F = 1.0f


# instance fields
.field public final mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field protected mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

.field protected mCanConfigWifi:Z

.field public final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field protected mCarrierNetworkChangeMode:Z

.field public mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field protected mConnectedWifiInternetMonitor:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;

.field public final mConnectionStateFilter:Landroid/content/IntentFilter;

.field public final mConnectionStateReceiver:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mConnectivityManagerNetworkCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDataSubId:I

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mHandler:Landroid/os/Handler;

.field public mHasActiveSubIdOnDds:Z

.field protected mHasEthernet:Z

.field public mHasWifiEntries:Z

.field protected mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field protected mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public final mSecondarySignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field final mSubIdTelephonyCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/TelephonyCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/TelephonyDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSubIdTelephonyManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mToastFactory:Lcom/android/systemui/toast/ToastFactory;

.field protected mWifiIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiStateWorker:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$mupdateListener(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    move-result v2

    sget-boolean v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    const-string v4, "InternetDialogController"

    if-ne v1, v2, :cond_0

    if-eqz v3, :cond_5

    const-string p0, "DDS: no change"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "DDS: defaultDataSubId:"

    invoke-static {v0, v1, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyCallback;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected null telephony call back for Sub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;II)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v4, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    check-cast v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iput v0, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    :cond_5
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f1314cd

    sput v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_WIFI_IS_OFF:I

    const v0, 0x7f13133d

    sput v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_TAP_A_NETWORK_TO_CONNECT:I

    const v0, 0x7f1313ef    # 1.9550002E38f

    sput v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_UNLOCK_TO_VIEW_NETWORKS:I

    const v0, 0x7f1314c4

    sput v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_SEARCHING_FOR_NETWORKS:I

    const v0, 0x7f130cf9

    sput v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_NON_CARRIER_NETWORK_UNAVAILABLE:I

    const v0, 0x7f1301a2

    sput v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_ALL_CARRIER_NETWORK_UNAVAILABLE:I

    const-string v0, "InternetDialogController"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v0, v1, v1, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZ)V

    sput-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEFAULT_TELEPHONY_DISPLAY_INFO:Landroid/telephony/TelephonyDisplayInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/WindowManager;Lcom/android/systemui/toast/ToastFactory;Landroid/os/Handler;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 5

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateReceiver:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;

    sget-boolean v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "InternetDialogController"

    const-string v4, "Init InternetDialogController"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v3, p1

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHandler:Landroid/os/Handler;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWorkerHandler:Landroid/os/Handler;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    new-instance v3, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    invoke-direct {v3, p2}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;I)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManagerNetworkCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mToastFactory:Lcom/android/systemui/toast/ToastFactory;

    new-instance v2, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v2, p2}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    new-instance v2, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v2, p2}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSecondarySignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectedWifiInternetMonitor:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiStateWorker:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method


# virtual methods
.method public final activeNetworkIsCellular()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "InternetDialogController"

    const-string v0, "ConnectivityManager is null, can not check active network."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public final getActiveAutoSwitchNonDdsSubId()I
    .locals 5

    sget-object v0, Lcom/android/systemui/flags/Flags;->QS_SECONDARY_DATA_SUB_INFO:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;II)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public final getConfiguratorQrCodeGeneratorIntentOrNull(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;
    .locals 8

    sget-object v0, Lcom/android/systemui/flags/Flags;->SHARE_WIFI_QS_BUTTON:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.WIFI_DPP_CONFIGURATOR_AUTH_QR_CODE_GENERATOR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/dpp/WifiDppIntentHelper;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v2, "SAE"

    goto :goto_2

    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    const-string v5, "nopass"

    if-eqz v2, :cond_2

    :goto_0
    move-object v2, v5

    goto :goto_2

    :cond_2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "WEP"

    goto :goto_2

    :cond_5
    :goto_1
    const-string v2, "WPA"

    :goto_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v7, :cond_6

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object p0, p0, v3

    goto :goto_3

    :cond_7
    iget-object p0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_3
    invoke-static {p0}, Lcom/android/settingslib/wifi/dpp/WifiDppIntentHelper;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "ssid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "preSharedKey"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    const-string p0, "hiddenSsid"

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_c
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultDataSubscriptionId()I
    .locals 0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.NETWORK_PROVIDER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getSignalStrengthDrawableWithLevel(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    :goto_0
    const/4 v3, 0x5

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p2

    if-nez p2, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    iget p2, p2, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    if-gez p2, :cond_2

    move p2, v2

    :cond_2
    move v1, p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    const-string v4, "inflate_signal_strength_bool"

    invoke-virtual {p2, v4, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    add-int/2addr v1, v0

    const/4 v3, 0x6

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result v4

    xor-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    if-ne p1, v5, :cond_6

    move p1, v0

    goto :goto_3

    :cond_6
    move p1, v2

    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCarrierNetworkChangeMode:Z

    if-eqz v5, :cond_7

    sget v1, Lcom/android/settingslib/graph/SignalDrawable;->ICON_RES:I

    shl-int/lit8 v1, v3, 0x8

    const/high16 v3, 0x30000

    or-int/2addr v1, v3

    goto :goto_4

    :cond_7
    invoke-static {v1, v3, v4}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result v1

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSecondarySignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    if-eqz p1, :cond_8

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    :goto_5
    sget-object v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v2

    if-eqz p1, :cond_9

    move-object v3, p0

    :cond_9
    aput-object v3, v4, v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0713d5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x33

    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/16 v1, 0x55

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {p1, v0, p0, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const p0, 0x1010212

    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/LayerDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method

.method public final getWifiDrawable(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/graphics/drawable/Drawable;
    .locals 6

    instance-of v0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getDeviceType()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x7f080962

    if-eq v1, v2, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f080960

    goto :goto_1

    :cond_2
    const p1, 0x7f080964

    goto :goto_1

    :cond_3
    const p1, 0x7f080961

    goto :goto_1

    :cond_4
    const p1, 0x7f080963

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_6
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->context:Landroid/content/Context;

    sget-object v3, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Wi-Fi level is out of range! level:"

    const-string v4, "WifiUtils"

    if-gez p1, :cond_8

    invoke-static {p1, v3, v4}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    array-length v5, v1

    if-lt p1, v5, :cond_9

    invoke-static {p1, v3, v4}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    array-length p1, v1

    add-int/lit8 v1, p1, -0x1

    goto :goto_2

    :cond_9
    move v1, p1

    :goto_2
    if-eqz v0, :cond_a

    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    aget p1, p1, v1

    goto :goto_3

    :cond_a
    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    aget p1, p1, v1

    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public isAirplaneModeEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isCarrierNetworkActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isDefaultNetwork()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDataStateInService(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final isMobileDataEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isVoiceStateInService(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "InternetDialogController"

    const-string p1, "TelephonyManager is null, can not detect voice state."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isWifiEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiStateWorker:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;

    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mWifiState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

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

.method public final launchWifiDetailsSetting(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "InternetDialogController"

    const-string v0, "connected entry\'s key is empty"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_chosen_wifientry_key"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ":settings:show_fragment_args"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->startActivity(Landroid/content/Intent;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final makeOverlayToast(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mToastFactory:Lcom/android/systemui/toast/ToastFactory;

    iget-object v2, v1, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    if-eqz v2, :cond_0

    new-instance v9, Lcom/android/systemui/toast/SystemUIToast;

    iget-object v5, v1, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {v2, v4, p1, v7}, Lcom/android/systemui/plugins/ToastPlugin;->createToast(Ljava/lang/CharSequence;Ljava/lang/String;I)Lcom/android/systemui/plugins/ToastPlugin$Toast;

    move-result-object v6

    move-object v1, v9

    move-object v2, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/android/systemui/toast/SystemUIToast;

    iget-object v2, v1, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v1, v9

    move-object v5, p1

    move v6, v7

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;II)V

    :goto_0
    iget-object p1, v9, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x7e1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x98

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v9}, Lcom/android/systemui/toast/SystemUIToast;->getYOffset()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v9}, Lcom/android/systemui/toast/SystemUIToast;->getGravity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_1
    const/16 v2, 0x70

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;

    invoke-direct {v0, p0, v9, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Lcom/android/systemui/toast/SystemUIToast;Landroid/view/View;)V

    const-wide/16 v1, 0xfa0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAccessPointsChanged(Ljava/util/List;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-le v1, v3, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v0

    :goto_1
    const/4 v4, 0x0

    if-lez v1, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_3

    move v1, v3

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectedWifiInternetMonitor:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;

    iget-object v6, v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    monitor-enter v6

    :try_start_0
    iput-object v4, v6, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v6

    iput-object v4, v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    :goto_2
    move v3, v0

    :goto_3
    if-ge v3, v1, :cond_a

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectedWifiInternetMonitor:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;

    if-eqz v6, :cond_7

    iget-object v9, v7, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->isDefaultNetwork()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    iput-object v6, v7, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    monitor-enter v6

    :try_start_1
    iput-object v7, v6, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->isDefaultNetwork()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v4, v6

    goto :goto_5

    :cond_9
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasWifiEntries:Z

    move-object v6, v4

    move-object v7, v5

    goto :goto_6

    :catchall_1
    move-exception p0

    monitor-exit v6

    throw p0

    :cond_b
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasWifiEntries:Z

    move-object v6, v4

    move-object v7, v6

    :goto_6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_d

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    move v9, v2

    goto :goto_7

    :cond_c
    move v9, v0

    :goto_7
    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/List;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-void
.end method

.method public final onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onWifiScan(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->setProgressBarVisible(Z)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->setProgressBarVisible(Z)V

    return-void
.end method

.method public final refreshHasActiveSubIdOnDds()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v1, "InternetDialogController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    const-string p0, "SubscriptionManager is null, set mHasActiveSubId = false"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    const-string p0, "DDS is INVALID_SUBSCRIPTION_ID"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    const-string p0, "Can\'t get DDS subscriptionInfo"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOnlyNonTerrestrialNetwork()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    const-string p0, "This is NTN, so do not show mobile data"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result v0

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mHasActiveSubId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final scanWifiAccessPoints()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    :cond_0
    return-void
.end method

.method public final setMobileDataEnabled(Landroid/content/Context;IZ)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "InternetDialogController"

    sget-boolean v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    const-string p0, "TelephonyManager is null, can not set mobile data."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    const-string p0, "SubscriptionManager is null, can not set mobile data."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;IZ)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->createActivityTransitionController$default(Lcom/android/systemui/animation/DialogTransitionAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    sget-boolean v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InternetDialog"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->destroyDialog()V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method
