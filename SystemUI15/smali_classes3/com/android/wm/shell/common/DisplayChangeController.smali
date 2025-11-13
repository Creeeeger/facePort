.class public final Lcom/android/wm/shell/common/DisplayChangeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mControllerImpl:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

.field public final mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mWmService:Landroid/view/IWindowManager;

    new-instance p1, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;I)V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mControllerImpl:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    new-instance p1, Lcom/android/wm/shell/common/DisplayChangeController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayChangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dispatchOnDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 9

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "dispatchOnDisplayChange"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;->onDisplayChange$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    return-void
.end method
