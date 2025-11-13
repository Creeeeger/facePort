.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;
.super Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activityLaunchProgress:F

.field public final alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public final configurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;

.field public inputBouncerExpansion:F

.field public isLaunchingActivity:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public launchTransitionFadingAway:Z

.field public final mActivityTransitionAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$mActivityTransitionAnimatorListener$1;

.field public final occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

.field public panelExpansionFraction:F

.field public final primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public qsExpansion:F

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public showingUdfpsBouncer:Z

.field public final stateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;

.field public statusBarState:I

.field public final transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final transitionToFullShadeProgress:F

.field public final udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final udfpsKeyguardAccessibilityDelegate:Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;

.field public udfpsRequested:Z

.field public final uniqueIdentifier:Ljava/lang/String;

.field public final unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/biometrics/UdfpsController;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 8

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p18

    move-object/from16 v4, p10

    move-object v5, p5

    move-object/from16 v6, p19

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V

    move-object v0, p1

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    move-object v0, p3

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object v0, p4

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v0, p11

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    move-object/from16 v0, p13

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v0, p14

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v0, p16

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v0, p17

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$mActivityTransitionAnimatorListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$mActivityTransitionAnimatorListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    iput-object v0, v7, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy code path not supported when com.android.systemui.device_entry_udfps_refactor is enabled."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    const-string v0, "showingUdfpsAltBouncer="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p2}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "altBouncerInteractor#isAlternateBouncerVisible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "altBouncerInteractor#canShowAlternateBouncerForFingerprint=false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "faceDetectRunning=false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarState:I

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "statusBarState="

    invoke-static {p1, v0, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->transitionToFullShadeProgress:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transitionToFullShadeProgress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->qsExpansion:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qsExpansion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->panelExpansionFraction:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "panelExpansionFraction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    iget v0, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    const-string/jumbo v1, "unpausedAlpha="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    const-string/jumbo v1, "udfpsRequestedByApp="

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->launchTransitionFadingAway:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchTransitionFadingAway="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "lastDozeAmount=0.0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inputBouncerExpansion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "UdfpsKeyguardView ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "    mPauseAuth="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    const-string v1, "    mUnpausedAlpha="

    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    const-string v1, "    mUdfpsRequested="

    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-boolean v0, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mUdfpsRequested:Z

    const-string v1, "    mInterpolatedDarkAmount="

    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    const-string v1, "    mAnimationType="

    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UdfpsKeyguardViewController"

    return-object p0
.end method

.method public final listenForAlternateBouncerToAodTransitions(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAlternateBouncerToAodTransitions$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAlternateBouncerToAodTransitions$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForAlternateBouncerVisibility(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAlternateBouncerVisibility$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAlternateBouncerVisibility$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForAodToOccludedTransitions(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAodToOccludedTransitions$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAodToOccludedTransitions$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForBouncerExpansion(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForBouncerExpansion$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForBouncerExpansion$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForDreamingToAodTransitions(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForDreamingToAodTransitions$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForDreamingToAodTransitions$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForGoneToAodTransition(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForGoneToAodTransition$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForGoneToAodTransition$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForLockscreenAodTransitions(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForLockscreenAodTransitions$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForLockscreenAodTransitions$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForOccludedToAodTransition(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForOccludedToAodTransition$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForOccludedToAodTransition$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForPrimaryBouncerToAodTransitions(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForPrimaryBouncerToAodTransitions$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForPrimaryBouncerToAodTransitions$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->setAlternateBouncerUIAvailable()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewDetached()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewDetached()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->setAlternateBouncerUIAvailable()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final shouldPauseAuth()Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->launchTransitionFadingAway:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarState:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    int-to-double v3, p0

    const-wide v5, 0x4039800000000000L    # 25.5

    cmpg-double p0, v3, v5

    if-gez p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public final updateAlpha()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    sub-float v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->panelExpansionFraction:F

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x437f0000    # 255.0f

    invoke-static {v2, v4, v3, v5, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    invoke-static {v0, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    float-to-int v0, v0

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    if-nez v2, :cond_3

    int-to-float v0, v0

    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->qsExpansion:F

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v1, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->transitionToFullShadeProgress:F

    sub-float v2, v1, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->isLaunchingActivity:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    if-nez v2, :cond_2

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchProgress:F

    sget-object v2, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v5, v2, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    const/16 v2, 0x53

    int-to-long v7, v2

    div-long/2addr v5, v7

    long-to-float v2, v5

    mul-float/2addr p0, v2

    invoke-static {p0, v3, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    sub-float/2addr v1, p0

    int-to-float p0, v0

    mul-float/2addr p0, v1

    float-to-int v0, p0

    :cond_2
    int-to-float p0, v0

    iget v0, v4, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mDialogSuggestedAlpha:F

    mul-float/2addr p0, v0

    float-to-int v0, p0

    :cond_3
    iput v0, v4, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    invoke-virtual {v4}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateAlpha()I

    return-void
.end method
