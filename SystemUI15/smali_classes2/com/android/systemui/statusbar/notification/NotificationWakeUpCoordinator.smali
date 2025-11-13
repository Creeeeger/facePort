.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final delayedDozeAmount:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

.field public static final notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;


# instance fields
.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public collapsedEnoughToHide:Z

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public delayedDozeAmountAnimator:Landroidx/core/animation/ObjectAnimator;

.field public delayedDozeAmountOverride:F

.field public final dozeAmountInterpolator:Landroid/view/animation/Interpolator;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public fullyAwake:Z

.field public hardDozeAmountOverride:Ljava/lang/Float;

.field public hardDozeAmountOverrideSource:Ljava/lang/String;

.field public inputEasedDozeAmount:F

.field public inputLinearDozeAmount:F

.field public final logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

.field public final mEntrySetToClearWhenFinished:Ljava/util/Set;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mLinearVisibilityAmount:F

.field public mNotificationsVisible:Z

.field public mNotificationsVisibleForExpansion:Z

.field public mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mVisibilityAmount:F

.field public mVisibilityAnimator:Landroidx/core/animation/ObjectAnimator;

.field public mVisibilityInterpolator:Landroid/view/animation/Interpolator;

.field public notificationsFullyHidden:Z

.field public final notifsKeyguardInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;

.field public outputEasedDozeAmount:F

.field public outputLinearDozeAmount:F

.field public pulseExpanding:Z

.field public pulsing:Z

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public state:I

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final wakeUpListeners:Ljava/util/ArrayList;

.field public wakingUp:Z

