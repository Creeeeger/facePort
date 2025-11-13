.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dozeAmount:F

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-nez p0, :cond_0

    const-string p0, "KeyguardTouchAnimator"

    const-string p1, "dozeAmount cleared"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startCancelAnimation()V

    :cond_0
    return-void
.end method
