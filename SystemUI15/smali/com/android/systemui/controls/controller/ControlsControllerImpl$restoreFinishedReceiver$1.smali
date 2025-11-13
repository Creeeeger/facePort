.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.extra.USER_ID"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1$onReceive$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
