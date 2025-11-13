.class public final Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# instance fields
.field public final mCallbacks:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public mCanDismissLockScreen:Z

.field public final mContext:Landroid/content/Context;

.field public mDismissAmount:F

.field public mDismissingFromTouch:Z

.field public mFaceEnrolledAndEnabled:Z

.field public mFingerprintEnabled:Z

.field public mFlingingToDismissKeyguard:Z

.field public mFlingingToDismissKeyguardDuringSwipeGesture:Z

.field public mIsSwipeBouncer:Z

.field public mKeyguardFadingAway:Z

.field public mKeyguardFadingAwayDelay:J

.field public mKeyguardFadingAwayDuration:J

.field public mKeyguardGoingAway:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLaunchTransitionFadingAway:Z

.field public final mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

.field public mOccluded:Z

.field public mPrimaryBouncerShowing:Z

.field public mSecure:Z

.field public mShowing:Z

.field public mSnappingKeyguardBackAfterSwipe:Z

.field public mTrustManaged:Z

.field public mTrusted:Z

.field public final mUnlockAnimationControllerLazy:Ldagger/Lazy;

.field public final mUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Ldagger/Lazy;Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance p3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;

    const/4 p7, 0x0

    invoke-direct {p3, p0, p7}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mIsSwipeBouncer:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFingerprintEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "KeyguardStateControllerImpl"

    invoke-static {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    const-string v0, "Callback must not be null. b/128895449"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "KeyguardStateController:"

    const-string v0, "  mShowing: "

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const-string v1, "  mOccluded: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const-string v1, "  mSecure: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    const-string v1, "  mCanDismissLockScreen: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    const-string v1, "  mTrustManaged: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrustManaged:Z

    const-string v1, "  mTrusted: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mDebugUnlocked: false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mFaceEnrolled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceEnrolledAndEnabled:Z

    const-string v1, "  mFingerprintEnabled: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFingerprintEnabled:Z

    const-string v1, "  isKeyguardFadingAway: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    const-string v1, "  isKeyguardGoingAway: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    const-string v1, "  isLaunchTransitionFadingAway: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final invokeForEachCallback(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final isShownSwipeBouncer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mIsSwipeBouncer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyKeyguardGoingAway(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eq v0, p1, :cond_0

    const-wide/16 v0, 0x1000

    const-string v2, "keyguardGoingAway"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final notifyKeyguardState(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardShowing(ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyguard showing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " occluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x1000

    const-string v2, "UI Events"

    invoke-static {v0, v1, v2, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const-string p2, "KeyguardStateController#notifyKeyguardChanged"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    const-string v0, "Callback must not be null. b/128895449"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(Z)V
    .locals 7

    const-string v0, "KeyguardStateController#update"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v5

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-ne v2, v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-ne v3, v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrustManaged:Z

    if-ne v4, v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    if-ne v6, v0, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceEnrolledAndEnabled:Z

    if-ne v6, v5, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFingerprintEnabled:Z

    if-eq v6, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrustManaged:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceEnrolledAndEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFingerprintEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {p1, v2, v3, v0, v4}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logKeyguardStateUpdate(ZZZZ)V

    const-string p1, "KeyguardStateController#notifyUnlockedChanged"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
