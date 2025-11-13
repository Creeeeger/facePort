.class public final Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

.field public final handler:Landroid/os/Handler;

.field public isFixedRotated:Z

.field public isMonitorStarted:Z

.field public final notificationShadeView$delegate:Lkotlin/Lazy;

.field public final notificationShadeWindowController:Ldagger/Lazy;

.field public pendingRunnable:Ljava/lang/Runnable;

.field public final preDrawListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

.field public final safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

.field public final windowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "KeyguardFixedRotation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Landroid/os/Handler;",
            "Landroid/view/IWindowManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->notificationShadeWindowController:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->windowManager:Landroid/view/IWindowManager;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$notificationShadeView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$notificationShadeView$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->notificationShadeView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->preDrawListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KeyguardFixedRotation"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;->run()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->windowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    return-void
.end method

.method public final isFixedRotated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setPendingRunnable(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "KeyguardFixedRotation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->pendingRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->notificationShadeView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->preDrawListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
