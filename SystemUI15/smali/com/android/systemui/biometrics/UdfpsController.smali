.class public final Lcom/android/systemui/biometrics/UdfpsController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final LOCK_ICON_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final UDFPS_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivePointerId:I

.field public final mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public mAodInterruptRunnable:Ljava/lang/Runnable;

.field public mAttemptedToDismissKeyguard:Z

.field public mAuthControllerUpdateUdfpsLocation:Ljava/lang/Runnable;

.field public final mBiometricExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastReceiver:Lcom/android/systemui/biometrics/UdfpsController$2;

.field public final mCallbacks:Ljava/util/Set;

.field public mCancelAodFingerUpAction:Ljava/lang/Runnable;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultUdfpsTouchOverlayViewModel:Ldagger/Lazy;

.field public final mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final mDeviceEntryUdfpsTouchOverlayViewModel:Ldagger/Lazy;

.field public final mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mExecution:Lcom/android/systemui/util/concurrency/Execution;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mIgnoreRefreshRate:Z

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsAodInterruptActive:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mLastTouchInteractionTime:J

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mOnFingerDown:Z

.field final mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

.field mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

.field public mPointerPilfered:Z

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public final mScope:Lkotlinx/coroutines/CoroutineScope;

.field public final mScreenObserver:Lcom/android/systemui/biometrics/UdfpsController$1;

.field public mScreenOn:Z

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mTouchProcessor:Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;

.field public mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

.field public final mUdfpsKeyguardAccessibilityDelegate:Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;

