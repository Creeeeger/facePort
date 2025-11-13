.class public Lcom/android/keyguard/KeyguardPasswordViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mKeyListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;

.field public final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mOnEditorActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda5;

.field public final mPasswordEntry:Landroid/widget/EditText;

.field public mPaused:Z

.field public final mPostureCallback:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda4;

.field public final mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mShowImeAtScreenOn:Z

.field public final mSwitchImeButton:Landroid/widget/ImageView;

.field public final mTextWatcher:Lcom/android/keyguard/KeyguardPasswordViewController$1;


# direct methods
.method public static synthetic $r8$lambda$Pb-6RdnaWPPJK13KjtHJDiHXFvo(Lcom/android/keyguard/KeyguardPasswordViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$R6r4GN6BrTpuhpwcEizM9RE7nJM(Lcom/android/keyguard/KeyguardPasswordViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    return-void
.end method

.method public static synthetic $r8$lambda$TJTmn2vjpte3do60ygNoaxzd_Ck(Lcom/android/keyguard/KeyguardPasswordViewController;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->onDevicePostureChanged(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardPasswordView;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

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

    move-object/from16 v11, p15

    move-object/from16 v12, p12

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    invoke-direct/range {v0 .. v14}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mOnEditorActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordViewController$1;

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mTextWatcher:Lcom/android/keyguard/KeyguardPasswordViewController$1;

    move-object/from16 v0, p8

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v0, p11

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p17

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object/from16 v0, p13

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v0, p16

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f050070

    move-object/from16 v1, p14

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mShowImeAtScreenOn:Z

    iget-object v0, v15, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0a08c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    iget-object v0, v15, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    const v1, 0x7f0a0cde

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getInitialMessageResId()I
    .locals 0

    const p0, 0x7f130827

    return p0
.end method

.method public hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 6

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodListAsUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-le v1, v3, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_5
    if-gt v1, v3, :cond_6

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    return v0
.end method

.method public final isHideKeyboardByDefault()Z
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPaused:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputView;->mOnFinishImeAnimationRunnable:Ljava/lang/Runnable;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onResume(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPaused:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->isHideKeyboardByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mShowImeAtScreenOn:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->showInput()V

    :cond_1
    return-void
.end method

.method public onStartingToHide()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewAttached()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardPasswordView;->onDevicePostureChanged(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mOnEditorActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mTextWatcher:Lcom/android/keyguard/KeyguardPasswordViewController$1;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    const v1, 0x7f0a0243

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->updateSwitchImeButton()V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda4;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public resetState()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->getInitialMessageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardPasswordView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mResumed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->showInput()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showInput()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public updateSwitchImeButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPasswordViewController;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
