.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final transitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sysui/ShellInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksTransitionObserver;->transitions:Lcom/android/wm/shell/transition/Transitions;

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopTasksTransitionObserver$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksTransitionObserver$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksTransitionObserver;)V

    invoke-virtual {p4, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingWallpaperActivity()Z

    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method
