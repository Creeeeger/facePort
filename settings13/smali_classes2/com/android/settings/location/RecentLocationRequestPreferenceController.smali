.class public Lcom/android/settings/location/RecentLocationRequestPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field static final KEY_SEE_ALL_BUTTON:Ljava/lang/String; = "recent_location_requests_see_all_button"

.field public static final MAX_APPS:I = 0x3


# instance fields
.field private mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

.field mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

.field private mSeeAllButton:Landroidx/preference/Preference;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 47
    iput p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mType:I

    .line 84
    new-instance p2, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {p2, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    return-void
.end method

.method public static createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settingslib/widget/AppPreference;
    .locals 2

    .line 174
    new-instance v0, Lcom/android/settingslib/widget/AppPreference;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object p0, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object p0, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    new-instance p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;

    iget-object v1, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p2, v1, p1}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public static isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/location/RecentLocationApps$Request;I)Z
    .locals 1

    .line 188
    iget-object p1, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    .line 189
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 188
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


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "recent_location_requests_see_all_button"

    .line 93
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mSeeAllButton:Landroidx/preference/Preference;

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 98
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const-string/jumbo v3, "privacy"

    const-string v4, "location_indicators_small_enabled"

    .line 101
    invoke-static {v3, v4, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "locationShowSystemOps"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    .line 107
    :goto_0
    iget-object v5, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v5, v3}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 109
    iget v6, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mType:I

    invoke-static {v2, v5, v6}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/location/RecentLocationApps$Request;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mSeeAllButton:Landroidx/preference/Preference;

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 121
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 124
    iget-object v3, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 125
    invoke-static {p1, v2, v4}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settingslib/widget/AppPreference;

    move-result-object v2

    .line 124
    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 129
    :cond_3
    new-instance v1, Lcom/android/settingslib/widget/AppPreference;

    invoke-direct {v1, p1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 130
    sget p1, Lcom/android/settings/R$string;->location_no_recent_apps:I

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 132
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 134
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 139
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 140
    iget-object p0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mSeeAllButton:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 157
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setProfileType(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mType:I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
