.class public Lcom/android/settings/location/RecentLocationAccessPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final MAX_APPS:I = 0x3


# instance fields
.field private isEnabled:Z

.field private mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

.field mRecentLocationApps:Lcom/android/settingslib/applications/RecentAppOpsAccess;

.field private mShowSystem:Z

.field private mSystemSettingChanged:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/settingslib/applications/RecentAppOpsAccess;->createForLocation(Landroid/content/Context;)Lcom/android/settingslib/applications/RecentAppOpsAccess;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/RecentAppOpsAccess;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/RecentAppOpsAccess;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x7

    iput p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mType:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mShowSystem:Z

    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mSystemSettingChanged:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->isEnabled:Z

    iput-object p3, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/applications/RecentAppOpsAccess;

    const-string p3, "privacy"

    const-string v0, "location_indicators_small_enabled"

    invoke-static {p3, v0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "locationShowSystemOps"

    invoke-static {p3, v0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, p2, :cond_0

    move p1, p2

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mShowSystem:Z

    return-void
.end method

.method public static createAppPreference(Landroid/content/Context;Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settingslib/widget/AppPreference;
    .locals 5

    new-instance v0, Lcom/android/settingslib/widget/AppPreference;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->accessFinishTime:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const/4 v3, 0x0

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p1, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p2, v1, p1}, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public static isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;I)Z
    .locals 1

    iget-object p1, p1, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    return p1

    :cond_0
    if-nez p0, :cond_1

    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private loadRecentAccesses()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/applications/RecentAppOpsAccess;

    iget-boolean v4, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mShowSystem:Z

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/RecentAppOpsAccess;->getAppList(Z)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/settingslib/applications/RecentAppOpsAccess$1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;

    iget v5, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mType:I

    invoke-static {v2, v4, v5}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;

    iget-object v3, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-static {v0, v2, v4}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settingslib/widget/AppPreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f0d096b

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object p0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clearPreferenceList()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p1}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->loadRecentAccesses()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->isEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p2, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-boolean p2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->isEnabled:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iput-boolean p2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mSystemSettingChanged:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->isEnabled:Z

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setProfileType(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mType:I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateShowSystem()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mSystemSettingChanged:Z

    invoke-virtual {p0}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->clearPreferenceList()V

    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->loadRecentAccesses()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mSystemSettingChanged:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->loadRecentAccesses()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mSystemSettingChanged:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
