.class public Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityEnabled:Z

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public mIllustrationAccessibility:Landroid/view/View;

.field public mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

.field public mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field public mIsUsingLottie:Z

.field public mResultIntent:Landroid/content/Intent;

.field public mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

.field public final mSwitchDiversityListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

.field public final mSwitchDiversityOnLayoutChangeListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityOnLayoutChangeListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public getDevicePostureState()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method public getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    return-object p0
.end method

.method public getPostureGuidanceIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mPostureGuidanceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    if-eqz p2, :cond_0

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->onSkipButtonClick()V

    :cond_1
    return-void

    :cond_2
    iput-object p3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    if-eqz p3, :cond_3

    const-string v0, "finished_enrolling_face"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const/4 v3, 0x3

    if-eq p2, v3, :cond_7

    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    sget v4, Lcom/android/settings/biometrics/BiometricUtils;->sAllowEnrollPosture:I

    if-eqz v4, :cond_4

    if-ne v3, v4, :cond_7

    :cond_4
    if-eq p1, v1, :cond_5

    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    :cond_5
    if-eq p2, v1, :cond_6

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0xb

    if-eq p2, v1, :cond_6

    if-eqz v0, :cond_8

    :cond_6
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0224

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f1429a0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f14299d

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    const p1, 0x7f0a07c1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const p1, 0x7f0a07c3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const p1, 0x7f0a07c0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f13001d

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const v1, 0x7f15045e

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v2, 0x7f142c75

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;I)V

    new-instance v4, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v5, 0x7

    invoke-direct {v4, v2, v3, v5, v1}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p1, v4, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v2, 0x7f1429b0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;I)V

    new-instance v4, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v3, v5, v1}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p1, v4, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    :goto_0
    const p1, 0x7f14299f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;I)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v3, 0x5

    const v4, 0x7f15045d

    invoke-direct {v2, p1, v1, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const p1, 0x7f0a0037

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a1069

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    :cond_4
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/CompoundButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iget-object v1, v1, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onSkipButtonClick()V
    .locals 1

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getPostureGuidanceIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "FaceEducation"

    const-string v0, "Device do not support posture guidance"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/biometrics/BiometricUtils;->sAllowEnrollPosture:I

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-void
.end method

.method public final shouldFinishWhenBackgrounded()Z
    .locals 2

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    sget v1, Lcom/android/settings/biometrics/BiometricUtils;->sAllowEnrollPosture:I

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method
