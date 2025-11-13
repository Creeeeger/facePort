.class public Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3pqGr5VokikpSW1mWIigJMLpiyM(Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method

.method private getFaceScanIntent()Landroid/content/Intent;
    .locals 3

    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "setupwizard_face"

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->hasMultipleUsers()Z

    move-result p0

    const-string v1, "hasMultipleUsers"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "useImmersiveMode"

    const/4 v1, 0x1

    .line 435
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getFingerPrintScanIntent()Landroid/content/Intent;
    .locals 3

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    const-string v2, "google_setupwizard_fingerprint"

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromSetupWizard"

    const/4 v2, 0x1

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->hasMultipleUsers()Z

    move-result p0

    const-string v1, "hasMultipleUsers"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "useImmersiveMode"

    .line 445
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private isForBiometric()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setLockDoLater()V

    return-void
.end method

.method private setLockDoLater()V
    .locals 9

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:frp_supported"

    const/4 v2, 0x0

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 260
    invoke-static/range {v3 .. v8}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->isForBiometric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    goto :goto_0

    .line 360
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->sec_setup_security_settings_picker:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    :goto_0
    return-void
.end method

.method protected alwaysHideInsecureScreenLockTypes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected canRunBeforeDeviceProvisioned()Z
    .locals 1

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SetupChooseLockGeneric"

    const-string v0, "Refusing to start because device is not provisioned"

    .line 334
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected getBiometricEnrollIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 424
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricEnrollIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object p1
.end method

.method protected getInternalActivityClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;",
            ">;"
        }
    .end annotation

    .line 343
    const-class p0, Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity;

    return-object p0
.end method

.method protected getLockPasswordIntent(I)Landroid/content/Intent;
    .locals 1

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 399
    invoke-static {v0, p1}, Lcom/android/settings/password/SetupChooseLockPassword;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object p1
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 2

    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object v1

    .line 407
    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockPattern;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public hasMultipleUsers()Z
    .locals 1

    const-string/jumbo v0, "user"

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    if-nez p3, :cond_0

    .line 286
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 290
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x2735

    const-string v2, ":settings:password_quality"

    if-ne p1, v1, :cond_3

    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    .line 295
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 299
    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_2

    .line 300
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    if-eqz p2, :cond_5

    :cond_2
    const/4 p2, -0x1

    .line 302
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onActivityResult requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SetupChooseLockGeneric"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    return-void

    .line 312
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 311
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 326
    move-object p0, p2

    check-cast p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 327
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 369
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unlock_set_face"

    .line 371
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2735

    if-eqz v1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFaceScanIntent()Landroid/content/Intent;

    move-result-object v0

    .line 373
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "unlock_set_fingerprint"

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFingerPrintScanIntent()Landroid/content/Intent;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 394
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 177
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 179
    check-cast p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 180
    new-instance p2, Lcom/android/settings/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->setDividerItemDecoration(Lcom/google/android/setupdesign/DividerItemDecoration;)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_lock_setting_suw_divider_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 182
    invoke-virtual {p1, p2, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->setDividerInsets(II)V

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_lock_suw_ic:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 185
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->isForBiometric()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 188
    sget p2, Lcom/android/settings/R$string;->lock_settings_picker_biometrics_added_security_message:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/settings/R$string;->setup_lock_settings_picker_message:I

    .line 189
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->isForBiometric()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 192
    sget p2, Lcom/android/settings/R$string;->lock_settings_picker_title:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/android/settings/R$string;->setup_lock_settings_picker_title:I

    .line 193
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 197
    :cond_2
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    const/4 p2, 0x0

    .line 200
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 207
    sget v0, Lcom/android/settings/R$id;->sud_layout_header:I

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$dimen;->sec_lock_setting_suw_header_bottom_margin_for_tablet:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$dimen;->sec_lock_setting_suw_header_bottom_margin_for_phone:I

    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 212
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 213
    const-class v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    if-eqz v1, :cond_4

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_body_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/setupdesign/template/HeaderMixin;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 217
    :cond_4
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->intelligent_biometrics_lock_settings_button_skip:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(Ljava/lang/String;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;)V

    .line 218
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v3, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->seslSetRoundedCorner(Z)V

    .line 224
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 228
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 229
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 233
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_7

    move v1, p1

    .line 235
    :goto_3
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 236
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 239
    new-instance v4, Landroid/text/SpannableString;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->sec_widget_alert_dialog_text_color:I

    invoke-virtual {v5, v6, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v4, v3, p1, v5, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 241
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    :cond_6
    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_alert_dialog_text_color:I

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->seslSetSubheaderColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method
