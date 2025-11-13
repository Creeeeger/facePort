.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition$createAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $direction:I

.field public final synthetic $fromLeft:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition$createAnimator$1;->this$0:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition;

    iput p2, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition$createAnimator$1;->$fromLeft:I

    iput p3, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition$createAnimator$1;->$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition$createAnimator$1;->this$0:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition$createAnimator$1;->$fromLeft:I

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition$createAnimator$1;->$direction:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->onPositionUpdated(IIF)V

    return-void
.end method
