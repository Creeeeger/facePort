.class public final Lcom/android/keyguard/ClockEventController$TimeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clockFace:Lcom/android/systemui/plugins/clocks/ClockFaceController;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public isRunning:Z

.field public final predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

.field public final secondsRunnable:Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/clocks/ClockFaceController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/clocks/ClockFaceController;

    iput-object p2, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;-><init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    new-instance p1, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;-><init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->secondsRunnable:Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;

    return-void
.end method


# virtual methods
.method public final stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/clocks/ClockFaceController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final update(Z)V
    .locals 2

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/clocks/ClockFaceController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->getTickRate()Lcom/android/systemui/plugins/clocks/ClockTickRate;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/ClockEventController$TimeListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->secondsRunnable:Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    :goto_0
    return-void
.end method
