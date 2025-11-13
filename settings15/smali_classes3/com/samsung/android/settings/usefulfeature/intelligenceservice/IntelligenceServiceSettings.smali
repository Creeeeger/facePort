.class public Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference$OnClickListener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

.field public final mIntelligenceServiceReceiver:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$1;

.field public mProfileType:I

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$3;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mIntelligenceServiceReceiver:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$1;

    return-void
.end method


# virtual methods
.method public final createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 3

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.PREFERENCE_TYPE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createPreference type : "

    const-string v2, ", tile key : "

    invoke-static {v1, v0, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntelligenceServiceSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "PreferenceCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public final displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final finishOrReturnToPlaceHolder$2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.CONNECTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "IntelligenceServiceSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x13880

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701b1

    return p0
.end method

.method public final isLoadingSupported()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const-string p3, "onActivityResult: requestCode : "

    const-string v0, " resultCode : "

    const-string v1, "IntelligenceServiceSettings"

    invoke-static {p3, v0, p1, p2, v1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const-string p3, "ai_info_confirmed"

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x3ea

    if-eq p1, v3, :cond_5

    const/16 v4, 0x7d2

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x3e9

    if-eq p1, v5, :cond_1

    const/16 v6, 0x7d1

    if-ne p1, v6, :cond_8

    :cond_1
    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-static {p2, v0}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-static {p1, p3, v2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_2
    :try_start_0
    const-string p2, "addSamsungAccount"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    if-ne p1, v5, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-static {p2, p0, v3, v2, p1}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;III)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ActivityNotFoundException"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string p1, "call finish 3"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->finishOrReturnToPlaceHolder$2()V

    goto :goto_2

    :cond_5
    :goto_1
    if-ne p2, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExists(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isChildAccount(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-static {p1, p3, v2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_6
    const-string p1, "Account is not exsits or child account call finish 1"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->finishOrReturnToPlaceHolder$2()V

    goto :goto_2

    :cond_7
    const-string p1, "call finish 2"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->finishOrReturnToPlaceHolder$2()V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mProfileType:I

    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mProfileType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "IntelligenceServiceSettings"

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string v0, "ProfileSelectFragment default"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "ProfileSelectFragment.ProfileType.WORK"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v1, "ProfileSelectFragment.ProfileType.PERSONAL"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    :goto_1
    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    const-class p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->init(I)V

    return-void
.end method

.method public final onCategoriesChanged(Ljava/util/Set;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCategoriesChanged(Ljava/util/Set;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->mPackageInfo:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object p0, v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->mListener:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference$OnClickListener;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->updatePreference$6$1()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportedIntelligenceService(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "IntelligenceServiceSettings"

    if-nez p1, :cond_0

    const-string p1, "not support IntelligenceService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableAutoFlowLogging(Z)V

    const-string p1, "AI003"

    invoke-static {p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    const/16 v1, 0x2328

    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-direct {p1, v1, v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportedIntelligenceServiceForWork(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Samsung account is not exists."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v0, 0x3e9

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getManagedProfileId(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f1424b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f1424c3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mIntelligenceServiceReceiver:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$1;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mIntelligenceServiceReceiver:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b00

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070afe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, v0

    float-to-int v3, p1

    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080a92

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0a07a1

    const v5, 0x1020006

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mUserId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getManagedProfileId(Landroid/content/Context;)I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f1424b2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f1424c3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public final setPreferenceIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon is not found : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "IntelligenceServiceSettings"

    invoke-static {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updatePreference$6$1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    iput v1, v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->mStatus:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->updateStatusIcon(I)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->isSupportedAI()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    iput v1, v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->mStatus:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->updateStatusIcon(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput v1, v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->mStatus:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->updateStatusIcon(I)V

    goto :goto_0

    :cond_4
    return-void
.end method
