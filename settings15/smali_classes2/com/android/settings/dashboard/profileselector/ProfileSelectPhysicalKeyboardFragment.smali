.class public final Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "input_device_identifier"

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;)[Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700b8

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "input_device_identifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-void
.end method
