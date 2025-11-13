.class public final Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;
.super Landroid/view/IRemoteAnimationRunner$Default;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->finishAnimation()V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Object;

    const-string v0, "Start back to activity animation."

    invoke-static {p1, v0, p4}, Lcom/android/internal/protolog/common/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length p1, p2

    :goto_0
    if-ge p3, p1, :cond_2

    aget-object p4, p2, p3

    iget v0, p4, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iput-object p4, v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iput-object p4, v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iput-object p5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->finishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method
