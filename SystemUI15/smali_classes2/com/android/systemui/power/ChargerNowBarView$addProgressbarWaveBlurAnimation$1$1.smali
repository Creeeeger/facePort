.class public final Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroidx/core/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/power/ChargerNowBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/ChargerNowBarView;Landroidx/core/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    iput-object p2, p0, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 3

    sget p1, Lcom/android/systemui/power/ChargerNowBarView;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    invoke-virtual {p1}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/power/ChargerAnimationConstants;->WAVE_KEY_PATH:Lcom/airbnb/lottie/model/KeyPath;

    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->BLUR_RADIUS:Ljava/lang/Float;

    new-instance v2, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1$1;

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1$1;-><init>(Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    return-void
.end method
