.class public final Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iput-object p2, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->access$200(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object v3, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v4, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mPointX:F

    iget v5, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mPointY:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;

    move-object v0, p1

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;Landroid/view/View;Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->val$view:Landroid/view/View;

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mDragStart:Z

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-boolean v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mDragStart:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->access$300(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->val$view:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
