.class public final Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final synthetic this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;->$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;->$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-boolean v2, v2, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->showDevicesWithoutNames:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;->$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mHideSecondTarget:Z

    return-object p1
.end method
