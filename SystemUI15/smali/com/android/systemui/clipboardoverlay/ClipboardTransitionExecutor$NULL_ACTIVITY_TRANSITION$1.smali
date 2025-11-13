.class public final Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor$NULL_ACTIVITY_TRANSITION$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor$NULL_ACTIVITY_TRANSITION$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor$NULL_ACTIVITY_TRANSITION$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;->TAG:Ljava/lang/String;

    const-string p2, "Error finishing screenshot remote animation"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
