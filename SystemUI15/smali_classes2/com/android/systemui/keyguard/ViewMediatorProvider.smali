.class public final Lcom/android/systemui/keyguard/ViewMediatorProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final adjustStatusBarLocked:Lkotlin/jvm/functions/Function0;

.field public final alarmManager:Lkotlin/jvm/functions/Function0;

.field public final cancelKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

.field public final dismissMsg:Lkotlin/jvm/functions/Function0;

.field public final doKeyguardLaterLocked:Lkotlin/jvm/functions/Function0;

.field public final doKeyguardLocked:Lkotlin/jvm/functions/Function1;

.field public final getDelayedShowingSequence:Lkotlin/jvm/functions/Function0;

.field public final getLockTimeout:Lkotlin/jvm/functions/Function1;

.field public final getStateCallbackCount:Lkotlin/jvm/functions/Function0;

.field public final getSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

.field public final handleHide:Lkotlin/jvm/functions/Function0;

.field public final handler:Lkotlin/jvm/functions/Function0;

.field public final hasPendingLock:Lkotlin/jvm/functions/Function0;

.field public final hideLocked:Lkotlin/jvm/functions/Function0;

.field public final hideMsg:Lkotlin/jvm/functions/Function0;

.field public final increaseDelayedShowingSeq:Lkotlin/jvm/functions/Function0;

.field public final initAlphaForAnimationTargets:Lkotlin/jvm/functions/Function1;

.field public final isExternallyEnabled:Lkotlin/jvm/functions/Function0;

.field public final isKeyguardDonePending:Lkotlin/jvm/functions/Function0;

.field public final isShowing:Lkotlin/jvm/functions/Function0;

.field public final isWakeAndUnlocking:Lkotlin/jvm/functions/Function0;

.field public final keyguardDOnePendingTimeoutMsg:Lkotlin/jvm/functions/Function0;

.field public final keyguardDoneDrawingMsg:Lkotlin/jvm/functions/Function0;

.field public final keyguardDoneMsg:Lkotlin/jvm/functions/Function0;

.field public final keyguardTimeoutMsg:Lkotlin/jvm/functions/Function0;

.field public final lock:Lkotlin/jvm/functions/Function0;

.field public final notifyFinishedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

.field public final notifyStartedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

.field public final notifyStartedWakingUoMsg:Lkotlin/jvm/functions/Function0;

.field public final playSound:Lkotlin/jvm/functions/Function1;

.field public final resetMsg:Lkotlin/jvm/functions/Function0;

.field public final resetPendingLock:Lkotlin/jvm/functions/Function0;

.field public final resetPendingReset:Lkotlin/jvm/functions/Function0;

.field public final resetStateLocked:Lkotlin/jvm/functions/Function0;

.field public final resetSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

.field public final setHiding:Lkotlin/jvm/functions/Function1;

.field public final setOccludedMsg:Lkotlin/jvm/functions/Function0;

.field public final setRemoteAnimationTarget:Lkotlin/jvm/functions/Function1;

.field public final setShowingLocked:Lkotlin/jvm/functions/Function2;

.field public final setUnoccludeFinishedCallback:Lkotlin/jvm/functions/Function1;

.field public final showKeyguardWakeLock:Lkotlin/jvm/functions/Function0;

.field public final showMsg:Lkotlin/jvm/functions/Function0;

.field public final startKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

.field public final systemReadyMsg:Lkotlin/jvm/functions/Function0;

.field public final tryKeyguardDone:Lkotlin/jvm/functions/Function0;

.field public final updatePhoneState:Lkotlin/jvm/functions/Function1;

.field public final userPresentIntent:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->showMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hideMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->notifyFinishedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardDoneMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardDoneDrawingMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setOccludedMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardTimeoutMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->dismissMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->startKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->keyguardDOnePendingTimeoutMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->notifyStartedWakingUoMsg:Lkotlin/jvm/functions/Function0;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->notifyStartedGoingToSleepMsg:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->systemReadyMsg:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->cancelKeyguardExitAnimMsg:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->lock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->handler:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->alarmManager:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->showKeyguardWakeLock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->userPresentIntent:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isWakeAndUnlocking:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hasPendingLock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isShowing:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isExternallyEnabled:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isKeyguardDonePending:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getDelayedShowingSequence:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetStateLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->adjustStatusBarLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLaterLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->handleHide:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hideLocked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->tryKeyguardDone:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setShowingLocked:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLocked:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->playSound:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingLock:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingReset:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setHiding:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->increaseDelayedShowingSeq:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getStateCallbackCount:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getLockTimeout:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p47

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->updatePhoneState:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p48

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->initAlphaForAnimationTargets:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p49

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setRemoteAnimationTarget:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p50

    iput-object v1, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setUnoccludeFinishedCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method
