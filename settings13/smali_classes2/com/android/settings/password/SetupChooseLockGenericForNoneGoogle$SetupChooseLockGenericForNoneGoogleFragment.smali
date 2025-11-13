.class public Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;
.super Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGenericForNoneGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericForNoneGoogleFragment"
.end annotation


# static fields
.field public static mSetupChooseLockGenericForNoneGoogleFragment:Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;


# direct methods
.method static bridge synthetic -$$Nest$msetLockDoLater(Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->setLockDoLater()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    .line 140
    sput-object p0, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->mSetupChooseLockGenericForNoneGoogleFragment:Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;

    return-void
.end method

.method private getFaceScanIntent()Landroid/content/Intent;
    .locals 3

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "setupwizard_face"

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->hasMultipleUsers()Z

    move-result p0

    const-string v1, "hasMultipleUsers"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "useImmersiveMode"

    const/4 v1, 0x1

    .line 274
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getFingerPrintScanIntent()Landroid/content/Intent;
    .locals 3

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    const-string v2, "google_setupwizard_fingerprint"

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromSetupWizard"

    const/4 v2, 0x1

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->hasMultipleUsers()Z

    move-result p0

    const-string v1, "hasMultipleUsers"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "useImmersiveMode"

    .line 284
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private setLockDoLater()V
    .locals 9

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:frp_supported"

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 155
    invoke-static/range {v3 .. v8}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    goto :goto_0

    .line 212
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

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SetupChooseLockGenericForNoneGoogle"

    const-string v0, "Refusing to start because device is not provisioned"

    .line 147
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected getLockPasswordIntent(I)Landroid/content/Intent;
    .locals 1

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 246
    invoke-static {v0, p1}, Lcom/android/settings/password/SetupChooseLockPassword;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object p1
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 2

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockPattern;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 256
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

    .line 289
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

    .line 169
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string v1, ":settings:password_quality"

    const/16 v2, 0x2735

    if-ne p1, v2, :cond_4

    const/16 p1, 0xb

    if-ne p2, p1, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_0
    const/4 p1, -0x1

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move p2, p1

    :cond_3
    if-ne p2, p1, :cond_7

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    return-void

    :cond_5
    if-nez p3, :cond_6

    .line 189
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 193
    :cond_6
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 218
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unlock_set_do_later"

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ":settings:frp_supported"

    .line 223
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 221
    invoke-static/range {v2 .. v7}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v1, "unlock_set_face"

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2735

    if-eqz v1, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->getFaceScanIntent()Landroid/content/Intent;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "unlock_set_fingerprint"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->getFingerPrintScanIntent()Landroid/content/Intent;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 111
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->seslSetRoundedCorner(Z)V

    .line 114
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz p2, :cond_0

    .line 115
    sget p2, Lcom/android/settings/R$string;->lock_settings_picker_title:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/settings/R$string;->setup_lock_settings_picker_title:I

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_3

    move v0, p1

    .line 122
    :goto_1
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 123
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 126
    new-instance v4, Landroid/text/SpannableString;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->sec_widget_alert_dialog_text_color:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v4, v2, p1, v5, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 128
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sec_widget_alert_dialog_text_color:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSubheaderColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 135
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    :cond_4
    return-void
.end method
