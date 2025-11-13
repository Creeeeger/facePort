.class public Lcom/android/settings/connecteddevice/stylus/StylusUsiDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mInputDevice:Landroid/view/InputDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/connecteddevice/stylus/StylusUsiDetailsFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    invoke-direct {v2, p1, v3}, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;-><init>(Landroid/content/Context;Landroid/view/InputDevice;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;-><init>(Landroid/content/Context;Landroid/view/InputDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "StylusUsiDetailsFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7e5

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170270

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_input_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
