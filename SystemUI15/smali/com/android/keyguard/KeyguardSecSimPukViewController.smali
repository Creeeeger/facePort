.class public final Lcom/android/keyguard/KeyguardSecSimPukViewController;
.super Lcom/android/keyguard/KeyguardSimPukViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCarrierDialog:Landroid/app/AlertDialog;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPukViewController$1;

.field public final mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mLocale:Ljava/util/Locale;

.field public mOrientation:I

.field public final mProgressBar:Landroid/widget/ProgressBar;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSettingsValueList:[Landroid/net/Uri;

.field public final mSimCardName:Lcom/android/systemui/widget/SystemUITextView;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 6

    move-object v0, p0

    invoke-direct/range {p0 .. p17}, Lcom/android/keyguard/KeyguardSimPukViewController;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPukViewController$1;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "select_name_1"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "select_name_2"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;

    invoke-direct {v2, p0, v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;I)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPukView;

    const v3, 0x7f0a05bc

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecESimArea;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecESimArea;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecESimArea;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPukView;

    const v3, 0x7f0a0933

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const-string v1, "background"

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_1

    const v1, 0x7f080ba8

    goto :goto_0

    :cond_1
    const v1, 0x7f080ba7

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    const v2, 0x7f0a05c3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    const v2, 0x7f0a05c4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSimCardName:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->setSimInfoViewVisibility$1(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final checkPin()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/keyguard/SecPasswordTextView;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v2, v2, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v0, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final checkPuk()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v1, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v0, v0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final confirmPin()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v0, v0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getSecurityViewId()I
    .locals 0

    const p0, 0x7f0a05c6

    return p0
.end method

.method public final onViewAttached()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPukViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPukViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final resetState()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->resetState()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->showDefaultMessage()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateSimIconImage$1()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateESimLayout$1()V

    return-void
.end method

.method public final setSimInfoViewVisibility$1(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPukView;

    const v0, 0x7f0a05bd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final showDefaultMessage()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showDefaultMessage subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    const-string v2, "KeyguardSecSimPukViewController"

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getSimSlotNum(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string p0, "showDefaultMessage - skip update"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "isemtelephony"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5, v0}, Lcom/android/internal/telephony/ISemTelephony;->getSimPukRetryForSubscriber(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Exception: "

    invoke-static {v5, v0, v2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    move v0, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSimPukLockInfoResult(): num_of_retry is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f130928

    if-eq v0, v3, :cond_7

    const/4 v3, 0x1

    const-string v6, " "

    if-eq v0, v3, :cond_4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x7f130a15

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    sget-boolean v3, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f13088c

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f130a18

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f130a14

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_6

    const v0, 0x7f13088b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const v0, 0x7f130a17

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_KTT_USIM_TEXT:Z

    if-eqz v0, :cond_8

    const v0, 0x7f13092d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_a

    const v0, 0x7f13088a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v3, "894101"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f130a26

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    const v0, 0x7f130a16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz p0, :cond_e

    if-eqz v1, :cond_c

    move-object v2, v1

    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v2, v2, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "showDefaultMessage isValidSubscriptionId failed !!!  subid:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {p0, v2, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_e
    :goto_2
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_f
    return-void
.end method

.method public final updateESimLayout$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0704aa

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v2

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateSim()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final updateSimIconImage$1()V
    .locals 7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getSimSlotNum(I)I

    move-result v0

    const/4 v2, -0x1

    const-string v3, "KeyguardSecSimPukViewController"

    if-ne v0, v2, :cond_0

    const-string/jumbo p0, "updateSimIconImage - skip update"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    instance-of v4, v2, Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    check-cast v2, Lcom/android/systemui/widget/SystemUIImageView;

    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/systemui/util/DeviceState;->isESIM(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimEmbedded()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "this is e-SIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardSecESimArea;->setVisibility(I)V

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "lock_ic_pin_attempt_esim_01"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string v1, "lock_ic_pin_attempt_esim_01_whitebg"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_6

    const-string v1, "lock_ic_pin_attempt_esim_02"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string v1, "lock_ic_pin_attempt_esim_02_whitebg"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardSecESimArea;->setVisibility(I)V

    :cond_4
    if-nez v0, :cond_5

    const-string v1, "lock_ic_pin_attempt_sim_01"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string v1, "lock_ic_pin_attempt_sim_01_whitebg"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne v0, v1, :cond_6

    const-string v1, "lock_ic_pin_attempt_sim_02"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string v1, "lock_ic_pin_attempt_sim_02_whitebg"

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    :cond_6
    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSimCardName:Lcom/android/systemui/widget/SystemUITextView;

    instance-of v2, v1, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez v0, :cond_8

    const-string v0, "select_name_1"

    goto :goto_1

    :cond_8
    const-string v0, "select_name_2"

    :goto_1
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f080ba8

    goto :goto_0

    :cond_0
    const p1, 0x7f080ba7

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 2

    const-string v0, "KeyguardSecSimPukViewController"

    const-string/jumbo v1, "verifyPasswordAndUnlock next"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->verifyPasswordAndUnlock()V

    return-void
.end method
