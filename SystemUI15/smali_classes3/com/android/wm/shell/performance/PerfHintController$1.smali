.class public final synthetic Lcom/android/wm/shell/performance/PerfHintController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/wm/shell/performance/PerfHintController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/performance/PerfHintController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/performance/PerfHintController$1;->$tmp0:Lcom/android/wm/shell/performance/PerfHintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/performance/PerfHintController$1;->$tmp0:Lcom/android/wm/shell/performance/PerfHintController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/performance/PerfHintController$onInit$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/performance/PerfHintController$onInit$1;-><init>(Lcom/android/wm/shell/performance/PerfHintController;)V

    iget-object v1, p0, Lcom/android/wm/shell/performance/PerfHintController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/performance/PerfHintController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PerformanceHintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerformanceHintManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PerformanceHintManager;->createHintSession([IJ)Landroid/os/PerformanceHintManager$Session;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/performance/PerfHintController;->hinter:Landroid/window/SystemPerformanceHinter;

    invoke-virtual {p0, v0}, Landroid/window/SystemPerformanceHinter;->setAdpfSession(Landroid/os/PerformanceHintManager$Session;)V

    return-void
.end method
