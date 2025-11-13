.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget p0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCurrentCornerRadius:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget p0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCurrentCornerRadius:F

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_1

    iput p2, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCurrentCornerRadius:F

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    :cond_1
    return-void
.end method
