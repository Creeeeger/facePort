.class Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;
.super Lcom/samsung/android/widget/SemTipPopup$TipWindow;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TipWindowBubble"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindowBubble-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method


# virtual methods
.method protected blacklist animateViewOut()V
    .locals 11

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget v7, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;->mPivotX:F

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;->mPivotY:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4f5c29    # 0.81f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4f5c29    # 0.81f

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetINTERPOLATOR_ELASTIC_CUSTOM()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetINTERPOLATOR_SINE_IN_OUT_33()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble$1;-><init>(Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
