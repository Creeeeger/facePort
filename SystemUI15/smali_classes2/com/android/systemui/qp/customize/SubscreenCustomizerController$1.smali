.class public final Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTileView;

    iput-object p1, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iput-object v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mPointX:F

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object v1, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mPointY:F

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->access$000(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object v1, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iput-object v1, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-static {v0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->access$100(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object v0, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;-><init>()V

    const/16 v2, 0xc8

    iput v2, v1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->animationType:I

    iput-object v0, v1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iget-object v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x50

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x1

    return p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
