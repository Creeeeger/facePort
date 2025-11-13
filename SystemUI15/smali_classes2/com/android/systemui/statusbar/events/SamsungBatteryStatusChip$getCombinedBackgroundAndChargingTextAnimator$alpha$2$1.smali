.class public final Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$2$1;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$2$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$2$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$2$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$2$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
