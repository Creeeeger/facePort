.class public final Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    iget-wide v4, v3, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mStartPressTime:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    iget-wide v0, v3, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    iput-wide v0, v3, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const-wide/16 v6, 0xc8

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->setSaveButtonEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mCircleImageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mHoldStandBy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->getCircleImageViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    iget-wide v2, v2, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
