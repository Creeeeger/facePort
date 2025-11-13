.class public final Lcom/android/settings/development/AdbDeviceDetailsHeaderController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field static final KEY_HEADER:Ljava/lang/String; = "adb_device_header"


# instance fields
.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public final mPairedDevice:Landroid/debug/PairDevice;


# direct methods
.method public constructor <init>(Landroid/debug/PairDevice;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mPairedDevice:Landroid/debug/PairDevice;

    iput-object p3, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "adb_device_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05c5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x10803b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mPairedDevice:Landroid/debug/PairDevice;

    iget-object p0, p0, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "adb_device_header"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
