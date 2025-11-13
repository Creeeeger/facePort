.class public Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mApp16to9:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public mApp4to3:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public mAppDefault:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public mAppFullScreen:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public mAtm:Landroid/app/IActivityTaskManager;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDescriptionPref:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0xead8

    return p0
.end method

.method public final handleAppRatioUpdated(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    :goto_0
    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityTaskManager;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set user min aspect ratio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aspectRatio"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xead8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0xead9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->updatePreferences(I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager;->isSupportAspectRatioMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAtm:Landroid/app/IActivityTaskManager;

    const p1, 0x7f17013d

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "aspect_ratio_preview"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mDescriptionPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo p1, "ratio_app_default"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppDefault:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string/jumbo p1, "ratio_app_full_screen"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppFullScreen:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string/jumbo p1, "ratio_app_4_to_3"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp4to3:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string/jumbo v0, "ratio_app_16_to_9"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp16to9:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mDescriptionPref:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a06bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f060738

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mDescriptionPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a06bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f142723

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1420d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v1, Lcom/samsung/android/core/CompatChangeableApps;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/core/CompatChangeableApps;-><init>(IZ)V

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/core/CompatChangeableApps;->isMinAspectRatioOverrideDisallowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppDefault:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppFullScreen:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp4to3:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp16to9:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppFullScreen:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    new-instance v0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp4to3:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    new-instance v0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp16to9:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    new-instance v0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final refreshUi()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry$1()V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    sget-object v1, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v3, v4, v0}, Landroid/app/IActivityTaskManager;->getUserOrSystemMinAspectRatioOverrideCode(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to get user or system min aspect ratio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x6

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    const/4 v4, 0x3

    if-ne v0, v1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_3

    const/4 v2, 0x2

    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->updatePreferences(I)V

    return v3

    :cond_4
    :goto_2
    const-string p0, "AppEntry or PackageInfo is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final updatePreferences(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppDefault:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppFullScreen:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp4to3:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp16to9:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mAppFullScreen:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-ne p1, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp4to3:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->mApp16to9:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    :goto_3
    return-void
.end method
