.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $isTouchDownCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;->$isTouchDownCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;->$isTouchDownCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;->$isTouchDownCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    sget p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animate(Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;->$isTouchDownCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
