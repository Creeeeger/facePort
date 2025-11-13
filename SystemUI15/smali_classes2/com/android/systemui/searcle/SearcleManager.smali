.class public final Lcom/android/systemui/searcle/SearcleManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final ctsBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final ctsBroadcastReceiver:Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;

.field public currentDownCount:I

.field public final desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public invokedPackageName:Ljava/lang/String;

.field public isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

.field public final isSupportDCMotor:Z

.field public isUnavailableSearchApp:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final sysUiState:Lcom/android/systemui/model/SysUiState;

.field public final tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

.field public toast:Landroid/widget/Toast;

.field public toastMsg:Ljava/lang/CharSequence;

.field public final vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/searcle/SearcleManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/searcle/SearcleManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->sysUiState:Lcom/android/systemui/model/SysUiState;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/Vibrator;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->vibrator:Landroid/os/Vibrator;

    new-instance v1, Lcom/android/systemui/searcle/SearcleTipPopup;

    invoke-direct {v1, p1}, Lcom/android/systemui/searcle/SearcleTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    sget-object p1, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->UNKNOWN:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p1, Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;)V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastReceiver:Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/searcle/SearcleManager$1;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/searcle/SearcleManager$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {p1, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/searcle/SearcleManager;->isSupportDCMotor:Z

    :cond_3
    return-void
.end method

.method public static final access$getOmniEntryPoint(Lcom/android/systemui/searcle/SearcleManager;)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method


# virtual methods
.method public final isAppInstalled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public final isSupportBixbyTouch()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SUPPORT_BIXBY_TOUCH:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isCNSupportCTS()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startSearcleByHomeKey(ZZ)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isSearcleEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "startSearcleByHomeKey down = "

    const-string v4, ", longPress = "

    const-string v5, "SearcleManager"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "startSearcleByHomeKey isUnavailableSearchApp = "

    if-eqz v2, :cond_27

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string v2, "com.samsung.android.bixbytouch"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v11, 0x4

    if-ne v0, v11, :cond_1

    const-string v0, "isUnAvailableSearcle = dex mode"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v9

    goto/16 :goto_5

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->MAINTENANCE_MODE:Z

    if-eqz v0, :cond_2

    const-string v0, "isUnAvailableSearcle = maintenance mode"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKidsModeRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isUnAvailableSearcle = kids mode"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    const v3, 0x7f131022

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getProKioskManager()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isKioskMode : proKiosk mode"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "isKioskMode : Kiosk mode"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "isUnAvailableSearcle = kiosk mode"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SecurityException: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    sget-object v11, Lcom/android/systemui/util/ContextUtil;->INSTANCE:Lcom/android/systemui/util/ContextUtil;

    iget-object v12, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/android/systemui/util/ContextUtil;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v3, "isUnAvailableSearcle = Pinned app"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_6

    const v0, 0x7f1310e9

    goto :goto_2

    :cond_6
    const v0, 0x7f1310e7

    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_7
    iget-object v11, v1, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v11

    const v12, 0x7f131382

    if-eqz v11, :cond_9

    const-string v0, "isUnAvailableSearcle = one hand mode"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportBixbyTouch()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v6, 0x7f130e1e

    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_8
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    const v3, 0x7f131024

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_9
    iget-object v11, v1, Lcom/android/systemui/searcle/SearcleManager;->sysUiState:Lcom/android/systemui/model/SysUiState;

    iget-wide v13, v11, Lcom/android/systemui/model/SysUiState;->mFlags:J

    const-wide/16 v15, 0x804

    and-long/2addr v15, v13

    cmp-long v11, v15, v6

    if-eqz v11, :cond_a

    const-string v0, "isUnAvailableSearcle = notification shade"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    if-eqz v0, :cond_c

    const-wide/16 v15, 0x248

    and-long/2addr v13, v15

    cmp-long v6, v13, v6

    if-eqz v6, :cond_c

    const-string v0, "isUnAvailableSearcle = keyguard"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportBixbyTouch()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v6, 0x7f130e1d

    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_b
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    const v3, 0x7f131023

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportBixbyTouch()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/searcle/BixbyTouchAPI;->sActivityManager:Landroid/app/ActivityManager;

    const-string v11, "activity"

    if-nez v7, :cond_d

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    sput-object v7, Lcom/android/systemui/searcle/BixbyTouchAPI;->sActivityManager:Landroid/app/ActivityManager;

    :cond_d
    sget-object v7, Lcom/android/systemui/searcle/BixbyTouchAPI;->sActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v9

    :cond_f
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "com.samsung.android.bixbytouch.activity.ShowCPCardsActivity"

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string v13, "com.samsung.android.bixbytouch.activity.WelcomePageActivity"

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_10
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v3

    goto :goto_4

    :cond_11
    if-nez v3, :cond_14

    sget-object v0, Lcom/android/systemui/searcle/BixbyTouchAPI;->sActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_12

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/android/systemui/searcle/BixbyTouchAPI;->sActivityManager:Landroid/app/ActivityManager;

    :cond_12
    sget-object v0, Lcom/android/systemui/searcle/BixbyTouchAPI;->sActivityManager:Landroid/app/ActivityManager;

    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.android.bixbytouch.service.ScrollDetectUIService"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v3, v4

    :cond_14
    if-eqz v3, :cond_15

    const-string v0, "isUnAvailableSearcle = isLaunchingBixbyTouch"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    move v0, v4

    :goto_5
    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SUPPORT_SEARCLE:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SUPPORT_BIXBY_TOUCH:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCNSupportCTS()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_6

    :cond_16
    move v0, v9

    goto :goto_7

    :cond_17
    :goto_6
    move v0, v4

    :goto_7
    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/systemui/searcle/OmniAPI;->mIsOmniPackageEnabled:Z

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    const v3, 0x7f131021

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    :cond_18
    sget-boolean v0, Lcom/android/systemui/searcle/OmniAPI;->mIsOmniPackageEnabled:Z

    if-nez v0, :cond_19

    goto :goto_8

    :cond_19
    move v0, v9

    goto :goto_9

    :cond_1a
    :goto_8
    move v0, v4

    :goto_9
    iput-boolean v0, v1, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    if-eqz v0, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/searcle/SearcleManager$showToast$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/searcle/SearcleManager$showToast$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_14

    :cond_1b
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/systemui/util/ContextUtil;->INSTANCE:Lcom/android/systemui/util/ContextUtil;

    iget-object v3, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/ContextUtil;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_1f

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_1c
    move-object v0, v8

    :goto_a
    if-nez v0, :cond_1d

    goto :goto_c

    :cond_1d
    move-object v3, v0

    goto :goto_c

    :cond_1e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getTopActivity SecurityException "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_c
    iput-object v3, v1, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    :cond_20
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    const-string v3, "invokeSearcle invokedPackageName = "

    const-string v6, ", isSupportedDCMotor = "

    invoke-static {v3, v0, v6}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Lcom/android/systemui/searcle/SearcleManager;->isSupportDCMotor:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;

    invoke-direct {v6, v1}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x3

    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/android/systemui/searcle/SearcleManager;->vibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_22

    const/16 v6, 0x64

    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v6

    const/4 v7, -0x1

    sget-object v10, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v6, v7, v10}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_d

    :cond_21
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$2;

    invoke-direct {v6, v1, v8}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$2;-><init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v8, v8, v6, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_22
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportBixbyTouch()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.bixbytouch.ACTION_START_CIRCLE_TO_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    const-string v2, "BixbyTouchAPI"

    const-string v3, "invokeBixbyTouch"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_23
    sget-boolean v2, Lcom/android/systemui/BasicRune;->SUPPORT_SEARCLE:Z

    if-nez v2, :cond_25

    sget-boolean v2, Lcom/android/systemui/BasicRune;->SUPPORT_BIXBY_TOUCH:Z

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isCNSupportCTS()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_e

    :cond_24
    move v4, v9

    :cond_25
    :goto_e
    if-eqz v4, :cond_26

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;

    invoke-direct {v3, v1, v8}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;-><init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v8, v8, v3, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_f

    :cond_26
    const-string v0, "invokeSearcle not support search api"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    iget-boolean v0, v1, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    if-eqz v0, :cond_31

    iput-boolean v9, v1, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    iput-object v8, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    iput-object v8, v1, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    goto/16 :goto_14

    :cond_27
    if-nez v0, :cond_31

    if-nez v2, :cond_31

    iget-boolean v0, v1, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    if-eqz v0, :cond_28

    invoke-static {v10, v5, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v9, v1, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    iput-object v8, v1, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    iput-object v8, v1, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    :cond_28
    iget v0, v1, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    sget-object v2, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->INSTANCE:Lcom/android/systemui/searcle/SearcleTipPopupUtil;

    iget-object v8, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getSearcleTipCount(Landroid/content/Context;)I

    move-result v2

    const-string/jumbo v8, "startSearcleByHomeKey currentDownCount = "

    const-string v10, " tipShownCount = "

    const-string v11, " "

    invoke-static {v0, v2, v8, v10, v11}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-boolean v2, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    if-nez v2, :cond_31

    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    sget-object v11, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->UNKNOWN:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    if-ne v2, v11, :cond_2b

    const-string v2, "android.permissionui.cts"

    invoke-virtual {v1, v2}, Lcom/android/systemui/searcle/SearcleManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "com.google.android.permissionui.gts"

    const-string v13, "android.input.cts"

    const-string v14, "android.voicerecognition.cts"

    if-nez v11, :cond_2a

    invoke-virtual {v1, v14}, Lcom/android/systemui/searcle/SearcleManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2a

    invoke-virtual {v1, v13}, Lcom/android/systemui/searcle/SearcleManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2a

    invoke-virtual {v1, v12}, Lcom/android/systemui/searcle/SearcleManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_29

    goto :goto_10

    :cond_29
    sget-object v11, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->UNINSTALLED:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    goto :goto_11

    :cond_2a
    :goto_10
    sget-object v11, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->INSTALLED:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    :goto_11
    iput-object v11, v1, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "package"

    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v11, v14, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v11, v13, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v11, v12, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v15, v1, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastReceiver:Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x3c

    move-object/from16 v16, v2

    move-object/from16 v17, v11

    invoke-static/range {v15 .. v22}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_2b
    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "startSearcleByHomeKey isInstalledCTSApp = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getSearcleTipCount(Landroid/content/Context;)I

    move-result v2

    if-ge v2, v3, :cond_2c

    move v2, v4

    goto :goto_12

    :cond_2c
    move v2, v9

    :goto_12
    if-eqz v2, :cond_31

    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    sget-object v3, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->UNINSTALLED:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    if-ne v2, v3, :cond_31

    iget v2, v1, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    add-int/2addr v2, v4

    iget-object v3, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getSearcleTipCount(Landroid/content/Context;)I

    move-result v3

    iget-object v11, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "SearcleTipFirstSeenTime"

    invoke-interface {v11, v12, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getTimeFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getTimeFormatString(J)Ljava/lang/String;

    move-result-object v13

    const-string v14, " firstShownTime = "

    invoke-static {v2, v3, v8, v10, v14}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getSearcleTipCount(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2d

    iget v2, v1, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_31

    invoke-virtual {v0, v9}, Lcom/android/systemui/searcle/SearcleTipPopup;->showSearcleTip(Z)V

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_14

    :cond_2d
    iget-object v2, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getSearcleTipCount(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_30

    if-eq v3, v4, :cond_2f

    :cond_2e
    move v4, v9

    goto :goto_13

    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v2}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v12, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v10, v2

    const-wide/32 v2, 0xf731400

    cmp-long v2, v10, v2

    if-ltz v2, :cond_2e

    :cond_30
    :goto_13
    if-eqz v4, :cond_31

    const-string/jumbo v2, "startSearcleByHomeKey remind popup!"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v9}, Lcom/android/systemui/searcle/SearcleTipPopup;->showSearcleTip(Z)V

    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v1, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastReceiver:Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_31
    :goto_14
    return-void
.end method
