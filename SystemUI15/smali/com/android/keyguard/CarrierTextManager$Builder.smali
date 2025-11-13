.class public final Lcom/android/keyguard/CarrierTextManager$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

.field public final mContext:Landroid/content/Context;

.field public mDebugLocation:Ljava/lang/String;

.field public final mDeviceBasedSatelliteViewModel:Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mSeparator:Ljava/lang/String;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mShowAirplaneMode:Z

.field public mShowMissingSim:Z

.field public final mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

.field public final mWifiTextManager:Lcom/android/keyguard/WifiTextManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;Lcom/android/systemui/util/kotlin/JavaAdapter;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/WifiTextManager;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mContext:Landroid/content/Context;

    const-string v1, " | "

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSeparator:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mDeviceBasedSatelliteViewModel:Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mBgExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    :cond_0
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/keyguard/CarrierTextManager;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mDebugLocation:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    iput-object v1, v13, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager;

    move-object v2, v1

    iget-object v3, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mContext:Landroid/content/Context;

    iget-boolean v5, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowAirplaneMode:Z

    iget-boolean v6, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowMissingSim:Z

    iget-object v10, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v14, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v15, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    move-object/from16 v20, v4

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    move-object/from16 v17, v4

    const/16 v21, 0x0

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSeparator:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    iget-object v8, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mDeviceBasedSatelliteViewModel:Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;

    iget-object v9, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v11, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v12, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    move-object/from16 v16, v13

    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v18, v16

    iget-object v0, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v21}, Lcom/android/keyguard/CarrierTextManager;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;Lcom/android/systemui/util/kotlin/JavaAdapter;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/WifiTextManager;I)V

    return-object v1
.end method
