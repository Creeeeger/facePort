.class final Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic $lottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;Lcom/android/systemui/aibrief/ui/BriefViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->$lottieView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->$lottieView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-static {p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->access$getIconContainer$p(Lcom/android/systemui/aibrief/ui/BriefViewController;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-static {p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->access$getSubText$p(Lcom/android/systemui/aibrief/ui/BriefViewController;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const v0, 0x3f19999a    # 0.6f

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    return-void
.end method
