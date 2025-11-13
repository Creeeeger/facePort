.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;)[Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700c7

    return p0
.end method
