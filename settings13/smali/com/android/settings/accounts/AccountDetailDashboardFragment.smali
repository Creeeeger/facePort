.class public Lcom/android/settings/accounts/AccountDetailDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccountDetailDashboardFragment.java"


# instance fields
.field mAccount:Landroid/accounts/Account;

.field private mAccountLabel:Ljava/lang/String;

.field private mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

.field mAccountType:Ljava/lang/String;

.field private mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v1, Lcom/android/settings/accounts/AccountSyncPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/android/settings/accounts/AccountHeaderPreferenceController;

    .line 166
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/accounts/AccountHeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;)V

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    const-string v2, "com.android.settings.ia.account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 186
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 190
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "extra.accountName"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object p0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    return v0
.end method

.method finishIfAccountMissing()V
    .locals 8

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 118
    const-class v2, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 119
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 120
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 121
    iget-object v7, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v6, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v6, v7, :cond_1

    return-void

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 150
    sget p0, Lcom/android/settings/R$string;->help_url_account_detail:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccountDetailDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 155
    sget p0, Lcom/android/settings/R$xml;->account_type_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->updateUi()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const-string/jumbo v2, "user"

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    invoke-static {v1, v2, p1, v0}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_2

    const-string v0, "account"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    :cond_0
    const-string v0, "account_label"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    :cond_1
    const-string v0, "account_type"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->init(Landroid/accounts/Account;Landroid/os/UserHandle;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->init(Landroid/accounts/Account;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->finishIfAccountMissing()V

    return-void
.end method

.method updateUi()V
    .locals 7

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v3, "user_handle"

    .line 201
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 204
    :goto_0
    new-instance v3, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    .line 205
    new-instance v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V

    .line 207
    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    .line 207
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->addPreferencesForType(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    .line 210
    iget-object v5, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 215
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v0, "remove_account"

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_4

    .line 226
    sget v2, Lcom/android/settings/R$id;->button:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    new-array v2, v3, [Ljava/lang/String;

    .line 232
    iget-object v3, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v5, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v5, 0x1

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v5, "false"

    aput-object v5, v2, v3

    .line 233
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider2/DeviceAccountPolicy"

    const-string v5, "isAccountRemovalAllowedAsUser"

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 239
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setEnabled(Z)V

    goto :goto_1

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    .line 245
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const-string v4, "no_modify_accounts"

    .line 244
    invoke-static {v2, v4, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    .line 248
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 246
    invoke-static {v2, v4, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-nez v2, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 250
    invoke-static {v2, v3, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/Button;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_4
    :goto_1
    return-void
.end method
