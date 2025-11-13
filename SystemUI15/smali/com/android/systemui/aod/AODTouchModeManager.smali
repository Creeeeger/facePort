.class public final Lcom/android/systemui/aod/AODTouchModeManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final aodManagerWrapper:Lcom/android/systemui/doze/AODManagerWrapper;

.field public currentDisplayState:I

.field public currentTouchMode:I

.field public final deviceTypeWrapper:Lcom/android/systemui/util/DeviceTypeWrapper;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final keyguardViewMediatorHelperLazy:Ldagger/Lazy;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

.field public touchNodePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/aod/AODTouchModeManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aod/AODTouchModeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/LsRuneWrapper;Lcom/android/systemui/util/DeviceTypeWrapper;Ldagger/Lazy;Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/LsRuneWrapper;",
            "Lcom/android/systemui/util/DeviceTypeWrapper;",
            "Ldagger/Lazy;",
            "Landroid/hardware/display/DisplayManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

    iput-object p6, p0, Lcom/android/systemui/aod/AODTouchModeManager;->deviceTypeWrapper:Lcom/android/systemui/util/DeviceTypeWrapper;

    iput-object p7, p0, Lcom/android/systemui/aod/AODTouchModeManager;->keyguardViewMediatorHelperLazy:Ldagger/Lazy;

    iput-object p8, p0, Lcom/android/systemui/aod/AODTouchModeManager;->displayManager:Landroid/hardware/display/DisplayManager;

    const-string p4, "/sys/class/sec/tsp/input/enabled"

    iput-object p4, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    sget-object p4, Lcom/android/systemui/doze/AODManagerWrapper;->Companion:Lcom/android/systemui/doze/AODManagerWrapper$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lcom/android/systemui/doze/AODManagerWrapper;->sInstance:Lcom/android/systemui/doze/AODManagerWrapper;

    const/4 p5, 0x0

    if-nez p4, :cond_0

    new-instance p4, Lcom/android/systemui/doze/AODManagerWrapper;

    invoke-direct {p4, p1, p5}, Lcom/android/systemui/doze/AODManagerWrapper;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object p4, Lcom/android/systemui/doze/AODManagerWrapper;->sInstance:Lcom/android/systemui/doze/AODManagerWrapper;

    :cond_0
    sget-object p1, Lcom/android/systemui/doze/AODManagerWrapper;->sInstance:Lcom/android/systemui/doze/AODManagerWrapper;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->aodManagerWrapper:Lcom/android/systemui/doze/AODManagerWrapper;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentDisplayState:I

    new-instance p1, Lcom/android/systemui/aod/AODTouchModeManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aod/AODTouchModeManager$1;-><init>(Lcom/android/systemui/aod/AODTouchModeManager;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    check-cast p3, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/4 p1, 0x0

    const/4 p2, 0x4

    invoke-virtual {p3, p0, p2, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    new-instance p1, Lcom/android/systemui/aod/AODTouchModeManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/aod/AODTouchModeManager$2;-><init>(Lcom/android/systemui/aod/AODTouchModeManager;)V

    invoke-virtual {p8, p1, p5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 4

    const-string v0, "onFolderStateChanged: isOpened="

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "AODTouchModeManager"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setTouchNodePath: isOpened="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "/sys/class/sec/tsp2/input/enabled"

    goto :goto_0

    :cond_1
    const-string p1, "/sys/class/sec/tsp1/input/enabled"

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final setTouchMode(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->deviceTypeWrapper:Lcom/android/systemui/util/DeviceTypeWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/util/DeviceTypeWrapper;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->lsRuneWrapper:Lcom/android/systemui/LsRuneWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    const-string v1, "AODTouchModeManager"

    iget-object v2, p0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    if-eq p1, v0, :cond_6

    const-string v0, "/sys/class/sec/sec_epen/input/enabled"

    const-string v3, "/sys/class/sec/tsp2/input/enabled"

    iget-object v4, p0, Lcom/android/systemui/aod/AODTouchModeManager;->aodManagerWrapper:Lcom/android/systemui/doze/AODManagerWrapper;

    if-eqz p1, :cond_4

    const/4 v5, 0x1

    if-eq p1, v5, :cond_2

    const-string v0, "setTouchMode abnormal Touch Mode"

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    if-eqz v5, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setSingleTouchMode: isSubDisplayNodePath()="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "setSingleTouchMode : sec.epen.input.enabled : 1"

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->keyguardViewMediatorHelperLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "setDoubleTouchMode: return screen is on"

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x2

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setDoubleTouchMode: isSubDisplayNodePath()="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " called="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/aod/AODTouchModeManager;->touchNodePath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "setDoubleTouchMode : sec.epen.input.enabled : 0"

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/doze/AODManagerWrapper;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    if-eq v3, v0, :cond_7

    const-string v0, "setUnknownTouchMode()"

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    iput p1, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    return-void
.end method
