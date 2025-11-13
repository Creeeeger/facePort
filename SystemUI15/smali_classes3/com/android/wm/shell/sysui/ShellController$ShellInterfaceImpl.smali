.class public final Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellInterface;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/sysui/ShellController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/sysui/ShellController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;-><init>(Lcom/android/wm/shell/sysui/ShellController;)V

    return-void
.end method


# virtual methods
.method public final createExternalInterfaces(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get Shell command in 2s"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to dump the Shell in 2s"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final handleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v1, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    aget-boolean p0, v0, p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to handle Shell command in 2s"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/lang/Object;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInit()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onKeyguardDismissAnimationFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ZZZ)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ILandroid/content/Context;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUserProfilesChanged(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/lang/Object;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
