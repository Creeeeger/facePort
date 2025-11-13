.class public final Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hiding$3;
.super Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hiding$3;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    const-string p1, "Hide"

    const/4 v0, 0x0

    const-string v1, "PanelAffordanceAnimator"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hiding$3;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullyExpanded:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullySlidden:Z

    return-void
.end method
