.class public final Lcom/android/systemui/qs/QSOnboardingActivity$initStrokeAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initStrokeAnimator$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initStrokeAnimator$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateStroke:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initStrokeAnimator$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherStroke:Landroid/widget/FrameLayout;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    sub-float/2addr v2, p1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateStroke:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    move-object v0, v3

    :cond_3
    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initStrokeAnimator$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherStroke:Landroid/widget/FrameLayout;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, p0

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_2
    return-void
.end method
