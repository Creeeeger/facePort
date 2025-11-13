.class public Lcom/android/systemui/edgelighting/EdgeLightingService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sConfigured:Z

.field public static sFlipFont:I


# instance fields
.field public mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCondition:I

.field public mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

.field public final mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

.field public mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

.field public final mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

.field public final mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

.field public mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

.field public mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

.field public final mForegroundToken:Landroid/os/IBinder;

.field public final mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

.field public mIsColorThemeEnabled:Z

.field public mIsStarted:Z

.field public mIsUsingAppIcon:Z

.field public final mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

.field public final mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

.field public mShouldKillMyself:Z

.field public mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mForegroundToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    iput v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    new-instance v2, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;I)V

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$1;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$2;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$3;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$8;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$9;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    return-void
.end method

.method public static checkEdgeLightingAvailable()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/android/systemui/edgelighting/utils/Utils;->$r8$clinit:I

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCurrentUser current = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownerId = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "not Support"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0

    :cond_1
    const-string v0, "not Owner"

    return-object v0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Enable pkg ( "

    invoke-static {v1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-eqz v2, :cond_0

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, " )  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "EdgeLightingService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->checkEdgeLightingAvailable()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "OnCreate : edgelighting is not availabe now : "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->run()V

    return-void

    :cond_0
    const-string v2, "connectToSystemUI"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v3, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    invoke-virtual {p0, v2, v3, v1}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    sget-boolean v2, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->initEdgeLightingAnalyticsStates(Landroid/app/Application;)V

    sput-boolean v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    :cond_2
    const-string v2, "edge"

    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/edge/SemEdgeManager;

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-nez v2, :cond_3

    const-string v2, "OnCreate : mEdgeManager is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    new-instance v0, Lcom/android/systemui/edgelighting/utils/AppIconCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/utils/AppIconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public final onDestroy()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    move-result-object v4

    const-class v5, Landroid/provider/Settings$System;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mPhoneStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

    invoke-virtual {v4, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    iput-object v2, v3, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    iput-object v2, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    invoke-virtual {v0, v3}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    iget-object v4, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v4, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object v2, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object v2, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    const/4 v3, 0x2

    iput v3, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    :cond_4
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    :cond_5
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-class v4, Landroid/provider/Settings$System;

    iget-object v5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    invoke-virtual {v0, v3}, Lcom/samsung/android/edge/SemEdgeManager;->unbindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onDestroy : mEdgeManager = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EdgeLightingService"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->unRegisterEdgeWindowCallback()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    :goto_2
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    const-string v4, "EdgeLightingDispatcher"

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " mDialog showing : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->stopEdgeEffect()V

    goto :goto_3

    :cond_8
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " mEffectServiceConrtroller showing : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-boolean v5, v5, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    :cond_9
    :goto_3
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    :cond_a
    invoke-static {}, Ljava/lang/System;->gc()V

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    iput v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    :cond_b
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->checkEdgeLightingAvailable()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x2

    if-nez p3, :cond_0

    const-string p1, "EdgeLightingService"

    const-string p3, "onStartCommand : edgelighting is not availabe now : "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->run()V

    return v0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-nez p2, :cond_1

    const-string p2, "edge"

    invoke-virtual {p0, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/edge/SemEdgeManager;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    const-string p2, "EdgeLightingService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand : mEdgeManager = "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return v0

    :cond_3
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    const/4 v1, 0x0

    if-nez p3, :cond_11

    new-instance p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {p3, v2}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;-><init>(Lcom/samsung/android/edge/SemEdgeManager;)V

    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iput-object p0, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;-><init>(Landroid/content/Context;)V

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    :cond_4
    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-nez v2, :cond_5

    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    invoke-direct {v2}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;-><init>()V

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    invoke-direct {v3, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    iget-object v4, v2, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v4

    :try_start_0
    iput-object v3, v2, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-nez v2, :cond_6

    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-direct {v2}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;-><init>()V

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    invoke-direct {v3, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    iput-object v3, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    :cond_6
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mPm:Landroid/os/PowerManager;

    const-string v3, "EdgeLighting:edge"

    invoke-virtual {v2, p2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mPm:Landroid/os/PowerManager;

    const/16 v3, 0x80

    const-string v4, "Window:EdgeLightingWindow"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    if-nez v2, :cond_7

    new-instance v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;-><init>(Landroid/content/Context;)V

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-direct {v2, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

    invoke-direct {v3, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    iget-object p3, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iput-object v2, p3, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    iput-object v3, p3, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mRequestor:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

    invoke-virtual {p3}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->setEnable()V

    :cond_7
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    new-instance v2, Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result v2

    iput-boolean v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p3}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result p3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_8

    const-string p3, "EdgeLightingScreenStatus"

    const-string v2, "reset"

    invoke-static {p3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_8
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    const/4 v2, 0x0

    if-nez p3, :cond_9

    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    invoke-direct {p3, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$6;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p3

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    invoke-virtual {p3, v3, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_9
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    if-nez p3, :cond_a

    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    invoke-direct {p3, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;I)V

    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-direct {p3, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {p3, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    invoke-virtual {p0, v3, p3, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_a
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    if-nez p3, :cond_c

    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    invoke-direct {p3, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$7;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object p3

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    iget-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    if-nez v4, :cond_b

    new-instance v4, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v4, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    invoke-direct {v4, p3}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;-><init>(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)V

    iput-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    :try_start_1
    iget-object v5, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-boolean v4, v3, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput-boolean v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    iget v3, v3, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v3, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    goto :goto_2

    :cond_b
    iget-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object p3, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    move-result-object p3

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-class v4, Landroid/provider/Settings$System;

    iget-object v5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v6, Landroid/provider/Settings$System;

    const-string v7, "edge_lighting"

    if-ne v4, v6, :cond_d

    iget-object p3, p3, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    :cond_d
    const-class v6, Landroid/provider/Settings$Global;

    if-ne v4, v6, :cond_f

    iget-object p3, p3, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_3
    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    if-nez v6, :cond_e

    new-instance v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    invoke-direct {v6, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_4

    :cond_e
    iget-object p3, v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p3, v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    const-string p3, "EdgeLightingSettingsObserver"

    const-string v2, "registerContentObserver : wrong table"

    invoke-static {p3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_4
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v2, "colortheme_app_icon"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    invoke-virtual {p3, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v3, "show_notification_app_icon"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    invoke-virtual {p3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$9;->onChange(ZLandroid/net/Uri;)V

    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$9;->onChange(ZLandroid/net/Uri;)V

    :cond_11
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAudioManager:Landroid/media/AudioManager;

    if-nez p3, :cond_12

    const-string p3, "audio"

    invoke-virtual {p0, p3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAudioManager:Landroid/media/AudioManager;

    :cond_12
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-eqz p3, :cond_15

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-boolean v2, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    xor-int/2addr v2, p2

    const/4 v3, -0x2

    const-string v4, "edge_lighting_show_condition"

    invoke-static {p3, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    if-ne p3, p2, :cond_13

    move p3, p2

    goto :goto_5

    :cond_13
    if-ne p3, v0, :cond_14

    move p3, v0

    goto :goto_5

    :cond_14
    const/4 p3, 0x3

    :goto_5
    iget v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    if-eq v2, p3, :cond_15

    iput p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/edge/SemEdgeManager;->bindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;I)V

    :cond_15
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string p3, "forUpdatePolicy"

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-boolean p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    if-nez p3, :cond_1b

    const-string p1, "EdgeLightingService"

    const-string/jumbo p3, "start service for policy update"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "edge_lighting_settings"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v4, "silent_add_list"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_17

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v7, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v8, -0xb37941

    invoke-direct {v7, v5, v8}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_16
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v3, p2

    goto :goto_7

    :cond_17
    move v3, v1

    :goto_7
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v5, "silent_remove_list"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_19

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_18
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v3, p2

    :cond_19
    if-eqz v3, :cond_1a

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "all_application"

    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v1, "enable_list"

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1a
    iget-object p2, p3, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->removeBlockListInEnabledEdgeLightingList(Landroid/content/Context;Ljava/util/HashMap;)V

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return v0

    :cond_1b
    const-string p3, "packagename"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p3, "info"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const-string p3, "reason"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string p1, "EdgeLightingService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onStartCommand pkg="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",info="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",reason="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1d

    if-eqz v5, :cond_1d

    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;II)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    goto :goto_9

    :cond_1c
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return v0

    :cond_1d
    :goto_9
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    return p2
.end method

.method public final setProcessForeground(Z)V
    .locals 3

    const-string v0, "EdgeLightingService"

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1, p0, v2, p1, v0}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "cant set to foreground"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 15

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v7, p3

    const/4 v9, 0x1

    if-nez v3, :cond_0

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "packageName null"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "reason is not notification"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-class v0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    const/16 v2, 0x8

    if-eq v7, v2, :cond_2

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->getDisableFlags()I

    move-result v0

    const/high16 v4, 0x40000

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "disable_alert"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    const/4 v10, -0x2

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "cover_screen_show_notification"

    invoke-static {v0, v4, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_4

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "turn_on_cover_screen_for_notification"

    invoke-static {v0, v4, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "reason is turn off \"Turn on screen for notifications\""

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "reason is turn off subscreen notification"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    const/4 v11, 0x0

    const-string v12, "noti_key"

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v4, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v4, v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isInterrupted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "flag"

    invoke-virtual {v4, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v11

    :goto_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_7

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v2, "interrupted"

    invoke-virtual {v0, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    iget-object v2, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v2, v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isRowPinned(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v2, "isRowPinned"

    invoke-virtual {v0, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_8
    iget-object v2, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v2, v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isOngoingAcitivty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v2, "isOngoingActivity"

    invoke-virtual {v0, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_9
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isPanelsEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v2, "isPanelsEnabled"

    invoke-virtual {v0, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "channel_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "com.android.systemui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "EdgeLightingService"

    if-nez v2, :cond_b

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    if-eqz v0, :cond_c

    const-string v2, "edge_lighting_chnnel_id"

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "disable edge_lighting channel"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    const-string v2, "desktop_launcher_chnnel_id"

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "disable desktop_launcher channel"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const-string v2, "keyguard"

    if-eqz v0, :cond_e

    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "keyguard && screenOn"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_e
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v9

    goto :goto_2

    :cond_f
    move v0, v11

    :goto_2
    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v0, v5, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_12

    sget-boolean v0, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v5, "noti_visiblity"

    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    :cond_10
    move v0, v11

    :goto_3
    const/4 v5, -0x1

    if-ne v0, v5, :cond_11

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string/jumbo v1, "secret && keyguard"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v6, "package_visiblity"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_14

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string/jumbo v1, "secret package && keyguard"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_12
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "keygaurdNotiOff"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_13
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v1, "blockByDPM"

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_14
    sget-boolean v0, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "bubble"

    if-eqz v0, :cond_15

    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :cond_15
    move v0, v11

    :goto_4
    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    invoke-virtual {v0, v9, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_16
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v5, v0, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v5, :cond_17

    sget v6, Lcom/android/systemui/edgelighting/EdgeLightingService;->sFlipFont:I

    if-eq v6, v5, :cond_17

    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    sput v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sFlipFont:I

    :cond_17
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz v0, :cond_26

    iget-object v5, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v6, v5, Lcom/android/systemui/edgelighting/utils/AppIconCache;->KEY_SMALL_ICON:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v6, v0, Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_18

    check-cast v0, Landroid/graphics/drawable/Icon;

    iget-object v6, v5, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5

    :cond_18
    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_19

    iget-object v2, v5, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object v6, v0

    goto :goto_8

    :cond_19
    iget-object v0, v5, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    goto :goto_6

    :cond_1a
    :try_start_1
    iget-object v0, v5, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v0, v5, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_7
    if-eqz v2, :cond_1b

    iget-object v0, v5, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    move-object v6, v2

    :goto_8
    if-eqz v7, :cond_21

    sget-boolean v0, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->EXTRA_KEY_SMALL_ICON:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v2, "notification_color"

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_9

    :cond_1c
    move v0, v11

    :goto_9
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "edge_lighting_color_type"

    invoke-static {v2, v5, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v11}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result v2

    goto :goto_a

    :cond_1d
    const v5, -0xb37941

    if-ne v2, v9, :cond_1e

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadAppCustomColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_20

    if-eqz v0, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Not exist color in white list.So using notification color  : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_a

    :cond_1e
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1f

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->getDeviceWallPaperColorIndex(Landroid/content/ContentResolver;)I

    move-result v2

    goto :goto_a

    :cond_1f
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "edgelighting_custom_color"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :cond_20
    :goto_a
    filled-new-array {v2, v0}, [I

    move-result-object v0

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setEffectColors([I)V

    goto :goto_b

    :cond_21
    move-object/from16 v13, p2

    :goto_b
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    if-eqz v0, :cond_22

    iget v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    move v8, v0

    goto :goto_c

    :cond_22
    move v8, v11

    :goto_c
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startEdgeLighting: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onGo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EdgeLightingScheduler"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const/4 v4, 0x0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v2}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    xor-int/2addr v3, v9

    const-string v4, "edge_lighting_show_condition"

    invoke-static {v2, v4, v3, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    iput-object v3, v14, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    if-eqz v2, :cond_25

    if-eq v2, v9, :cond_24

    const/4 v4, 0x2

    if-eq v2, v4, :cond_23

    goto :goto_d

    :cond_23
    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    goto :goto_d

    :cond_24
    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    goto :goto_d

    :cond_25
    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    iput-boolean v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    :goto_d
    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    invoke-static {v0, v11, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->updateStatusLoggingItem(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz v0, :cond_26

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_2
    iget-object v1, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->setInterruption(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_26
    return-void
.end method

.method public final stopEdgeLightingService()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
