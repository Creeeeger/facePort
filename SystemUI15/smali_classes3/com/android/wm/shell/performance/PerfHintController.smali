.class public final Lcom/android/wm/shell/performance/PerfHintController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final hinter:Landroid/window/SystemPerformanceHinter;

.field public final mContext:Landroid/content/Context;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/performance/PerfHintController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/performance/PerfHintController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance p3, Landroid/window/SystemPerformanceHinter;

    iget-object p4, p4, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mPerfRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-direct {p3, p1, p4}, Landroid/window/SystemPerformanceHinter;-><init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;)V

    iput-object p3, p0, Lcom/android/wm/shell/performance/PerfHintController;->hinter:Landroid/window/SystemPerformanceHinter;

    new-instance p1, Lcom/android/wm/shell/performance/PerfHintController$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/performance/PerfHintController$1;-><init>(Lcom/android/wm/shell/performance/PerfHintController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
