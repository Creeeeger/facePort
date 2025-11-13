.class public abstract Lcom/android/settings/RestrictedSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final REQUEST_PIN_CHALLENGE:I = 0x3015


# instance fields
.field mActionDisabledDialog:Landroidx/appcompat/app/AlertDialog;

.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mIsAdminUser:Z

.field private mOnlyAvailableForAdmins:Z

.field private final mRestrictionKey:Ljava/lang/String;

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$rK1XfxBmztRmPYvqYsM3y780TE4(Lcom/android/settings/RestrictedSettingsFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->lambda$onDataSetChanged$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmChallengeRequested(Lcom/android/settings/RestrictedSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmChallengeRequested(Lcom/android/settings/RestrictedSettingsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChallengeSucceeded(Lcom/android/settings/RestrictedSettingsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    .line 81
    new-instance v0, Lcom/android/settings/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedSettingsFragment$1;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    return-void
.end method

.method private ensurePin()V
    .locals 4

    .line 180
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 181
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 184
    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    const/4 v1, 0x0

    .line 185
    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 186
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->restr_pin_enter_admin_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.request.mesg"

    .line 187
    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    .line 189
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x3015

    .line 190
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDataSetChanged$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 230
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 229
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_0

    .line 232
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    .line 234
    :cond_0
    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method protected hasChallengeSucceeded()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez p0, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected isRestrictedAndNotProviderProtected()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "restrict_if_overridable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 204
    invoke-virtual {p0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method protected isUiRestricted()Z
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotProviderProtected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->hasChallengeSucceeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mIsAdminUser:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

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

.method protected isUiRestrictedByOnlyAdmin()Z
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 272
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mIsAdminUser:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->initEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3015

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 165
    iput-boolean p3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 166
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_0

    .line 171
    :cond_0
    iput-boolean p3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "restrictions"

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    const-string/jumbo v0, "user"

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    .line 110
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mIsAdminUser:Z

    if-eqz p1, :cond_0

    const-string v0, "chsc"

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    const-string v0, "chrq"

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 117
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDataSetChanged()V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 248
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/RestrictedSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/RestrictedSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    .line 249
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroidx/appcompat/app/AlertDialog;

    .line 251
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 255
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 157
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBeProviderProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    const-string v1, "chrq"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    iget-boolean p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    const-string v0, "chsc"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setIfOnlyAvailableForAdmins(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    return-void
.end method

.method protected shouldBeProviderProtected(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "restrict_if_overridable"

    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 219
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 220
    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {p0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method
