.class public final Lcom/android/settings/accounts/AccountSyncPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field public mAccount:Landroid/accounts/Account;

.field public mInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mPreference:Landroidx/preference/Preference;

.field public mUserHandle:Landroid/os/UserHandle;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "account_sync"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    const-string v0, "inset_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "account_sync"

    return-object p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 12

    const-string v0, "application_type"

    const-string v1, "authority"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.scloud"

    const/high16 v6, 0xc0000

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    sget-object v6, Lcom/samsung/android/scloud/lib/setting/RPCSyncSettingContract$Method;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    iput-object v6, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->rpcUri:Landroid/net/Uri;

    const-string v3, "setting"

    iput-object v3, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    iput-object v2, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->settingProvider:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->applicationType:I

    const-string v3, "[scsettingstatus][2.0.27.0]"

    sput-object v3, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->getProfile()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v6, "AccountSyncController"

    const-string v7, "SamsungCloudRPCContract result"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "precondition"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "NO_PRECONDITION"

    invoke-static {v6, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    sget-object v7, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    const-string v8, "getSyncableAppList"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v8, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->applicationType:I

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v8, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->rpcUri:Landroid/net/Uri;

    const-string v10, "get_syncable_app_list"

    invoke-virtual {v8, v9, v10, v2, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "syncable_app_list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v8, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSyncableAppList() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSyncableAppList() size : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v5

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "getAutoSync: "

    :try_start_2
    sget-object v10, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->applicationType:I

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "queried_authority"

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v10, v4, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->rpcUri:Landroid/net/Uri;

    const-string v11, "get_auto_sync"

    invoke-virtual {v8, v10, v11, v2, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "auto_sync"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    sget-object v9, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v5

    :goto_2
    if-eqz v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140241

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne v6, v7, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140242

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f140243

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2
    :cond_5
    return-object v2
.end method

.method public final getSummaryOnBackground()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "account_sync"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v0, "com.osp.app.signin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "com.samsung.android.scloud"

    invoke-static {p1, v2, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/samsung/android/settings/account/AccountUtils;->SupportTwoPhone:Z

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.SYNC_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x10008000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v0

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "account"

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p0, 0x8

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p0, 0x0

    const p1, 0x7f140244

    invoke-virtual {v1, p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    const-string v1, "com.osp.app.signin"

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/pm/SemUserInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateSummary(Landroidx/preference/Preference;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.osp.app.signin"

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AccountSyncController"

    const-string v1, "updateSummary - SAMSUNG_ACCOUNT_TYPE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v6, v1, v2

    iget-object v7, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v6, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v6

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    if-nez v2, :cond_7

    const p0, 0x7f140241

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_7
    if-ne v2, v4, :cond_8

    const p0, 0x7f140242

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f140243

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
