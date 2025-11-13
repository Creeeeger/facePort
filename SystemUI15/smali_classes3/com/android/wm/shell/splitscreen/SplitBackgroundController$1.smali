.class public final Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;
.super Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishRecentsAnimation(Z)V
    .locals 0

    return-void
.end method

.method public final onStartHomeAnimation(Z)V
    .locals 0

    return-void
.end method

.method public final onStartRecentsAnimation(Z)V
    .locals 0

    return-void
.end method

.method public final onWallpaperVisibilityChanged(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;ZZ)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
