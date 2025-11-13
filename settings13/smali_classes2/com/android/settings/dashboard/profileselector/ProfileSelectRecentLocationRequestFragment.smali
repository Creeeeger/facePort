.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectRecentLocationRequestFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectRecentLocationRequestFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$string;->location_category_recent_location_requests:I

    return p0
.end method

.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    .line 35
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "profile"

    const/4 v1, 0x2

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    new-instance v2, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-direct {v2}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;-><init>()V

    .line 38
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    .line 41
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    new-instance v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-direct {v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;-><init>()V

    .line 43
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array p0, v1, [Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object v2, p0, v3

    return-object p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 63
    const-class p0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 52
    sget p0, Lcom/android/settings/R$xml;->location_recent_requests_header:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_location"

    return-object p0
.end method
