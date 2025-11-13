.class public final Lcom/android/systemui/shade/PulsingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final ambientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final dockManager:Lcom/android/systemui/dock/DockManager;

.field public doubleTapEnabled:Z

.field public final dozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public singleTapEnabled:Z

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dockManager:Lcom/android/systemui/dock/DockManager;

    iput-object p3, p0, Lcom/android/systemui/shade/PulsingGestureListener;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p4, p0, Lcom/android/systemui/shade/PulsingGestureListener;->ambientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    iput-object p5, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    iput-object p7, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    new-instance p1, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;

    invoke-direct {p1, p0, p8}, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;-><init>(Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/settings/UserTracker;)V

    const-string p2, "doze_pulse_on_double_tap"

    const-string p3, "doze_tap_gesture"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p9, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p10, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    const-string/jumbo v0, "singleTapEnabled="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->doubleTapEnabled:Z

    const-string v0, "doubleTapEnabled="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "isDocked=false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isProximityNear()Z

    move-result p0

    const-string p2, "isProxCovered="

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->doubleTapEnabled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isProximityNear()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseDoubleTap()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const-string p1, "PULSING_DOUBLE_TAP"

    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->wakeUpIfDozing(ILjava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/shade/ShadeLogger$logSingleTapUp$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logSingleTapUp$2;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v5, "systemui.shade"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v3, v4, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v2, v7, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-virtual {v0, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isProximityNear()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v4, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logSingleTapUpFalsingState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logSingleTapUpFalsingState$2;

    iget-object v4, v4, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v5, v3, v7, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v0, v5, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v2, v5, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v4, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    const-string v2, "Single tap handled, requesting centralSurfaces.wakeUpIfDozing"

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v6, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const-string p1, "PULSING_SINGLE_TAP"

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->wakeUpIfDozing(ILjava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    const-string p1, "onSingleTapUp event ignored"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
