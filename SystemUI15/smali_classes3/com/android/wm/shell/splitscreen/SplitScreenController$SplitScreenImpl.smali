.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen;


# instance fields
.field public final mExecutors:Landroid/util/ArrayMap;

.field public final mListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method


# virtual methods
.method public final registerSplitAnimationListener(Lcom/android/systemui/wmshell/WMShell$8;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitInvocationListener:Lcom/android/systemui/wmshell/WMShell$8;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitInvocationListenerExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mSplitInvocationListener:Lcom/android/systemui/wmshell/WMShell$8;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mSplitInvocationListenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final startSplitByTwoTouchSwipeIfPossible(I)V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;ILjava/lang/String;)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
