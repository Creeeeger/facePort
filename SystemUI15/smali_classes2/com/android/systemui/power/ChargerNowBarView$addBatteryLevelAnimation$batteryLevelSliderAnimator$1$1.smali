.class public final Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelSliderAnimator$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelSliderAnimator$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    iput-object p2, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelSliderAnimator$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 1

    sget p1, Lcom/android/systemui/power/ChargerNowBarView;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelSliderAnimator$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    iget-object p1, p1, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelSliderAnimator$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
