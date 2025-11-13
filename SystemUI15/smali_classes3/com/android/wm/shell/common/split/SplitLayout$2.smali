.class public final Lcom/android/wm/shell/common/split/SplitLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic val$dividerPos:I

.field public final synthetic val$finishCallback:Ljava/util/function/Consumer;

.field public final synthetic val$insets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ILjava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$dividerPos:I

    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$finishCallback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$insets:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x52

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$dividerPos:I

    iput v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$finishCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$insets:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x52

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/16 v0, 0x52

    invoke-static {v0, p1, p0}, Lcom/android/wm/shell/common/InteractionJankMonitorUtils;->beginTracing(ILandroid/content/Context;Landroid/view/SurfaceControl;)V

    return-void
.end method
