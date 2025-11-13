.class public Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;
.super Lcom/android/settingslib/widget/AppSwitchPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field public mCacheIcon:Landroid/graphics/drawable/Drawable;

.field public final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field public mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

.field public final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field public final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field public final mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/datausage/DataSaverBackend;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iput-object p4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-static {p1, p3, p4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataUsageUserControlDisabled(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    iget-object p1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p3, "android:unrestricted_data_access"

    invoke-virtual {v0, p3, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkEcmRestrictionAndSetDisabled(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "|"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0802c0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isDisabledByEcm()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    return p0
.end method

.method public final onAllowlistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverAllowlisted:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    :cond_0
    return-void
.end method

.method public final onAttached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->registerDependency()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v0, v0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0f87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0125

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    if-eqz v1, :cond_4

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public final onClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const v2, 0x7f140b8a

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    :goto_0
    return-void
.end method

.method public final onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onDenylistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    :cond_0
    return-void
.end method

.method public final onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public final performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public final updateState()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverAllowlisted:Z

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v0, v0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const v0, 0x7f140d0c

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    if-eqz v0, :cond_1

    const v0, 0x7f141f00

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->isDisabledByEcm()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
