.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$300(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    iget v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mPointX:F

    iget v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mPointY:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase$1;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase$1;-><init>(Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;Landroid/view/View;FF)V

    new-instance p1, Landroid/content/ClipDescription;

    const-string v0, ""

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v0, Landroid/content/ClipData$Item;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    const v4, 0x100100

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$400(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->val$view:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

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

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
