.class public Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCanceled:Z

.field public final mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

.field public final mExtraTransitType:I

.field public mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

.field public final mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field public final mTransition:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz p5, :cond_1

    new-instance p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object p4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object p4, p4, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {p3, p4, p5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object p2, p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-nez p2, :cond_0

    const/16 p2, 0x3ec

    if-ne p6, p2, :cond_0

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;I)V

    new-instance p4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession$$ExternalSyntheticLambda0;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;I)V

    iput-object p2, p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mStartedCallbackForSplitScreen:Ljava/lang/Runnable;

    iput-object p4, p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mFinishedCallbackForSplitScreen:Ljava/lang/Runnable;

    :cond_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iput-object p2, p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitions;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    :cond_1
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    return-void
.end method
