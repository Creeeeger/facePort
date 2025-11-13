.class public abstract Lcom/android/settings/utils/ManagedServiceSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field public final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mServiceListing:Lcom/android/settingslib/applications/ServiceListing;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    sget-object v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v5, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    new-instance v7, Lcom/android/settingslib/applications/ServiceListing;

    iget-object v2, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/applications/ServiceListing;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    new-instance p1, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;)V

    iget-object v0, v7, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget p1, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method

.method public setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/applications/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    return v0

    :cond_0
    iget-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    iget-object p3, p3, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    new-instance p3, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "l"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p3, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "dialog"

    invoke-virtual {p3, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1
.end method
