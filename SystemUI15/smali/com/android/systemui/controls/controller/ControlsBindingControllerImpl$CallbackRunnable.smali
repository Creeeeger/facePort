.class public abstract Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->token:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    return-void
.end method


# virtual methods
.method public abstract doRun()V
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    const-string v1, "ControlsBindingControllerImpl"

    if-nez v0, :cond_0

    const-string p0, "No current provider set"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->user:Landroid/os/UserHandle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "User "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not current user"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->token:Landroid/os/IBinder;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->token:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Provider for token:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist anymore"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->doRun()V

    return-void
.end method
