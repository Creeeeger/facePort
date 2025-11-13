.class public final Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;
.super Landroid/view/IPinnedTaskListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-direct {p0}, Landroid/view/IPinnedTaskListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)V

    return-void
.end method


# virtual methods
.method public final onImeVisibilityChanged(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;ZI)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMovementBoundsChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;Z)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
