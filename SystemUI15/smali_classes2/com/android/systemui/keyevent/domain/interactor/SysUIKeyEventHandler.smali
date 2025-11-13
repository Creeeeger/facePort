.class public final Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler$Companion;


# instance fields
.field public final backActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

.field public final keyguardKeyEventInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->Companion:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/back/domain/interactor/BackActionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->backActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->keyguardKeyEventInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->keyguardKeyEventInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->Companion:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler$Companion;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v6, 0x18

    if-eq v2, v6, :cond_0

    const/16 v6, 0x19

    if-eq v2, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mediaSessionLegacyHelperWrapper:Lcom/android/systemui/media/controls/util/MediaSessionLegacyHelperWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    :goto_0
    move v0, v3

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v2, v2, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {v2}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0, v1, v4, v3, v4}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(FIZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showPrimaryBouncer(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->dispatchMenuKeyEvent()Z

    move-result v0

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v4

    :goto_3
    if-eqz v0, :cond_6

    return v3

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    move v4, v3

    :cond_7
    if-eqz v4, :cond_8

    iget-object p0, p0, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->backActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->onBackRequested()Z

    :cond_8
    return v3

    :cond_9
    return v4
.end method

.method public final interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->keyguardKeyEventInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;

    iget-object v2, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v3, v6, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    sget-object v12, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    if-eqz v9, :cond_3

    if-eq v9, v6, :cond_2

    goto :goto_1

    :cond_2
    iget v10, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    if-lez v10, :cond_5

    sub-int/2addr v10, v6

    aget v10, v12, v10

    if-ne v8, v10, :cond_5

    :goto_0
    move v8, v4

    goto :goto_2

    :cond_3
    iget-object v13, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v13, v13, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-ne v13, v7, :cond_5

    iget v13, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    aget v14, v12, v13

    if-ne v8, v14, :cond_5

    if-eqz v13, :cond_4

    iget-wide v14, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x320

    cmp-long v8, v14, v16

    if-gtz v8, :cond_5

    :cond_4
    iput-wide v10, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    add-int/2addr v13, v6

    iput v13, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    goto :goto_0

    :cond_5
    :goto_1
    move v8, v6

    :goto_2
    iget-boolean v10, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    const-string v11, "KeyguardSysDumpTrigger"

    if-eqz v10, :cond_6

    iget v10, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    const-string v13, "interceptKey action="

    const-string v14, " index="

    const-string v15, " reset="

    invoke-static {v9, v10, v13, v14, v15}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v10, v8, v11}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_6
    if-nez v9, :cond_7

    iget v10, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    array-length v13, v12

    div-int/2addr v13, v7

    rem-int/2addr v10, v13

    if-ne v10, v6, :cond_7

    iget-object v7, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_7
    if-nez v9, :cond_8

    iget v7, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    array-length v9, v12

    if-ne v7, v9, :cond_8

    const-string v7, "matched keys"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(IJJ)V

    move v8, v6

    :cond_8
    if-eqz v8, :cond_9

    iput v4, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    :cond_9
    :goto_3
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    if-ne v2, v6, :cond_a

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v6

    goto :goto_4

    :cond_a
    move v2, v4

    :goto_4
    if-nez v2, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->IGNORED_EXT_KEYCODE:[Ljava/lang/Integer;

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    move v2, v6

    goto :goto_5

    :cond_b
    move v2, v4

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v7, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v3, v0, v8, v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "CentralSurfaces"

    const-string v9, "interceptRestKey isRestKey=%s event=%s, state=%d, isDozing=%s"

    invoke-static {v8, v9, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-ne v3, v6, :cond_19

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    if-nez v3, :cond_19

    if-nez v2, :cond_c

    goto/16 :goto_8

    :cond_c
    new-array v2, v6, [Z

    aput-boolean v4, v2, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    if-nez v3, :cond_d

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    :cond_d
    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_e

    iput v4, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_f

    iget-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v3

    if-nez v3, :cond_f

    iget v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    if-lez v3, :cond_f

    iput v4, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v9, 0x0

    if-ne v3, v6, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    iget-object v10, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    if-nez v10, :cond_10

    if-ne v3, v6, :cond_11

    :cond_10
    if-eqz v10, :cond_12

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    const-string v0, "interceptRestKey : reset state"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    iput-object v9, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    :goto_6
    move v0, v6

    goto/16 :goto_9

    :cond_12
    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    if-nez v3, :cond_13

    const-string v0, "interceptRestKey : ignore screen on ACTION_UP"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    iput-object v9, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    goto :goto_6

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/view/InputDevice;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v6

    goto :goto_7

    :cond_14
    move v3, v4

    :goto_7
    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v11, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v10, v11}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isSideSyncEnabled()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-ne v11, v6, :cond_17

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v11

    if-eqz v11, :cond_15

    iget v11, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mKeyUpCountInDozing:I

    if-lez v11, :cond_17

    :cond_15
    iput-object v9, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    if-nez v3, :cond_16

    if-eqz v10, :cond_17

    :cond_16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string v11, "interceptRestKey isExt=%s, sideSync=%s"

    invoke-static {v8, v11, v9}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->context:Landroid/content/Context;

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;

    invoke-direct {v9, v2, v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;-><init>([ZLandroid/view/KeyEvent;Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_17
    if-nez v3, :cond_18

    if-nez v10, :cond_18

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-ne v3, v6, :cond_18

    invoke-interface {v5, v0}, Lcom/android/keyguard/KeyguardViewController;->interceptRestKey(Landroid/view/KeyEvent;)Z

    move-result v3

    aput-boolean v3, v2, v4

    if-eqz v3, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    invoke-static {v0}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onUserTouch$default(Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V

    :cond_18
    aget-boolean v0, v2, v4

    goto :goto_9

    :cond_19
    :goto_8
    move v0, v4

    :goto_9
    if-eqz v0, :cond_1b

    :cond_1a
    move v4, v6

    :cond_1b
    return v4
.end method
