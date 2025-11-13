.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;


# instance fields
.field public final synthetic $keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpansionReset()V
    .locals 3

    const-string v0, "KeyguardTouchAnimator"

    const-string v1, "onExpansionReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setPanelExpandingStarted(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset(Z)V

    return-void
.end method

.method public final onExpansionStarted()V
    .locals 2

    const-string v0, "KeyguardTouchAnimator"

    const-string v1, "onExpansionStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setDraggingDownStarted(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 0

    new-instance p1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3$setTransitionToFullShadeAmount$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3$setTransitionToFullShadeAmount$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityForMove(Ljava/lang/Runnable;)V

    return-void
.end method
