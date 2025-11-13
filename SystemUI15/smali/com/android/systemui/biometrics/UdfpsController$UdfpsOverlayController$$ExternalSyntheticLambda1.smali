.class public final synthetic Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    iput-wide p2, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$2:I

    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$3:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    iget-wide v5, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$1:J

    iget v4, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$2:I

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;->f$3:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    iget-object v3, v1, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object v15, v3, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    iget-object v14, v3, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    iget-object v13, v3, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v12, v3, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v3, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    new-instance v10, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda4;

    invoke-direct {v10, v1, v5, v6}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;J)V

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v32, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v33, v1

    iget-object v7, v3, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v8, v3, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v9, v3, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    move-object/from16 v21, v10

    move-object v10, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v16, v11

    move-object v11, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v17, v12

    move-object v12, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v18, v13

    move-object v13, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v19, v14

    move-object v14, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v20, v15

    move-object v15, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    move-object/from16 v22, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v23, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v24, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsKeyguardAccessibilityDelegate:Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;

    move-object/from16 v25, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v26, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v27, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mDeviceEntryUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    move-object/from16 v28, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mDefaultUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    move-object/from16 v29, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v30, v1

    iget-object v1, v3, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    move-object/from16 v31, v1

    move-object v1, v2

    move-object/from16 v34, v3

    move-object/from16 v3, v20

    move/from16 v20, v4

    move-object/from16 v4, v19

    move-wide/from16 v35, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-wide/from16 v17, v35

    move/from16 v19, v20

    move-object/from16 v20, v0

    invoke-direct/range {v2 .. v33}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsController;->showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V

    return-void
.end method
