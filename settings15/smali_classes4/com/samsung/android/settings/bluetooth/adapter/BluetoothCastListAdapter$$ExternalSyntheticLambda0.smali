.class public final synthetic Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

.field public final synthetic f$1:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    return-void
.end method
