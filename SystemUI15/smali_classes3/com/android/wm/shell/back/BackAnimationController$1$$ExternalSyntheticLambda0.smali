.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/back/BackAnimationController$3;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mPreviousNavigationType:I

    :goto_0
    iget-object v1, v1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mAnimationCancelled:Z

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack(Landroid/window/BackTouchTracker;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/back/BackAnimationController$1;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-boolean v1, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x40e683dc7f39c1f4L    # -9.721724217669913E-5

    const/4 v4, 0x0

    const-string v5, "Navigation window gone."

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->setTriggerBack(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/back/BackAnimationController;->resetTouchTracker()V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
