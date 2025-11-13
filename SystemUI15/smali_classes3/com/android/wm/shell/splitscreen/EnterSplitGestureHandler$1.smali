.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;ILandroid/graphics/Region;)V

    check-cast p3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
