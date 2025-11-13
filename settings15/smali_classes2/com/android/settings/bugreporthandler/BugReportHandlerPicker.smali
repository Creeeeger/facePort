.class public Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/development/DeveloperOptionAwareMixin;


# instance fields
.field public mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

.field public mFooter:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method public static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f080469

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const v2, 0x7f14087b

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendix:Landroid/view/View;

    const/16 p2, 0x8

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput p2, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    return-void
.end method

.method public createDefaultAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 7

    new-instance v6, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;

    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.shell"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f142e3e

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance v0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    const-string v1, "Settings.WORK_PROFILE_APP_SUBTEXT"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance v0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    const-string v1, "Settings.PERSONAL_PROFILE_APP_SUBTEXT"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;)V

    return-object v6
.end method

.method public createDefaultBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;
    .locals 0

    new-instance p0, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->createDefaultBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->setBugReportHandlerUtil(Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    return-object p0
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const-string v4, "com.android.shell"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, 0x400000

    if-eqz v5, :cond_0

    invoke-static {v0, v3, v4}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v0, v7, v4}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "BugReportHandlerUtil"

    const-string v4, "Failed to get bugreportAllowlistedPackages:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/PackageItemInfo;

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->createDefaultAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getCurrentBugReportHandlerAppAndUser(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x710

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17006d

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onSelectionPerformed(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "android.settings.BUGREPORT_HANDLER_SETTINGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x7f142a7c

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBugReportHandlerUtil(Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BugReportHandlerPicker"

    const-string v1, "Failed to get handlerUser"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->isBugreportAllowlistedApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, v2}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_bugreport_handler_app"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "custom_bugreport_handler_user"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v4

    :goto_1
    return v3
.end method
