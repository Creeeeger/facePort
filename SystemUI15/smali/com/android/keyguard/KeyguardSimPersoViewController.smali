.class public final Lcom/android/keyguard/KeyguardSimPersoViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DOMESTIC_OTA_START:Ljava/lang/String;

.field public static final SIM_TYPE:Ljava/lang/String;


# instance fields
.field public final mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field public mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mOrientation:I

.field public final mProgressBar:Landroid/widget/ProgressBar;

.field public volatile mSimCheckInProgress:Z

.field public mSubId:I

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->DOMESTIC_OTA_START:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 5

    move-object v0, p0

    invoke-direct/range {p0 .. p16}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    new-instance v2, Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPersoViewController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSimPersoView;

    const v3, 0x7f0a0261

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/CarrierText;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSimPersoView;

    const v3, 0x7f0a0933

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const-string v1, "background"

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_3

    const v1, 0x7f080ba8

    goto :goto_1

    :cond_3
    const v1, 0x7f080ba7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final getSecurityViewId()I
    .locals 0

    const p0, 0x7f0a05be

    return p0
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    const-string v0, "KeyguardSimPersoView"

    const-string v1, "Resetting state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f13092e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

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
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v1, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f130896

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f13092e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    new-instance v4, Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/keyguard/KeyguardSimPersoViewController$3;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;ILcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method
