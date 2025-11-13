.class public final Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryBackgroundAnimator$alphaAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroidx/core/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryBackgroundAnimator$alphaAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryBackgroundAnimator$alphaAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryBackgroundAnimator$alphaAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryBackgroundAnimator$alphaAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
