.class final Lcom/android/systemui/aibrief/ui/BriefViewController$showAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic $lottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $this_apply:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showAnimation$1$1;->$lottieView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showAnimation$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showAnimation$1$1;->$lottieView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showAnimation$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
