.class public final synthetic Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void

    :pswitch_0
    sget v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_1
    sget v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
