.class public final synthetic Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;

    sget-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->BLUR_PRESET:[F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