.field public willWakeUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmount:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifsKeyguardInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    sget-object p6, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    const-string p6, "n/a"

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    sget-object p6, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeAmountInterpolator:Landroid/view/animation/Interpolator;

    new-instance p6, Ljava/util/LinkedHashSet;

    invoke-direct {p6}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    const/4 p7, 0x1

    iput p7, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    new-instance p7, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$bypassStateChangedListener$1;

    invoke-direct {p7, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$bypassStateChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    check-cast p3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    invoke-interface {p4, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-virtual {p5, p7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->registerOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$2;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic getDozeAmountInterpolator$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStatusBarState$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final clearHardDozeAmountOverride()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    const-string v1, "Cleared: "

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmount()V

    const/4 p0, 0x1

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inputLinearDozeAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputEasedDozeAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inputEasedDozeAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delayedDozeAmountOverride: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hardDozeAmountOverride: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    const-string v0, "hardDozeAmountOverrideSource: "

    invoke-static {p1, v0, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "outputLinearDozeAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "outputEasedDozeAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mNotificationVisibleAmount: 0.0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    const-string v0, "mNotificationsVisible: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    const-string v0, "mNotificationsVisibleForExpansion: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mVisibilityAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLinearVisibilityAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    const-string v0, "pulseExpanding: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "state: "

    invoke-static {p1, v0, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    const-string v0, "fullyAwake: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    const-string/jumbo v0, "wakingUp: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    const-string/jumbo v0, "willWakeUp: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    const-string v0, "collapsedEnoughToHide: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    const-string v0, "pulsing: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notificationsFullyHidden: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result p0

    const-string p2, "canShowPulsingHuns: "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final getCanShowPulsingHuns()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public final logDelayingClockWakeUpAnimation(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2;

    const-string v2, "NotificationWakeUpCoordinator"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final maybeClearHardDozeAmountOverrideHidingNotifs()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v5, v5, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->overrideNotificationsFullyDozingOnKeyguard()Z

    move-result v6

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-nez v4, :cond_2

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2;

    const/4 v9, 0x0

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v10, "NotificationWakeUpCoordinator"

    invoke-virtual {v3, v10, v7, v8, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    const-string/jumbo v8, "willRemove="

    const-string v9, " onKeyguard="

    const-string v10, " dozing="

    invoke-static {v8, v9, v10, v2, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " bypass="

    const-string v9, " animating="

    invoke-static {v1, v0, v8, v4, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v0, " idleOnCommunal="

    invoke-static {v1, v6, v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v1, v7

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->clearHardDozeAmountOverride()Z

    :cond_3
    return-void
.end method

.method public final notifyAnimationStart(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x3fe66666    # 1.8f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    :cond_4
    return-void
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastOnDozeAmountChangedLogWasFractional:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->allowThrottle:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastOnDozeAmountChangedLogWasFractional:Z

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "NotificationWakeUpCoordinator"

    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    float-to-double v3, p1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v3, v5, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputEasedDozeAmount:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->overrideNotificationsFullyDozingOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Override: animating screen off"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfBypass()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfCommunalShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->clearHardDozeAmountOverride()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmount()V

    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    :cond_0
    return-void
.end method

.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_4

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float p2, p2, v2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-nez p2, :cond_5

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    const v0, 0x3f666666    # 0.9f

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->releaseAllImmediately()V

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnStateChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnStateChanged$2;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "NotificationWakeUpCoordinator"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v0, v3, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "Override: Shade->Shade (lock cancelled by unlock)"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->overrideNotificationsFullyDozingOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Override: animating screen off"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfBypass()Z

    move-result v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfCommunalShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->maybeClearHardDozeAmountOverrideHidingNotifs()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    return-void
.end method

.method public final overrideDozeAmountIfBypass()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "Override: bypass (keyguard)"

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Override: bypass (shade)"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public final overrideDozeAmountIfCommunalShowing()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "Override: communal (keyguard)"

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Override: communal (shade)"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public final setHardDozeAmountOverride(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "NotificationWakeUpCoordinator"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmount()V

    :goto_3
    return-void
.end method

.method public final setNotificationsVisible(ZZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroidx/core/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_2

    sget-object p2, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    sget-object p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-static {p0, p1, p2}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    invoke-virtual {p1, p2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    const-wide/16 v0, 0x1f4

    if-eqz p3, :cond_4

    long-to-float p2, v0

    const/high16 p3, 0x3fc00000    # 1.5f

    div-float/2addr p2, p3

    float-to-long v0, p2

    :cond_4
    invoke-virtual {p1, v0, v1}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    invoke-virtual {p1}, Landroidx/core/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroidx/core/animation/ObjectAnimator;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    :goto_1
    return-void
.end method

.method public final setNotificationsVisibleForExpansion(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->releaseAllImmediately()V

    :cond_0
    return-void
.end method

.method public final setVisibilityAmount(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v3

    if-nez v1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetVisibilityAmountLogWasFractional:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->allowThrottle:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetVisibilityAmountLogWasFractional:Z

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2;

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "NotificationWakeUpCoordinator"

    invoke-virtual {v0, v6, v1, v4, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    float-to-double v4, p1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v4, v6, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    iget p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    cmpg-float p1, p1, v3

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float p1, p1, v3

    if-nez p1, :cond_6

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    return-void
.end method

.method public final setWakingUp(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetWakingUp$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetWakingUp$2;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "NotificationWakeUpCoordinator"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v2, v7, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-eqz v1, :cond_b

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-eqz v7, :cond_a

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    if-nez v7, :cond_a

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v7, :cond_0

    move-object v7, v9

    :cond_0
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v12, v3

    :goto_0
    const/16 v13, 0x8

    if-ge v12, v11, :cond_2

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_1

    instance-of v15, v14, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v15, :cond_1

    iget-object v15, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v14, v15, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v12, v4

    goto :goto_0

    :cond_2
    move-object v14, v9

    :goto_1
    if-eqz v14, :cond_4

    iget-boolean v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    if-eqz v11, :cond_3

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeadsUpHeightWithoutHeader()I

    move-result v11

    :goto_2
    int-to-float v11, v11

    goto :goto_3

    :cond_3
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    move v14, v3

    move v15, v4

    :goto_4
    if-ge v14, v11, :cond_a

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-ne v9, v13, :cond_5

    goto :goto_6

    :cond_5
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v6, v9, :cond_6

    move v9, v4

    goto :goto_5

    :cond_6
    move v9, v3

    :goto_5
    instance-of v13, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v13, :cond_7

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_8

    if-nez v9, :cond_8

    if-eqz v15, :cond_9

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v9

    iget v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v6, v6

    add-float/2addr v9, v6

    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v9, v6

    move v15, v3

    move v12, v9

    goto :goto_6

    :cond_8
    if-nez v15, :cond_9

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_9
    :goto_6
    add-int/2addr v14, v4

    const/4 v9, 0x0

    const/16 v13, 0x8

    goto :goto_4

    :cond_a
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result v6

    invoke-virtual {v0, v6, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    :cond_b
    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountAnimator:Landroidx/core/animation/ObjectAnimator;

    if-eqz v1, :cond_c

    move v1, v4

    goto :goto_7

    :cond_c
    move v1, v3

    :goto_7
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logStartDelayedDozeAmountAnimation$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logStartDelayedDozeAmountAnimation$2;

    const/4 v7, 0x0

    invoke-virtual {v5, v8, v2, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v5, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmount:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;->setValue(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V

    new-array v2, v4, [F

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    invoke-virtual {v1, v2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnStart$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnStart$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroidx/core/animation/ObjectAnimator;->start()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountAnimator:Landroidx/core/animation/ObjectAnimator;

    :cond_e
    :goto_8
    return-void
.end method

.method public final shouldAnimateVisibility()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateDozeAmount()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    cmpg-float v2, v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    xor-int/2addr v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v5

    const/4 v7, 0x0

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    cmpg-float v6, v0, v7

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    cmpg-float v6, v1, v7

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    cmpg-float v6, v1, v5

    if-nez v6, :cond_6

    :goto_2
    cmpg-float v1, v1, v5

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    :cond_6
    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeAmountInterpolator:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    iget v8, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v9}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float v11, v0, v5

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    cmpg-float v11, v0, v7

    if-nez v11, :cond_8

    :goto_5
    move v11, v4

    goto :goto_6

    :cond_8
    move v11, v3

    :goto_6
    cmpg-float v12, v1, v5

    if-nez v12, :cond_9

    goto :goto_7

    :cond_9
    cmpg-float v12, v1, v7

    if-nez v12, :cond_a

    :goto_7
    move v3, v4

    :cond_a
    const/4 v12, 0x0

    if-nez v11, :cond_b

    if-eqz v3, :cond_d

    :cond_b
    iget-boolean v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogInputWasFractional:Z

    if-ne v13, v11, :cond_d

    iget-boolean v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogDelayWasFractional:Z

    if-ne v13, v3, :cond_d

    iget v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogState:I

    if-ne v13, v9, :cond_d

    iget-object v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHardOverride:Ljava/lang/Float;

    if-nez v13, :cond_c

    if-nez v6, :cond_d

    goto :goto_8

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-nez v13, :cond_d

    :goto_8
    iget-boolean v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->allowThrottle:Z

    if-eqz v13, :cond_d

    goto :goto_9

    :cond_d
    iput-boolean v11, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogInputWasFractional:Z

    iput-boolean v3, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogDelayWasFractional:Z

    iput v9, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogState:I

    iput-object v6, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHardOverride:Ljava/lang/Float;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v11, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v13, "NotificationWakeUpCoordinator"

    invoke-virtual {v10, v13, v3, v11, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    float-to-double v13, v0

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v13, v0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    iput v9, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean v2, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v10, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    move-object v12, v0

    :goto_a
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v6, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_10

    iput v0, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float v6, v0, v7

    if-eqz v6, :cond_f

    cmpl-float v0, v0, v5

    if-nez v0, :cond_10

    :cond_f
    const v0, 0x47c35000    # 100000.0f

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    :cond_10
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    if-eqz v2, :cond_11

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    cmpg-float v0, v0, v7

    if-nez v0, :cond_11

    invoke-virtual {p0, v4, v4, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    invoke-virtual {p0, v4, v4, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    :cond_11
    return-void
.end method

.method public final updateHideAmount()V
    .locals 12

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    iget v4, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmount:F

    cmpg-float v4, v4, v0

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->allowThrottle:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_0

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iput v0, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmount:F

    cmpg-float v4, v0, v1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-nez v4, :cond_2

    :goto_0
    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    iget-boolean v9, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmountLogWasFractional:Z

    if-eqz v9, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmountLogWasFractional:Z

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetHideAmount$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetHideAmount$2;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v9, "NotificationWakeUpCoordinator"

    invoke-virtual {v3, v9, v4, v5, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    float-to-double v9, v0

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v9, v5, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v3, :cond_4

    move-object v3, v8

    :cond_4
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v4

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v5

    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    cmpl-float v10, v2, v1

    if-nez v10, :cond_5

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    cmpl-float v10, v10, v2

    if-eqz v10, :cond_5

    const v10, 0x47c35000    # 100000.0f

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    :cond_5
    iput v2, v9, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v2

    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v9

    if-eq v2, v4, :cond_8

    iget-object v10, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v11, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    move v11, v6

    goto :goto_4

    :cond_7
    :goto_3
    move v11, v7

    :goto_4
    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateVisibility(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetAllSwipeState()V

    :cond_8
    if-nez v5, :cond_9

    if-eqz v9, :cond_9

    iget-object v10, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v10, v7, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    :cond_9
    if-ne v2, v4, :cond_a

    if-eq v5, v9, :cond_b

    :cond_a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidateOutline()V

    :cond_b
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOwnTranslationZ()V

    cmpg-float v0, v0, v1

    if-nez v0, :cond_c

    move v6, v7

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    if-eq v0, v6, :cond_e

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    invoke-interface {v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;->onFullyHiddenChanged(Z)V

    goto :goto_5

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifsKeyguardInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;->repository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;->areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method public final updateNotificationVisibility(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->hasNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-eqz v1, :cond_4

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    return-void
.end method