.field public final mUdfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$monTouch(Lcom/android/systemui/biometrics/UdfpsController;JLandroid/view/MotionEvent;Z)Z
    .locals 32

    move-object/from16 v14, p0

    move-wide/from16 v1, p1

    move-object/from16 v0, p3

    const-string v15, "UdfpsController"

    const/4 v13, 0x0

    if-nez p4, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ignoring the touch injected from outside of UdfpsView"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_0
    iget-object v3, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-nez v3, :cond_1

    const-string v0, "ignoring onTouch with null overlay"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_1
    iget-wide v3, v3, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    cmp-long v3, v3, v1

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "ignoring stale touch event: "

    const-string v3, " current: "

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-wide v1, v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_3
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v11, -0x1

    if-eqz v3, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    goto :goto_2

    :cond_5
    :goto_1
    iput-boolean v13, v14, Lcom/android/systemui/biometrics/UdfpsController;->mPointerPilfered:Z

    iget v3, v14, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    if-eq v3, v11, :cond_6

    const-string v3, "onTouch down received without a preceding up"

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v11, v14, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    iget-boolean v3, v14, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-nez v3, :cond_7

    iput-boolean v13, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    :cond_7
    :goto_2
    iget v3, v14, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    iget-object v4, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v5, v14, Lcom/android/systemui/biometrics/UdfpsController;->mTouchProcessor:Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v12, 0x1

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Unsupported MotionEvent."

    invoke-static {v4, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    new-instance v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0xff

    const/16 v28, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v28}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    new-instance v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    sget-object v4, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->CANCEL:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    invoke-direct {v3, v4, v11, v0}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    goto/16 :goto_8

    :pswitch_2
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->processTouch$preprocess(Landroid/view/MotionEvent;ILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;)Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    sget-object v4, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    iget-object v4, v3, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->pointersOnSensor:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v12, :cond_b

    iget-object v4, v3, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->pointersOnSensor:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v3, v3, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    iget v5, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    if-ne v5, v0, :cond_8

    move-object v7, v4

    :cond_9
    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-nez v7, :cond_a

    new-instance v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0xff

    const/16 v28, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v28}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_a
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    sget-object v3, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->UP:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    invoke-direct {v0, v3, v11, v7}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    :goto_3
    move-object v3, v0

    goto/16 :goto_8

    :cond_b
    iget-object v4, v3, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->pointersOnSensor:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eq v6, v0, :cond_c

    goto :goto_4

    :cond_d
    move-object v5, v7

    :goto_4
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_e
    move v0, v11

    :goto_5
    iget-object v4, v3, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    iget v6, v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    if-ne v6, v0, :cond_f

    move-object v7, v5

    :cond_10
    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-nez v7, :cond_11

    iget-object v3, v3, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-nez v7, :cond_11

    new-instance v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0xff

    const/16 v28, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v28}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_11
    new-instance v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    sget-object v4, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->UNCHANGED:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    invoke-direct {v3, v4, v0, v7}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->processTouch$preprocess(Landroid/view/MotionEvent;ILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;)Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    iget v3, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->previousPointerOnSensorId:I

    if-eq v3, v11, :cond_12

    move v4, v12

    goto :goto_6

    :cond_12
    move v4, v13

    :goto_6
    iget-object v5, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->pointersOnSensor:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v12

    iget-object v6, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->pointersOnSensor:Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_7

    :cond_13
    move v6, v11

    :goto_7
    if-nez v4, :cond_17

    if-eqz v5, :cond_17

    iget-object v0, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    iget v4, v4, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    if-ne v4, v6, :cond_14

    move-object v7, v3

    :cond_15
    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-nez v7, :cond_16

    new-instance v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0xff

    const/16 v28, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v28}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_16
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    sget-object v3, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->DOWN:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    iget v4, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    invoke-direct {v0, v3, v4, v7}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    goto/16 :goto_3

    :cond_17
    if-eqz v4, :cond_1b

    if-nez v5, :cond_1b

    iget-object v0, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    iget v5, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    if-ne v5, v3, :cond_18

    move-object v7, v4

    :cond_19
    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-nez v7, :cond_1a

    new-instance v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0xff

    const/16 v28, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v28}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1a
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    sget-object v3, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->UP:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    invoke-direct {v0, v3, v11, v7}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    goto/16 :goto_3

    :cond_1b
    iget-object v3, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    iget v5, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    if-ne v5, v6, :cond_1c

    move-object v7, v4

    :cond_1d
    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-nez v7, :cond_1e

    iget-object v0, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-nez v7, :cond_1e

    new-instance v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0xff

    const/16 v28, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v28}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1e
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    sget-object v3, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->UNCHANGED:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    invoke-direct {v0, v3, v6, v7}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    goto/16 :goto_3

    :goto_8
    instance-of v0, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;

    if-eqz v0, :cond_1f

    check-cast v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;

    iget-object v0, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;->reason:Ljava/lang/String;

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_1f
    check-cast v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    iget v0, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;->pointerOnSensorId:I

    iput v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    sget-object v16, Lcom/android/systemui/biometrics/UdfpsController$3;->$SwitchMap$com$android$systemui$biometrics$udfps$InteractionEvent:[I

    iget-object v9, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;->event:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v16, v0

    const/4 v10, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    iget-object v4, v14, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v6, v14, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    iget-object v5, v14, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v3, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;->touchData:Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    if-eq v0, v12, :cond_24

    if-eq v0, v8, :cond_22

    if-eq v0, v7, :cond_22

    if-eq v0, v10, :cond_21

    :cond_20
    :goto_9
    move-object/from16 v29, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v30, v9

    move v14, v13

    move-object/from16 v22, v15

    move v15, v11

    goto :goto_a

    :cond_21
    iget v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    if-ne v0, v11, :cond_20

    invoke-virtual {v6}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onTouch()V

    goto :goto_9

    :cond_22
    sget-object v0, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->CANCEL:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    invoke-virtual {v0, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "This is a CANCEL event that\'s reported as an UP event!"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iput-boolean v13, v14, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget v4, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v17

    iget v0, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    iget v8, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    iget v7, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    iget v10, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    iget v11, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    iget-wide v12, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    move-object/from16 v22, v15

    iget-wide v14, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v29, v3

    move v3, v4

    move v4, v7

    move-object/from16 v24, v5

    move v5, v10

    move-object/from16 v25, v6

    move v6, v11

    const/4 v11, 0x3

    move/from16 v7, v23

    const/4 v10, 0x2

    move-object/from16 v30, v9

    move-wide v9, v12

    const/4 v13, -0x1

    move-wide v11, v14

    move v15, v13

    const/4 v14, 0x0

    move/from16 v13, v17

    invoke-virtual/range {v0 .. v13}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JIFFFFFJJZ)V

    :goto_a
    move v13, v14

    move-object/from16 v31, v29

    move-object/from16 v14, p0

    goto/16 :goto_d

    :cond_24
    move-object/from16 v29, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v30, v9

    move v14, v13

    move-object/from16 v22, v15

    move v15, v11

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v3, :cond_26

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-eqz v0, :cond_26

    iget-boolean v0, v13, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    if-nez v0, :cond_26

    iget-boolean v0, v13, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    :cond_25
    invoke-virtual {v4, v14}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    const/4 v11, 0x1

    iput-boolean v11, v13, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    goto :goto_b

    :cond_26
    const/4 v11, 0x1

    :goto_b
    iget-boolean v0, v13, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez v0, :cond_27

    move-object/from16 v12, v29

    iget v3, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v17

    iget v7, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    iget v8, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    iget v4, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    iget v5, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    iget v6, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    iget-wide v9, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    iget-wide v14, v12, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v31, v12

    move-wide v11, v14

    move-object v14, v13

    move/from16 v13, v17

    invoke-virtual/range {v0 .. v13}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(JIFFFFFJJZ)V

    goto :goto_c

    :cond_27
    move-object v14, v13

    move-object/from16 v31, v29

    :goto_c
    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    const/4 v13, 0x1

    :goto_d
    sget-object v0, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->UNCHANGED:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    iget-object v1, v14, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v2, v30

    if-ne v2, v0, :cond_28

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v14, Lcom/android/systemui/biometrics/UdfpsController;->mLastTouchInteractionTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x32

    cmp-long v0, v3, v5

    if-gez v0, :cond_28

    goto/16 :goto_12

    :cond_28
    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mLastTouchInteractionTime:J

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v16, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_29

    const/4 v0, 0x0

    goto :goto_e

    :cond_29
    move v0, v4

    goto :goto_e

    :cond_2a
    const/4 v4, 0x3

    move v0, v3

    goto :goto_e

    :cond_2b
    const/4 v3, 0x2

    const/4 v4, 0x3

    move v0, v1

    :goto_e
    iget-object v5, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-nez v5, :cond_2c

    const/4 v6, 0x4

    :goto_f
    const/4 v11, -0x1

    goto :goto_10

    :cond_2c
    iget v5, v5, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    if-eq v5, v1, :cond_2f

    if-eq v5, v3, :cond_2f

    if-eq v5, v4, :cond_2e

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2d

    goto :goto_f

    :cond_2d
    move v11, v1

    goto :goto_10

    :cond_2e
    const/4 v6, 0x4

    move v11, v3

    goto :goto_10

    :cond_2f
    const/4 v6, 0x4

    move v11, v6

    :goto_10
    iget-object v5, v14, Lcom/android/systemui/biometrics/UdfpsController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    invoke-virtual {v5, v11}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-virtual {v5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v11

    goto :goto_11

    :cond_30
    const/4 v11, -0x1

    :goto_11
    iget-object v5, v14, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10e0148

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v7, v31

    iget v8, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v9

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v10

    const/16 v12, 0x241

    invoke-virtual {v10, v12}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v10, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v10, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v10, v8}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    iget v0, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    invoke-virtual {v10, v0}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    iget v8, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    invoke-virtual {v10, v8}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    iget v12, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    invoke-virtual {v10, v12}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    iget v15, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    invoke-virtual {v10, v15}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    iget-wide v3, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    invoke-virtual {v10, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-object/from16 v30, v2

    iget-wide v1, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    invoke-virtual {v10, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v10, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v10}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v10}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v9

    invoke-static {v9}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n        |NormalizedTouchData ["

    const-string v6, "] {\n        |     pointerId: "

    invoke-static {v10, v9, v6}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\n        |             x: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "\n        |             y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n        |         minor: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n        |         major: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n        |   orientation: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n        |          time: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n        |  gestureStart: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n        |}\n        "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sessionId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAod: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", touchConfigId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_12
    iget v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    :cond_32
    move v12, v13

    goto :goto_13

    :cond_33
    const/4 v12, 0x1

    :goto_13
    if-eqz v12, :cond_39

    iget-boolean v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mPointerPilfered:Z

    if-nez v0, :cond_39

    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-nez v0, :cond_34

    const/4 v2, 0x2

    :goto_14
    const/4 v11, -0x1

    goto :goto_17

    :cond_34
    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_38

    const/4 v2, 0x2

    if-eq v1, v2, :cond_37

    const/4 v3, 0x3

    if-eq v1, v3, :cond_36

    const/4 v3, 0x4

    if-eq v1, v3, :cond_35

    goto :goto_14

    :cond_35
    const/4 v11, 0x1

    goto :goto_17

    :cond_36
    move v11, v2

    goto :goto_17

    :cond_37
    :goto_15
    const/4 v3, 0x4

    goto :goto_16

    :cond_38
    const/4 v2, 0x2

    goto :goto_15

    :goto_16
    move v11, v3

    :goto_17
    if-eq v11, v2, :cond_39

    iget-object v1, v14, Lcom/android/systemui/biometrics/UdfpsController;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->pilferPointers(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mPointerPilfered:Z

    goto :goto_18

    :cond_39
    const/4 v0, 0x1

    :goto_18
    iget v1, v14, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    move v13, v0

    goto :goto_19

    :cond_3a
    const/4 v13, 0x0

    :goto_19
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->UDFPS_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->LOCK_ICON_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/Execution;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;Lcom/android/systemui/biometrics/UdfpsShell;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/animation/ActivityTransitionAnimator;Ljava/util/concurrent/Executor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Landroid/hardware/input/InputManager;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/Execution;",
            "Landroid/view/LayoutInflater;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;",
            "Lcom/android/systemui/biometrics/UdfpsShell;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/hardware/display/DisplayManager;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;",
            "Lcom/android/systemui/log/SessionTracker;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Landroid/hardware/input/InputManager;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;",
            "Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-direct {v4}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPointerPilfered:Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    new-instance v5, Lcom/android/systemui/biometrics/UdfpsController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/UdfpsController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    new-instance v6, Lcom/android/systemui/biometrics/UdfpsController$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/UdfpsController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    move-object v7, p2

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11101b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mIgnoreRefreshRate:Z

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v8, p19

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v8, p25

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    move-object/from16 v8, p10

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v8, p13

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v8, p14

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget v3, v3, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v3, p23

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v3, p24

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v3, p26

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object/from16 v3, p27

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    new-instance v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object p2, v3

    move/from16 p3, v10

    move/from16 p4, v8

    move/from16 p5, v9

    move-object/from16 p6, v4

    move/from16 p7, v11

    move/from16 p8, v12

    invoke-direct/range {p2 .. p8}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZ)V

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object/from16 v3, p28

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mBiometricExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p29

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v3, p30

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v3, p33

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v3, p41

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    move-object/from16 v3, p42

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v3, p43

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v3, p34

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mInputManager:Landroid/hardware/input/InputManager;

    move-object/from16 v3, p36

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsKeyguardAccessibilityDelegate:Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;

    move-object/from16 v3, p37

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v3, p38

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v3, p31

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchProcessor:Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;

    move-object/from16 v3, p32

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object/from16 v3, p39

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDeviceEntryUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    move-object/from16 v3, p40

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDefaultUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "UdfpsController"

    invoke-static {v2, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance v2, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    sget-object v3, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$UnderDisplayFingerprint;->INSTANCE:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$UnderDisplayFingerprint;

    new-instance v4, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    move-object p2, v2

    move-object/from16 p3, p1

    move-object/from16 p4, p20

    move-object/from16 p5, p21

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    move-object/from16 v2, p35

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-virtual {v7, v2}, Landroid/hardware/fingerprint/FingerprintManager;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-object/from16 v1, p17

    iput-object v0, v1, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    move-object/from16 v0, p18

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsShell;->udfpsOverlayController:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    return-void
.end method


# virtual methods
.method public cancelAodSendFingerUpAction()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodFingerUpAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodFingerUpAction:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public final dispatchOnUiReady(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->onUdfpsUiEvent(IJI)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public final dozeTimeTick()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    instance-of p0, p0, Lcom/android/systemui/biometrics/UdfpsView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->assertInLegacyMode()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0148

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSensorProps=("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "touchConfigId: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final hideUdfpsOverlay()V
    .locals 16

    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v0, :cond_0

    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-wide v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JIFFFFFJJZ)V

    :cond_0
    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsDisplayModeProvider:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->disable()V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    const-string v2, "UdfpsAddView"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    invoke-virtual {v1, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v15}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_2
    iput-object v15, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iput-object v15, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->listenForCurrentKeyguardState:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    invoke-interface {v0, v15}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    :cond_4
    iput-object v15, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object v0, v14, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    iget-object v1, v0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public final onFingerDown(JIFFFFFJJZ)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v14, p1

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    const-string v2, "UdfpsController"

    if-nez v0, :cond_0

    const-string v0, "Null request in onFingerDown"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    cmp-long v0, v3, v14

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Mismatched fingerDown: "

    const-string v3, " current: "

    invoke-static {v0, v14, v15, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-wide v3, v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v12, 0x3

    if-ne v0, v12, :cond_3

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    :cond_3
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v3, v4, v13}, Landroid/os/PowerManager;->userActivity(JII)V

    iget-boolean v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->onUdfpsSensorTouched()V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    iget-object v2, v1, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v5, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-wide/from16 v3, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move v0, v13

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v16, p13

    invoke-virtual/range {v2 .. v16}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerDown(JIIFFFFFJJZ)V

    const-string v2, "UdfpsController.e2e.onPointerDown"

    invoke-static {v2, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    iget-boolean v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mIgnoreRefreshRate:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/biometrics/UdfpsController;->dispatchOnUiReady(J)V

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v2}, Lcom/android/systemui/util/concurrency/Execution;->isMainThread()Z

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->logger:Lcom/android/systemui/biometrics/UdfpsLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    iget-object v2, v2, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "UdfpsDisplayMode"

    const-string v5, "enable"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v7, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->currentRequest:Lcom/android/systemui/biometrics/Request;

    if-eqz v7, :cond_6

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    const-string v3, "enable | already requested"

    invoke-virtual {v2, v4, v0, v3, v6}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    iget-object v7, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v8, v7, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    if-nez v8, :cond_7

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    const-string v3, "enable | mDisplayManagerCallback is null"

    invoke-virtual {v2, v4, v0, v3, v6}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    const-string v8, "UdfpsDisplayMode.enable"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v8, Lcom/android/systemui/biometrics/Request;

    iget-object v9, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDisplayId()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/systemui/biometrics/Request;-><init>(I)V

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->currentRequest:Lcom/android/systemui/biometrics/Request;

    :try_start_0
    iget-object v0, v7, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v8, Lcom/android/systemui/biometrics/Request;->displayId:I

    invoke-interface {v0, v7}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;->onRequestEnabled(I)V

    const-string v0, "enable | requested optimal refresh rate for UDFPS"

    invoke-virtual {v2, v4, v3, v0, v6}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    new-instance v7, Lcom/android/systemui/biometrics/UdfpsLogger$e$2;

    invoke-direct {v7, v5}, Lcom/android/systemui/biometrics/UdfpsLogger$e$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3, v7, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/biometrics/UdfpsController;->dispatchOnUiReady(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    const-string v3, "enable | onEnabled is null"

    invoke-virtual {v2, v4, v0, v3, v6}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    :goto_2
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/biometrics/UdfpsController$Callback;->onFingerDown()V

    goto :goto_3

    :cond_a
    return-void
.end method

.method public final onFingerUp(JIFFFFFJJZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    iget-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v5, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-wide/from16 v3, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v16, p13

    invoke-virtual/range {v2 .. v16}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerUp(JIIFFFFFJJZ)V

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/UdfpsController$Callback;

    invoke-interface {v2}, Lcom/android/systemui/biometrics/UdfpsController$Callback;->onFingerUp()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->disable()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->cancelAodSendFingerUpAction()V

    return-void
.end method

.method public playStartHaptic()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_0
    const-string p0, "UdfpsController"

    const-string v0, "No haptics played. Could not obtain overlay view to performvibration. Either the controller overlay is null or has no view"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "UdfpsController"

    const-string p1, "Attempting to showUdfpsOverlay when fingerprint detection isn\'t running on keyguard. Skip show."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v2, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-nez v2, :cond_a

    iput-object v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v3, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0545

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    const/4 v6, 0x2

    iget v7, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    if-eq v7, v0, :cond_1

    if-eq v7, v6, :cond_1

    if-ne v7, v4, :cond_2

    :cond_1
    :try_start_1
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_2
    sget-object v6, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

    invoke-direct {v6, p1, v3, v5}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;-><init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;Landroid/view/View;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    iput-object v6, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->addViewRunnable:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

    iget-object v6, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v6, v6, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {v6}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v4, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->addViewRunnable:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

    if-eqz v4, :cond_4

    iget-object v6, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->listenForCurrentKeyguardState:Lkotlinx/coroutines/Job;

    if-eqz v6, :cond_3

    invoke-interface {v6, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->run()V

    :cond_4
    iput-object v5, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->addViewRunnable:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

    goto :goto_0

    :cond_5
    iget-object v6, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->listenForCurrentKeyguardState:Lkotlinx/coroutines/Job;

    if-eqz v6, :cond_6

    invoke-interface {v6, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_6
    new-instance v6, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$2;

    invoke-direct {v6, p1, v5}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$2;-><init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;Lkotlin/coroutines/Continuation;)V

    iget-object v8, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v8, v5, v5, v6, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->listenForCurrentKeyguardState:Lkotlinx/coroutines/Job;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v4, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    if-ne v7, v1, :cond_7

    :try_start_2
    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->deviceEntryUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;

    invoke-static {v3, v1, v4}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder;->bind(Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->defaultUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;

    invoke-static {v3, v1, v4}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder;->bind(Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V

    :goto_1
    iput-object v3, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;

    invoke-direct {v3, p1, v1}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;-><init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;Landroid/view/View;)V

    iput-object v3, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;->onTouchExplorationStateChanged(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    const-string v3, "UdfpsControllerOverlay"

    const-string v4, "showUdfpsOverlay | failed to add window"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    iput-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    iget-object v2, v1, Lcom/android/systemui/biometrics/BiometricDisplayListener;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/android/systemui/biometrics/BiometricDisplayListener;->cachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_9
    iget-object v2, v1, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, v1, Lcom/android/systemui/biometrics/BiometricDisplayListener;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-wide v2, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/hardware/fingerprint/FingerprintManager;->onUdfpsUiEvent(IJI)V

    :cond_a
    return-void
.end method

.method public tryAodSendFingerUp()V
    .locals 15

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->cancelAodSendFingerUpAction()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-wide v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JIFFFFFJJZ)V

    :cond_1
    return-void
.end method
