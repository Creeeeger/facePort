.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic $powerManager:Landroid/os/PowerManager;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$powerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "KeyguardTouchAnimator"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapDownEvent:Landroid/view/MotionEvent;

    const/4 p0, 0x1

    return p0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapDownEvent:Landroid/view/MotionEvent;

    const-string v4, "KeyguardTouchAnimator"

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x12c

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isConsideredDoubleTap: time out deltaTime="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapSlop:I

    mul-int/2addr v0, v0

    :goto_0
    mul-int v3, v5, v5

    mul-int v7, v6, v6

    add-int/2addr v7, v3

    if-lt v7, v0, :cond_2

    const-string p1, "isConsideredDoubleTap: over slop="

    const-string v0, ", deltaX="

    const-string v3, ", deltaY="

    invoke-static {v7, v5, p1, v0, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v6, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v3, :cond_4

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isFingerprintArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    move p1, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v1

    :goto_2
    const-string v0, "onDoubleTapEvent executeDoubleTap="

    invoke-static {v0, v4, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->$powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/16 v0, 0x17

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "101"

    const-string p1, "LSE1012"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :cond_5
    return v1
.end method
