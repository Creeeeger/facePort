.class public final Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public bouncerShowing:Z

.field public final bypassEnabled:Z

.field public final bypassOverride:I

.field public final configFaceAuthSupportedPosture:I

.field public final faceAuthEnabledChangedCallback:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$faceAuthEnabledChangedCallback$1;

.field public final fpLockStayEnabled:Z

.field public final hasFaceFeature:Z

.field public isPulseExpanding:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public launchingAffordance:Z

.field public final listeners:Ljava/util/List;

.field public final lockStayEnabled:Z

.field public pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

.field public postureState:I

.field public qsExpanded:Z

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final shadeInteractorLazy:Ldagger/Lazy;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/pm/PackageManager;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->shadeInteractorLazy:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->listeners:Ljava/util/List;

    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$faceAuthEnabledChangedCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$faceAuthEnabledChangedCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->faceAuthEnabledChangedCallback:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$faceAuthEnabledChangedCallback$1;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->lockStayEnabled:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->fpLockStayEnabled:Z

    const p3, 0x7f0b0025

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassOverride:I

    const p3, 0x7f0b0024

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->configFaceAuthSupportedPosture:I

    const-string p3, "android.hardware.biometrics.face"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    check-cast p9, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {p9, p1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    const-string p1, "KeyguardBypassController"

    invoke-virtual {p11, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    invoke-interface {p5, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->notifyListeners$1$1()V

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    check-cast p6, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final canBypass()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->getCurrentState()Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qsExpanded:Z

    if-eqz p0, :cond_0

    :cond_5
    :goto_1
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "KeyguardBypassController:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPendingUnlock.pendingUnlockType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPendingUnlock.isStrongBiometric: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPendingUnlock: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  bypassEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  lockStayEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getFpLockStayEnabled()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " fplockstayEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result p2

    const-string v0, "  canBypass: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    const-string v0, "  bouncerShowing: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->getCurrentState()Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const-string v0, "  altBouncerShowing: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    const-string v0, "  isPulseExpanding: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    const-string v0, "  launchingAffordance: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qsExpanded:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  qSExpanded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  hasFaceFeature: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->postureState:I

    const-string p2, "  postureState: "

    invoke-static {p2, p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public final getBypassEnabled()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassOverride:I

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceEnrolledAndEnabled:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->configFaceAuthSupportedPosture:I

    if-nez v2, :cond_2

    :goto_1
    move p0, v1

    goto :goto_2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->postureState:I

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_2
    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public final getFpLockStayEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->fpLockStayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFingerprintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFingerprintStayOnLock()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getLockStayEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->lockStayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceEnrolledAndEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybePerformPendingUnlock()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    :cond_1
    return-void
.end method

.method public final notifyListeners$1$1()V
    .locals 5

    sget-object v0, Lcom/android/app/tracing/ListenersTracing;->INSTANCE:Lcom/android/app/tracing/ListenersTracing;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$notifyListeners$$inlined$forEachTraced$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$notifyListeners$$inlined$forEachTraced$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$notifyListeners$$inlined$forEachTraced$1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardBypassController#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;->onBypassStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0

    :cond_3
    return-void
.end method

.method public final onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z
    .locals 2

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qsExpanded:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final registerOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->faceAuthEnabledChangedCallback:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$faceAuthEnabledChangedCallback$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final unregisterOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->faceAuthEnabledChangedCallback:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$faceAuthEnabledChangedCallback$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
