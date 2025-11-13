.class public final synthetic Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImeInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImeInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImeInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->showButton(IZ)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getDraggableWindowBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stickToScreenEdge(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
