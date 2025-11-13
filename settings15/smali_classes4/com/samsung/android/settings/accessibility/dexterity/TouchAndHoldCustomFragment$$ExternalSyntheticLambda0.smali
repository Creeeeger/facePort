.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-wide v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const-wide/16 v3, 0xc8

    cmp-long p2, v1, v3

    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    const v1, 0x7f142f5f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    iget-wide v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2f"

    invoke-static {p2, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-wide v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const v1, 0x7f142f5e

    goto :goto_0

    :cond_2
    const v1, 0x7f142f5d

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mStartPressTime:J

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mStartPressTime:J

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput v1, p1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mXCoordinate:F

    iput p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mYCoordinate:F

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mCircleImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mTapConfirm:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->getCircleImageViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->setSaveButtonEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_2
    return v0
.end method
