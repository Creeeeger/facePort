.class public Lcom/android/settings/accounts/AccountDetailDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mAccount:Landroid/accounts/Account;

.field public mAccountLabel:Ljava/lang/String;

.field public mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

.field mAccountType:Ljava/lang/String;

.field public mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/accounts/AccountSyncPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/accounts/AccountHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/accounts/AccountHeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentActivity;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    return v1

    :cond_2
    const-string v1, "com.android.settings.ia.account"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "extra.accountName"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER"

    iget-object p0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    return v0
.end method

.method public finishIfAccountMissing()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-class v2, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

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

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v6, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

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

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccountDetailDashboard"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7ef

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170026

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->updateUi()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_2

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    :cond_0
    const-string v1, "account_label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    :cond_1
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mUserHandle:Landroid/os/UserHandle;

    iput-object v0, p1, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iput-object v1, p1, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    iput-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->finishIfAccountMissing()V

    return-void
.end method

.method public updateUi()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "user_handle"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    new-instance v4, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    new-instance v1, Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-direct {v1, v0, v4, v2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V

    iget-object v5, v0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "Couldn\'t load preferences.xml file from "

    const-string v8, "AccountTypePrefLoader"

    iget-object v9, v4, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    :try_start_0
    iget-object v4, v4, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v4, :cond_7

    :try_start_1
    iget v5, v4, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v5, :cond_7

    invoke-virtual {v1, v6}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->generateFragmentAllowlist(Landroidx/preference/PreferenceGroup;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    iget-object v11, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11, v10, v2}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const v12, 0x7f150695

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v12, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;

    const-class v14, Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-direct {v12, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v14, v12, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;->mLocalClass:Ljava/lang/Class;

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v12

    iget v14, v4, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v12, v9, v14, v10}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    move v14, v13

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_4

    invoke-virtual {v9, v12}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v15

    instance-of v13, v15, Landroidx/preference/PreferenceCategory;

    if-eqz v13, :cond_1

    new-instance v13, Landroidx/preference/PreferenceCategory;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v16, v4

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v13, v4, v3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :catch_0
    :goto_2
    move-object v6, v3

    :catch_1
    move-object/from16 v3, v16

    goto/16 :goto_6

    :catch_2
    :goto_3
    move-object v6, v3

    :catch_3
    move-object/from16 v3, v16

    goto/16 :goto_8

    :catch_4
    move-object/from16 v16, v4

    goto :goto_2

    :catch_5
    move-object/from16 v16, v4

    goto :goto_3

    :cond_1
    move-object/from16 v16, v4

    instance-of v4, v15, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    new-instance v4, Landroidx/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v4, v13, v3}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    instance-of v4, v15, Landroidx/preference/Preference;

    if-eqz v4, :cond_3

    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v4, v13, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v16, v4

    move v4, v13

    if-ne v14, v4, :cond_6

    :try_start_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_5

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/preference/Preference;

    invoke-virtual {v6, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    move-object v3, v6

    :cond_6
    :try_start_4
    invoke-virtual {v1, v3, v5}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->filterBlockedFragments(Landroidx/preference/PreferenceGroup;Ljava/util/Set;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catch_6
    move-object v6, v3

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v4, v3, v8}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object v3, v6

    goto :goto_9

    :catch_7
    move-object v6, v3

    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v4, v3, v8}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    :goto_9
    if-eqz v3, :cond_8

    iget-object v4, v0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroidx/preference/PreferenceCategory;

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v4, :cond_8

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    const-string v1, "remove_account"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a028a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v3, v0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    filled-new-array {v4, v3, v6, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider2/DeviceAccountPolicy"

    const-string v6, "isAccountRemovalAllowedAsUser"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setEnabled(Z)V

    goto :goto_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const-string v5, "no_modify_accounts"

    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v3, v2, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccountManagementDisabled(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    if-eqz v3, :cond_b

    const v4, 0x7f060146

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lcom/android/settingslib/RestrictedLockImageSpan;

    invoke-direct {v4, v0}, Lcom/android/settingslib/RestrictedLockImageSpan;-><init>(Landroid/content/Context;)V

    const-string v5, " "

    invoke-virtual {v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    new-instance v4, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;

    invoke-direct {v4, v0, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_a
    return-void
.end method
