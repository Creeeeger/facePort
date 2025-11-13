.class public final Lcom/android/systemui/biometrics/UdfpsControllerOverlay;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public addViewRunnable:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

.field public final controllerCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

.field public final coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final currentStateUpdatedToOffAodOrDozing:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$special$$inlined$map$1;

.field public final defaultUdfpsTouchOverlayViewModel:Ldagger/Lazy;

.field public final deviceEntryUdfpsTouchOverlayViewModel:Ldagger/Lazy;

.field public final inflater:Landroid/view/LayoutInflater;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public listenForCurrentKeyguardState:Lkotlinx/coroutines/Job;

.field public final onTouch:Lkotlin/jvm/functions/Function3;

.field public overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

.field public overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1;

.field public overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final requestId:J

.field public final requestReason:I

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public sensorBounds:Landroid/graphics/Rect;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final udfpsDisplayModeProvider:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

.field public final udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/WindowManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;",
            "JI",
            "Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;",
            "Lkotlin/jvm/functions/Function3;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-wide/from16 v15, p15

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    const/high16 v33, 0x200000

    const/16 v34, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v34}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;ZLcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;ZLcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/WindowManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;",
            "JI",
            "Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;",
            "Lkotlin/jvm/functions/Function3;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Z",
            "Lcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflater:Landroid/view/LayoutInflater;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsDisplayModeProvider:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    move/from16 v1, p17

    iput v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->controllerCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->onTouch:Lkotlin/jvm/functions/Function3;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->deviceEntryUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->defaultUdfpsTouchOverlayViewModel:Ldagger/Lazy;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$special$$inlined$filter$1;

    move-object/from16 v2, p25

    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v1, v2}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$special$$inlined$map$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->currentStateUpdatedToOffAodOrDozing:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$special$$inlined$map$1;

    new-instance v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object p1, v1

    move-object p2, v4

    move-object p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v9

    move-object/from16 p10, v10

    invoke-direct/range {p1 .. p10}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7e8

    const/4 v4, -0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const-string v2, "UdfpsControllerOverlay"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v2, 0x1800128

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20200000

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, " "

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;ZLcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    const/high16 v0, 0x200000

    and-int v0, p33, v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    move/from16 v24, v0

    goto :goto_0

    :cond_0
    move/from16 v24, p23

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v16, p15

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    invoke-direct/range {v1 .. v33}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;ZLcom/android/systemui/biometrics/UdfpsKeyguardAccessibilityDelegate;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final updateDimensions(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    if-eq v2, v1, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v2, v2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v4, v3, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    iget v3, v3, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    invoke-direct {v2, v0, v0, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v2, v2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v1, p2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    iget p2, p2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    invoke-static {v0, v1, p2, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    invoke-static {p2, v1, p0, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    goto :goto_3

    :cond_4
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p0, v0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    return-void
.end method
