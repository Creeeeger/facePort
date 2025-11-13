.class public final Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$scaleAnimation$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$scaleAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$scaleAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$scaleAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object v0, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$scaleAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
