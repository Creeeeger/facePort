.class public final Lcom/android/settings/panel/PanelFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/panel/PanelFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 8

    iget v0, p0, Lcom/android/settings/panel/PanelFragment$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget-object v1, v0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a0b1a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0xfa

    invoke-static/range {v2 .. v7}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget-object v0, v0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget-object v0, v0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget v2, v1, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    if-le v0, v2, :cond_1

    iget-object v0, v1, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget v1, p0, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
