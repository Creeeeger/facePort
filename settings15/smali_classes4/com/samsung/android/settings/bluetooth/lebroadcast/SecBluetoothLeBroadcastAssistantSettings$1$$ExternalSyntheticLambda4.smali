.class public final synthetic Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda4;->f$2:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda4;->f$2:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    sget v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->$r8$clinit:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->updateListItemFromBroadcastReceiveState(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method
