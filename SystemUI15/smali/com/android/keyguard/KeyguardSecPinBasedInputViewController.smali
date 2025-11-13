.class public Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

.field public final mButtons:[Landroid/view/View;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

.field public mDeleteButton:Landroid/view/View;

.field public mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field public final mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

.field public mInitialized:Z

.field public mIsImagePinLock:Z

.field public mIsNightModeOn:Z

.field public mOkButton:Landroid/view/View;

.field public mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field public final mOnKeyListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda7;

.field public mOriginPinEntryId:I

.field public mUpdateSkipped:Z

.field public final mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$KEYW3irDfvhoAKb9FW_owagURSw(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic $r8$lambda$uU6id3dFiGU_1NwKYrhseXInPYo(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->doHapticKeyClick()V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecPinBasedInputView;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/keyguard/LiftToActivateListener;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct/range {p0 .. p16}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitialized:Z

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    new-instance v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda7;

    new-instance v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    new-instance v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v4, 0x7f0a0559

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a055a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a055b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a055c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a055d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a055e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a055f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a0560

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v3, 0x7f0a0561

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v2, 0x7f0a0562

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    return-void
.end method

.method public static isFolderClosed()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static updateNumPadKeySideMargin(Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onUserInput()V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPasswordText()[B
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object p0, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method public final initializeBottomContainerView()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitialized:Z

    const-string v0, "KeyguardSecPinBasedInputViewController"

    const-string v1, "First initializeBottomContainerView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView$1()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final initializeBottomContainerView$1()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const-string v3, "KeyguardSecPinBasedInputViewController"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window rect changed initializeBottomContainerView abnormal case return!"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const v1, 0x7f050091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v5, 0x7f0a0563

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v5, 0x7f0a0564

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    new-instance v7, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    new-instance v7, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v7, 0x7f0a0347

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    new-instance v5, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v5, p0, v7}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    new-instance v5, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    new-instance v5, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v1, 0x7f130908

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, ", "

    invoke-static {v5, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v9, 0x7f13090e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f13090d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f13090b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f130909

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v7, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-eqz v1, :cond_6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080fbf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080d4e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    move v0, v2

    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v5, v5, v0

    instance-of v6, v5, Lcom/android/keyguard/SecNumPadKey;

    if-eqz v6, :cond_b

    check-cast v5, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v5}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_c

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto :goto_5

    :cond_c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_5
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_d

    const v9, 0x7f071714

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_e

    const v9, 0x7f0703ec

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result v9

    if-eqz v9, :cond_f

    const v9, 0x7f0703ef

    goto :goto_6

    :cond_f
    const v9, 0x7f070bd2

    :goto_6
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    sget-boolean v9, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v9, :cond_10

    const-string v9, "getNumPadKeySize isDualDisplayPolicyAllowed : "

    const-string v10, " isFolderClosed : "

    invoke-static {v9, v10, v5}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " ratio : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " displayWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " displayHeight : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v5, :cond_11

    int-to-float v3, v8

    :goto_7
    mul-float/2addr v3, v6

    float-to-int v3, v3

    goto :goto_8

    :cond_11
    int-to-float v3, v7

    goto :goto_7

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-nez v7, :cond_13

    if-eqz v5, :cond_12

    goto :goto_9

    :cond_12
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_a

    :cond_13
    :goto_9
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    :goto_a
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_14

    const v8, 0x7f071713

    goto :goto_b

    :cond_14
    if-eqz v5, :cond_15

    const v8, 0x7f0703eb

    goto :goto_b

    :cond_15
    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result v8

    if-eqz v8, :cond_16

    const v8, 0x7f0703ee

    goto :goto_b

    :cond_16
    const v8, 0x7f070bd1

    :goto_b
    int-to-float v7, v7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v7, v2

    :goto_c
    if-ge v7, v1, :cond_19

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v7

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v7

    instance-of v9, v8, Lcom/android/keyguard/SecNumPadKeyTablet;

    if-eqz v9, :cond_18

    check-cast v8, Lcom/android/keyguard/SecNumPadKeyTablet;

    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKeyTablet;->updateDigitTextSize()V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v7

    check-cast v8, Lcom/android/keyguard/SecNumPadKeyTablet;

    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKeyTablet;->updateKlondikeTextSize()V

    goto :goto_d

    :cond_18
    check-cast v8, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v8, v8, v7

    check-cast v8, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_19
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    const/4 v7, 0x2

    aget-object v3, v3, v7

    invoke-static {v3, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    const/4 v7, 0x5

    aget-object v3, v3, v7

    invoke-static {v3, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-static {v3, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    instance-of v4, v3, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v4, :cond_1c

    check-cast v3, Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0705b4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1c
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v4, 0x7f0a0a02

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v6, 0x7f0a0a03

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const v7, 0x7f0a0a04

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v5, :cond_1d

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_e

    :cond_1d
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_e
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_1e

    const v5, 0x7f071712

    goto :goto_f

    :cond_1e
    if-eqz v5, :cond_1f

    const v5, 0x7f0703ea

    goto :goto_f

    :cond_1f
    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result v5

    if-eqz v5, :cond_20

    const v5, 0x7f0703ed

    goto :goto_f

    :cond_20
    const v5, 0x7f070bcf

    :goto_f
    int-to-float v8, v8

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    if-eqz v6, :cond_22

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_22
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_23

    invoke-virtual {v3}, Landroid/widget/EditText;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    :goto_10
    if-ge v2, v1, :cond_24

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v2

    instance-of v4, v3, Lcom/android/keyguard/SecNumPadKey;

    if-eqz v4, :cond_24

    check-cast v3, Lcom/android/keyguard/SecNumPadKey;

    iput v0, v3, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    invoke-virtual {v3}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    if-eq v4, v0, :cond_24

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    :goto_11
    if-ge v2, v1, :cond_24

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v2

    instance-of v4, v3, Lcom/android/keyguard/SecNumPadKey;

    if-eqz v4, :cond_24

    check-cast v3, Lcom/android/keyguard/SecNumPadKey;

    iput v0, v3, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->verifyPasswordAndUnlock()V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onResume(I)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView$1()V

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewAttached()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onViewAttached mWindowRect : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isFolderClosed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPinBasedInputViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iput-boolean v2, v0, Lcom/android/keyguard/BaseSecPasswordTextView;->mShowPassword:Z

    new-instance v2, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda7;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/BaseSecPasswordTextView;->mUserActivityListener:Lcom/android/keyguard/BaseSecPasswordTextView$UserActivityListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAutoHandwritingEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    return-void
.end method

.method public onViewDetached()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->resetState()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v0, v0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setEnabledKeypad(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v0

    if-eqz p1, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final setOkButtonContentDescription(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13090f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string p2, ", "

    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f130910

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setOkButtonEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonContentDescription(ZZ)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_1
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->skipUpdateWhenCloseFolder()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public verifyPasswordAndUnlock()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonContentDescription(ZZ)V

    return-void
.end method
