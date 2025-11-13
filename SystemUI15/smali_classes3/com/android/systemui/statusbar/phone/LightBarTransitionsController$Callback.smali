.class public final Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final mSelf:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final appTransitionCancelled(I)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz p0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz p1, :cond_1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->getTintAnimationDuration()I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(JJF)V

    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final appTransitionPending(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz p0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final appTransitionStarting(JJZI)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz p0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    if-ne v0, p6, :cond_3

    iget-object p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p6, p6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz p6, :cond_0

    if-nez p5, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    const/4 p6, 0x0

    if-eqz p5, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_1

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(JJF)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz p0, :cond_1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDozeAmount:F

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    :cond_1
    :goto_0
    return-void
.end method
