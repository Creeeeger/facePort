.class public final Lcom/android/keyguard/CarrierTextManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public hasSpecialChar:Ljava/lang/Boolean;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

.field public final mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceBasedSatelliteViewModel:Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;

.field public final mIsEmergencyCallCapable:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKnoxStateCallback:Lcom/android/keyguard/CarrierTextManager$4;

.field public final mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mPhoneStateListener:Lcom/android/keyguard/CarrierTextManager$3;

.field public mSatelliteCarrierText:Ljava/lang/String;

.field public mSatelliteConnectionJob:Lkotlinx/coroutines/Job;

.field public final mSeparator:Ljava/lang/CharSequence;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mShowMissingSim:Z

.field public final mSimErrorState:[Z

.field public final mSimNetworkLock:[Z

.field public final mSimSlotsNumber:I

.field public final mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

.field public mTelephonyCapable:Z

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/keyguard/CarrierTextManager$1;

.field public final mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

.field public final mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

.field public final plmnOfBroadcast:Ljava/util/HashMap;

.field public final voWifiConnected:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;Lcom/android/systemui/util/kotlin/JavaAdapter;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/WifiTextManager;)V
    .locals 9

    move-object v0, p0

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Lcom/android/keyguard/CarrierTextManager$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/CarrierTextManager$1;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessObserver:Lcom/android/keyguard/CarrierTextManager$1;

    new-instance v4, Lcom/android/keyguard/CarrierTextManager$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/CarrierTextManager$2;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v4, Lcom/android/keyguard/CarrierTextManager$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/CarrierTextManager$3;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mPhoneStateListener:Lcom/android/keyguard/CarrierTextManager$3;

    new-instance v4, Lcom/android/keyguard/CarrierTextManager$4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/CarrierTextManager$4;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mKnoxStateCallback:Lcom/android/keyguard/CarrierTextManager$4;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    move-object v4, p1

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p8 .. p8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/keyguard/CarrierTextManager;->mIsEmergencyCallCapable:Z

    move v4, p4

    iput-boolean v4, v0, Lcom/android/keyguard/CarrierTextManager;->mShowMissingSim:Z

    move-object v4, p5

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    move-object v4, p6

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mDeviceBasedSatelliteViewModel:Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;

    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v5, " \u2022 "

    iput-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual/range {p8 .. p8}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v4

    iput v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    new-array v5, v4, [Z

    iput-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    new-array v4, v4, [Z

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSimNetworkLock:[Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->voWifiConnected:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    if-eqz v4, :cond_0

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    new-instance v4, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/keyguard/WifiTextManager$register$1;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6}, Lcom/android/keyguard/WifiTextManager$register$1;-><init>(Lcom/android/keyguard/WifiTextManager;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iget-object v7, v3, Lcom/android/keyguard/WifiTextManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x3

    invoke-static {v7, v6, v6, v5, v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v5, Lcom/android/keyguard/WifiTextManager$register$2;

    invoke-direct {v5, v3, v4, v6}, Lcom/android/keyguard/WifiTextManager$register$2;-><init>(Lcom/android/keyguard/WifiTextManager;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v6, v6, v5, v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v3, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, v1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;Lcom/android/systemui/util/kotlin/JavaAdapter;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/WifiTextManager;I)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lcom/android/keyguard/CarrierTextManager;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;Lcom/android/systemui/util/kotlin/JavaAdapter;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/WifiTextManager;)V

    return-void
.end method

.method public static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, ""

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object p2, v1

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v0, 0x7f13084e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto/16 :goto_1

    :goto_0
    :pswitch_2
    move-object p2, v0

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v1, 0x7f130844

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v0, 0x7f130a11

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1309b3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v0, 0x7f130850

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1309f8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_3
    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :pswitch_6
    sget-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v0, 0x7f130933

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_7
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1309b0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v0, 0x7f130840

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u200f"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x7

    if-ne p1, p0, :cond_1

    :cond_0
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :cond_1
    const/16 p0, 0xc

    if-eq p1, p0, :cond_2

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimRestricted:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public final handleSetListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mKnoxStateCallback:Lcom/android/keyguard/CarrierTextManager$4;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mPhoneStateListener:Lcom/android/keyguard/CarrierTextManager$3;

    iget-object v2, p0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v4, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    iget-object v5, p0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSatelliteConnectionJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_0

    const-string v0, "Starting new job"

    invoke-virtual {v2, v0}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logStopListeningForSatelliteCarrierText(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logStartListeningForSatelliteCarrierText()V

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mDeviceBasedSatelliteViewModel:Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModelImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModelImpl;->carrierText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSatelliteConnectionJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, v4, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    iget-object p1, p1, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSatelliteConnectionJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_4

    const-string p1, "#handleSetListening has null callback"

    invoke-virtual {v2, p1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logStopListeningForSatelliteCarrierText(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final isRTL()Z
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextManager;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public postToCallback(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateCarrierText(Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "CarrierTextManager#updateCarrierText"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFilteredSubscriptionInfo()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v3, 0x1040740

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v11, v4, [I

    iget v5, v0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, -0x1

    if-ge v8, v5, :cond_0

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-array v8, v4, [Ljava/lang/CharSequence;

    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    invoke-virtual {v13, v4}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdate(I)V

    const/4 v5, 0x0

    if-nez p1, :cond_1

    iget-object v10, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v14, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v12, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object/from16 v10, p1

    :goto_1
    if-eqz v10, :cond_3

    const-string v12, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v10, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v14, "phone"

    if-ne v12, v9, :cond_2

    invoke-virtual {v10, v14, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    invoke-virtual {v10, v14, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iget-object v14, v0, Lcom/android/keyguard/CarrierTextManager;->voWifiConnected:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v5, "showEpdg"

    invoke-virtual {v10, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    invoke-virtual {v15, v10}, Lcom/android/systemui/shade/carrier/CarrierTextUtil;->updateNetworkName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v10}, Lcom/android/systemui/shade/carrier/CarrierTextUtil;->updateNetworkName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateFromStickyBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    :goto_4
    iget-object v14, v0, Lcom/android/keyguard/CarrierTextManager;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    const-string v15, "CarrierTextController"

    const-string v5, ""

    if-ge v7, v4, :cond_d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    move-object/from16 v17, v2

    invoke-virtual {v14, v9, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    move-result v2

    if-ge v2, v4, :cond_7

    invoke-virtual {v14, v9, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    move-result v2

    move/from16 v18, v4

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v14, v9, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    move-result v2

    goto :goto_6

    :cond_7
    move/from16 v18, v4

    :goto_5
    move v2, v7

    :goto_6
    aput-object v5, v8, v2

    aput v9, v11, v2

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    aput v7, v6, v4

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "dea!"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object v5, v14

    :cond_8
    invoke-virtual {v0, v4, v5}, Lcom/android/keyguard/CarrierTextManager;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v9, v4, v5}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateLoopStart(IILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v19, v3

    const-string v3, "carrierTextForSimState("

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ")-(order: "

    move-object/from16 v20, v1

    const-string v1, ") : "

    invoke-static {v5, v9, v3, v2, v1}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_9

    aput-object v14, v8, v2

    const/4 v10, 0x0

    :cond_9
    const/4 v1, 0x5

    if-ne v4, v1, :cond_c

    const-string v1, "WFC check"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    instance-of v2, v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz v2, :cond_b

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v2, "<unknown ssid>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    invoke-virtual {v13}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateWfcCheck()V

    const/4 v12, 0x1

    :cond_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v17

    move/from16 v4, v18

    move-object/from16 v3, v19

    move-object/from16 v1, v20

    const/4 v9, -0x1

    goto/16 :goto_4

    :cond_d
    move-object/from16 v20, v1

    move-object/from16 v17, v2

    move/from16 v18, v4

    if-eqz v10, :cond_10

    if-nez v12, :cond_10

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_7

    :cond_e
    move-object/from16 v2, v17

    :goto_7
    iget-boolean v1, v0, Lcom/android/keyguard/CarrierTextManager;->mShowMissingSim:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyCapable:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v3, 0x7f130933

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_f
    move-object v1, v5

    :goto_8
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_9

    :cond_10
    const/16 v16, 0x0

    :goto_9
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    move-result v2

    iget-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    if-nez v18, :cond_11

    move-object/from16 v16, v5

    goto :goto_c

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v9, v18

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v9, :cond_15

    aget-object v16, v8, v7

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_14

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_13

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_12

    if-eqz v2, :cond_12

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    aget-object v3, v8, v7

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_12
    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v2, v8, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_13
    move/from16 v16, v2

    move-object/from16 v17, v3

    aget-object v2, v8, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_14
    move/from16 v16, v2

    move-object/from16 v17, v3

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_a

    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_d

    :cond_16
    :goto_c
    move/from16 v9, v18

    :goto_d
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/CarrierTextManager;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v3, v16

    const/4 v2, 0x0

    :goto_e
    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-ge v2, v4, :cond_18

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_17

    move-object/from16 v16, v5

    goto :goto_f

    :cond_17
    if-eqz v10, :cond_19

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v3, 0x10404ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_18
    move-object/from16 v16, v5

    goto :goto_10

    :cond_19
    aget v4, v6, v2

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1a

    aget-object v7, v8, v4

    move-object/from16 v16, v5

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v1, v7, v5}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v8, v4

    goto :goto_f

    :cond_1a
    move-object/from16 v16, v5

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v3, v1, v4}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v16

    goto :goto_e

    :goto_10
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f1308f8

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v3

    move-object v3, v1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v9, :cond_21

    aget v5, v11, v1

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1b

    iget-object v6, v0, Lcom/android/keyguard/CarrierTextManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6, v5}, Lcom/android/systemui/util/SettingsHelper;->isSimSettingOn(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :cond_1b
    iget-object v7, v0, Lcom/android/keyguard/CarrierTextManager;->voWifiConnected:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1f

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->voWifiConnected:Ljava/util/HashMap;

    move-object/from16 v18, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "WFC PLMN INFO"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_12
    move-object/from16 v3, v20

    goto :goto_13

    :cond_1d
    aget v2, v11, v1

    move-object/from16 v3, v20

    invoke-virtual {v14, v2, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    move-result v2

    if-nez v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object v4, v2

    goto :goto_13

    :cond_1e
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_1f
    move-object/from16 v18, v3

    goto :goto_12

    :goto_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_20
    move-object/from16 v2, v18

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v20, v3

    move-object v3, v2

    const v2, 0x7f1308f8

    goto/16 :goto_11

    :cond_21
    move-object/from16 v18, v3

    const/4 v1, 0x1

    goto :goto_15

    :cond_22
    const/4 v1, 0x0

    :goto_15
    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v2, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v2, :cond_24

    iget v2, v2, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_23

    goto :goto_16

    :cond_23
    move-object v5, v3

    goto :goto_17

    :cond_24
    :goto_16
    const-string v2, "CarrierText is clear by knoxstate"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v16

    :goto_17
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mSatelliteCarrierText:Ljava/lang/String;

    if-eqz v2, :cond_25

    invoke-virtual {v13, v2}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUsingSatelliteText(Ljava/lang/String;)V

    move-object v5, v2

    :cond_25
    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    iget-boolean v3, v2, Lcom/android/keyguard/WifiTextManager;->connected:Z

    if-eqz v3, :cond_28

    iget-object v3, v2, Lcom/android/keyguard/WifiTextManager;->ssid:Ljava/lang/String;

    if-nez v3, :cond_26

    iget-object v2, v2, Lcom/android/keyguard/WifiTextManager;->context:Landroid/content/Context;

    const v3, 0x7f1314b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    goto :goto_18

    :cond_26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_27

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-ne v5, v7, :cond_27

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_27

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_27
    move-object v2, v3

    :goto_18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_28
    const/4 v6, 0x0

    if-eqz v1, :cond_29

    iget-object v2, v2, Lcom/android/keyguard/WifiTextManager;->context:Landroid/content/Context;

    const v3, 0x7f1308f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_29
    iget-object v2, v2, Lcom/android/keyguard/WifiTextManager;->context:Landroid/content/Context;

    const v3, 0x7f1304ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1a
    move-object v7, v2

    goto :goto_1b

    :cond_2a
    const/4 v6, 0x0

    move-object v7, v5

    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setCarrierText : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " allSimsMissing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " anySimReady : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v15}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mSatelliteCarrierText:Ljava/lang/String;

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_2b
    move v2, v6

    :goto_1c
    new-instance v3, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    iget-object v6, v13, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    const/4 v4, 0x1

    xor-int/lit8 v9, v10, 0x1

    move-object v5, v3

    move v10, v2

    move v12, v1

    invoke-direct/range {v5 .. v12}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZZ[IZ)V

    invoke-virtual {v13, v3}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logCallbackSentFromUpdate(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/CarrierTextManager;->postToCallback(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
