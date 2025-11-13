.class public final Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelScaleAnimator$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelScaleAnimator$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    iput-object p2, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelScaleAnimator$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 2

    sget p1, Lcom/android/systemui/power/ChargerNowBarView;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelScaleAnimator$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    iget-object v0, p1, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevelContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelScaleAnimator$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p1, p1, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevelContainer$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method
