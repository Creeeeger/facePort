.class public final Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mControllers:Ljava/util/List;

.field public final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field public final mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;->mControllers:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hearing_device_group"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    return-void
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final refresh()V
    .locals 0

    return-void
.end method

.method public setSubControllers(Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceSettingsController;Lcom/android/settings/bluetooth/BluetoothDetailsHearingAidsPresetsController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceController;->mControllers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
