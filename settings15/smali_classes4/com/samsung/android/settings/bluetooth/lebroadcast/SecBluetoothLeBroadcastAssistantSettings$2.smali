.class public final Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$AssistantCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    return-void
.end method


# virtual methods
.method public final onSourceInfoChanged(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSourceInfoChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothLeBroadcastAssistantSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
