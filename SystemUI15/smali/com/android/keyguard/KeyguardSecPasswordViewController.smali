.class public Lcom/android/keyguard/KeyguardSecPasswordViewController;
.super Lcom/android/keyguard/KeyguardPasswordViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsShownSIP:Z

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mOnLayoutChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;

.field public final mOnWindowFocusChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$IllLLJgt3WVQL4g_jzNcNLAdgo0(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->isHideKeyboardByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mShowImeAtScreenOn:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPasswordView;

    new-instance v0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p20}, Lcom/android/keyguard/KeyguardPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnLayoutChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnWindowFocusChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    const v2, 0x7f0a02ce

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    const v2, 0x7f0a08cb

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method


# virtual methods
.method public displayDefaultSecurityMessage()V
    .locals 10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v1, "KeyguardSecPasswordViewController"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mMessageAreaController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    if-nez v3, :cond_b

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    invoke-static {v6}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPrompt(I)I

    move-result v6

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isShowEditModeRequest()Z

    move-result v7

    const v8, 0x7f1309a7

    const v9, 0x7f1309a8

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130895

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    const-string v7, " )"

    if-eqz v3, :cond_5

    iput v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "displayDefaultSecurityMessage - strongAuth ( "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-static {v3, v6, v7, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->showPromptReason(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    const-string v6, "displayDefaultSecurityMessage( "

    invoke-static {v6, v3, v7, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_8
    :goto_1
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v4, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_9

    const-string v3, ""

    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_9
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f13087a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public final enableHidingPassword(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "background"

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    if-eqz v1, :cond_1

    const p1, 0x7f080c81

    goto :goto_0

    :cond_1
    const p1, 0x7f080c7d

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f130a0d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    if-eqz v1, :cond_3

    const p1, 0x7f080c82

    goto :goto_1

    :cond_3
    const p1, 0x7f080c7e

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f130a0e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "KeyguardSecPasswordViewController"

    const-string p1, "enableHidingPassword() view is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSecurityViewId()I
    .locals 0

    const p0, 0x7f0a05ac

    return p0
.end method

.method public final hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 6

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

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

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-le v1, v3, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.samsung.android.honeyboard/.SamsungKeypad"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_6
    if-le v1, v3, :cond_7

    move v0, v3

    :cond_7
    return v0
.end method

.method public final needsInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPasswordChecked(IIZZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    return-void
.end method

.method public final onResume(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPasswordViewController;->onResume(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const-string v0, "background"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v0, 0x7f080baa

    goto :goto_0

    :cond_0
    const v0, 0x7f080ba9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :cond_2
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->isHideKeyboardByDefault()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_5

    const-string v2, "EdmMonitor"

    const-string v3, "isPasswordVisibilityEnabled "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "KeyguardSecPasswordViewController"

    const-string v2, "<<<--->>> hide button"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->showKeyboard(I)V

    return-void
.end method

.method public final onStartingToHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnLayoutChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnWindowFocusChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130a0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPointerIcon(Landroid/view/PointerIcon;)V

    new-instance v2, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    :cond_2
    new-instance v0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "show_keyboard_button"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnLayoutChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnWindowFocusChangeListener:Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public reset$1()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset$1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->enableHidingPassword(Z)V

    return-void
.end method

.method public resetState()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->displayDefaultSecurityMessage()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->resetFor2StepVerification()V

    return-void
.end method

.method public final setMessageAreaLandscapeAdditionalPadding()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-gtz p0, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPrompt(I)I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const p0, 0x7f07052d

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v1, 0x7f070593

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {v3, v2, v0, v2, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public final showKeyboard(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showPromptReason(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecPasswordViewController"

    const-string p1, "showPromptReason mMessageAreaController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v3, v2, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1309a8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f1309a7

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {v1, v2, v5, p1}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPopupString(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->scrollTo(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->skipUpdateWhenCloseFolder()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const p1, 0x7f080baa

    goto :goto_0

    :cond_1
    const p1, 0x7f080ba9

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method public final updateSwitchImeButton()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    const-string v1, "KeyguardSecPasswordViewController"

    if-nez v0, :cond_0

    const-string p0, "mSwitchImeButton is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    const-string/jumbo v5, "updateSwitchImeButton, wasVisible = "

    const-string v6, ", shouldBeVisible = "

    const-string v7, ", needImeBtn = "

    invoke-static {v5, v6, v7, v2, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    if-eq v2, v4, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x7f0705d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    if-ne p0, v3, :cond_7

    const p0, 0x7f0705c4

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v3, 0x7f0705d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, p0

    const p0, 0x7f0705c2

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    if-eq p0, v3, :cond_7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method
