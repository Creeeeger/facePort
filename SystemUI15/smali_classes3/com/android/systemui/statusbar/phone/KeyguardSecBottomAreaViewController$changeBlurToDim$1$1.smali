.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeBlurToDim$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeBlurToDim$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/16 v0, 0xff

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeBlurToDim$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeBlurToDim$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeBlurToDim$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz p0, :cond_3

    sub-int/2addr v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setDrawBackgroundAlpha(I)V

    :cond_3
    return-void
.end method
