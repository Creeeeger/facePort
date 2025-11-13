.class public final synthetic Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/window/DisplayAreaInfo;

.field public final synthetic f$5:Landroid/view/IDisplayChangeWindowCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    iput p2, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$4:Landroid/window/DisplayAreaInfo;

    iput-object p6, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$5:Landroid/view/IDisplayChangeWindowCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    iget v2, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    iget v3, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$2:I

    iget v4, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$3:I

    iget-object v5, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$4:Landroid/window/DisplayAreaInfo;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;->f$5:Landroid/view/IDisplayChangeWindowCallback;

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "HandleRemoteDisplayChange"

    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/common/DisplayChangeController;->dispatchOnDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    const-wide/16 v1, 0x20

    :try_start_0
    invoke-interface {p0, v7}, Landroid/view/IDisplayChangeWindowCallback;->continueDisplayChange(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {p0}, Landroid/view/IDisplayChangeWindowCallback;->hashCode()I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "DisplayChangeController"

    const-string v5, "Failed to continue handling display change"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Landroid/view/IDisplayChangeWindowCallback;->hashCode()I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_1
    throw v3
.end method
