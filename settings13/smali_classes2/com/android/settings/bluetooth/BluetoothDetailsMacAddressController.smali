.class public Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsMacAddressController.java"


# instance fields
.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "device_details_footer"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "device_details_footer"

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_device_mac_address:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 49
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected refresh()V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->bluetooth_multuple_devices_mac_address:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 57
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 55
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v3, "\n"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->bluetooth_device_mac_address:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 64
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    .line 63
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
