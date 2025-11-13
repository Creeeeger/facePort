.class public final Lcom/android/wm/shell/freeform/MinimizeContainerService$1;
.super Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/MinimizeContainerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMinimizeAnimationEnd(I)V
    .locals 2

    const-string v0, "[MinimizeContainerService] IFreeformCallback_onMinimizeAnimationEnd: taskId="

    const-string v1, "FreeformContainer"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onMinimized(Landroid/content/ComponentName;IIIIZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MinimizeContainerService] IFreeformCallback_onMinimized: taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/freeform/MinimizeContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;IIZ)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    if-eq p5, p1, :cond_1

    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p4, p5}, Landroid/graphics/Point;-><init>(II)V

    const/4 p2, 0x0

    const/16 p3, 0x25

    invoke-virtual {p0, p3, p6, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    .locals 2

    const-string v0, "[MinimizeContainerService] IFreeformCallback_onTaskMoveEnded: taskId="

    const-string v1, "FreeformContainer"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/4 v0, 0x0

    const/16 v1, 0x29

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onTaskMoveStarted(ILandroid/graphics/Point;)V
    .locals 2

    const-string v0, "[MinimizeContainerService] IFreeformCallback_onTaskMoveStarted: taskId="

    const-string v1, "FreeformContainer"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onUnminimized(I)V
    .locals 2

    const-string v0, "[MinimizeContainerService] IFreeformCallback_onUnminimized: taskId="

    const-string v1, "FreeformContainer"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
