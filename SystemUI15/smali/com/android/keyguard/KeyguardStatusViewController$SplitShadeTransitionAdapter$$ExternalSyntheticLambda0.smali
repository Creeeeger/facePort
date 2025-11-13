.class public final synthetic Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;

    iput p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;

    iget v1, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->mController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->onPositionUpdated(IIF)V

    :goto_0
    return-void
.end method
