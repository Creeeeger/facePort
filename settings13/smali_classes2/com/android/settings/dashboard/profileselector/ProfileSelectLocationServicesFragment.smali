.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectLocationServicesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected forceUpdateHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    .line 34
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "profile"

    const/4 v1, 0x2

    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    new-instance v2, Lcom/android/settings/location/LocationServicesForWork;

    invoke-direct {v2}, Lcom/android/settings/location/LocationServicesForWork;-><init>()V

    .line 37
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    .line 40
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    new-instance v0, Lcom/android/settings/location/LocationServices;

    invoke-direct {v0}, Lcom/android/settings/location/LocationServices;-><init>()V

    .line 42
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array p0, v1, [Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object v2, p0, v3

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 51
    sget p0, Lcom/android/settings/R$xml;->location_services_header:I

    return p0
.end method
