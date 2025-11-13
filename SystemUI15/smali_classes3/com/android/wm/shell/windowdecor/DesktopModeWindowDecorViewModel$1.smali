.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;Landroid/graphics/Region;)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
