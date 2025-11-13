.class public Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mContainer:Landroid/widget/LinearLayout;

.field public mContext:Landroid/content/Context;

.field public mContinueButton:Landroid/widget/Button;

.field public mFingerprintView:Landroid/view/View;

.field public mSamsungAccountView:Landroid/view/View;

.field public mTrustedPlacesView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final initOnboardingItemView(Landroid/view/View;III)V
    .locals 1

    const v0, 0x7f0a0ad9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0a0ad3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0a0ad5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final launchSafePlacesSettings()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p0, 0x0

    const v0, 0x7f141711

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult: requestCode="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MandatoryBiometricOnboardingFragment"

    invoke-static {v0, p3}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->countCheckItems(Landroid/content/Context;Z)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->countCheckItems(Landroid/content/Context;Z)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const v0, 0x7f120022

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isTrustedPlacesRegistered()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onActivityResult: Launching Trusted places"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->launchSafePlacesSettings()V

    goto :goto_0

    :cond_1
    const-string p1, "onActivityResult: Turning on Identity Check"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->setMandatoryBiometricStatus(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "MandatoryBiometricOnboardingFragment"

    if-nez p1, :cond_0

    const-string p1, "onContinueClicked: Launching Samsung account."

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v1, 0x7f140a25

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140a24

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_settings"

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Samsung Account Activity Not Found"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->hasBiometricStrong(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onContinueClicked: Launching Fingerprint settings."

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->startFingerprintLockSettings(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->countCheckItems(Landroid/content/Context;Z)I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "onContinueClicked: Launching NecessaryElementCheckActivity."

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isTrustedPlacesRegistered()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "onContinueClicked: Launching Trusted places."

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->launchSafePlacesSettings()V

    return-void

    :cond_3
    const-string p1, "onContinueClicked: Setup complete."

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->setMandatoryBiometricStatus(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0473

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0ad7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mSamsungAccountView:Landroid/view/View;

    const p3, 0x7f14170d

    const v0, 0x7f0805af

    const v1, 0x7f14170e

    invoke-virtual {p0, p2, v1, p3, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->initOnboardingItemView(Landroid/view/View;III)V

    const p2, 0x7f0a0ad4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mFingerprintView:Landroid/view/View;

    const p3, 0x7f14170b

    const v0, 0x7f0805b6

    const v1, 0x7f14170c

    invoke-virtual {p0, p2, v1, p3, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->initOnboardingItemView(Landroid/view/View;III)V

    const p2, 0x7f0a0ada

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mTrustedPlacesView:Landroid/view/View;

    const p3, 0x7f14170f

    const v0, 0x7f080565

    const v1, 0x7f141710

    invoke-virtual {p0, p2, v1, p3, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->initOnboardingItemView(Landroid/view/View;III)V

    const p2, 0x7f0a04e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->setLinkableText(Landroid/widget/TextView;)V

    const p2, 0x7f0a0ad6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContainer:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public final onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->hasBiometricStrong(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isTrustedPlacesRegistered()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mSamsungAccountView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mSamsungAccountView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->updateStatusIcon(Landroid/view/View;Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mFingerprintView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->hasBiometricStrong(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mFingerprintView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->updateStatusIcon(Landroid/view/View;Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mTrustedPlacesView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isTrustedPlacesRegistered()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mTrustedPlacesView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->updateStatusIcon(Landroid/view/View;Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContinueButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const v0, 0x7f1422fc

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    :cond_4
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0a0299

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0854

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContinueButton:Landroid/widget/Button;

    const v1, 0x7f1409b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07046e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800005

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingFragment;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final updateStatusIcon(Landroid/view/View;Z)V
    .locals 2

    const v0, 0x7f0a0ad8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f08070c

    goto :goto_0

    :cond_0
    const v1, 0x7f08070d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    const p2, 0x7f14291c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p2, 0x7f14291d

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
