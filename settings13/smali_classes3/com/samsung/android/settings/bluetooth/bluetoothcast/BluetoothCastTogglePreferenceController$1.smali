.class Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "BluetoothCastTogglePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController$1;->this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController$1;->this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController$1;->this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastTogglePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
