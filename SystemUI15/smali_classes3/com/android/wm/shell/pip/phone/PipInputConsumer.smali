.class public final Lcom/android/wm/shell/pip/phone/PipInputConsumer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

.field public mListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mName:Ljava/lang/String;

.field public mRegistrationListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

.field public final mToken:Landroid/os/IBinder;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method


# virtual methods
.method public final registerInputConsumer()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->destroyInputConsumer(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "%s: Failed to create input consumer, %s"

    const-string v3, "PipInputConsumer"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x96bf8aaf3f4ce28L    # -1.576695107221733E263

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;Landroid/view/InputChannel;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
