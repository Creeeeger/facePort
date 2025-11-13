.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;
.super Landroid/app/TaskStackListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFocusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;ZI)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
