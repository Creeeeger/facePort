.class public final Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$7;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$7;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$7;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mBroadcastCodeDialogItem:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "SecBluetoothLeBroadcastAssistantSettings"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "afterTextChanged, refresh timeout. bid "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mBroadcastCodeDialogItem:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;

    iget v2, v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->mBroadcastId:I

    invoke-static {v0, v2, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "afterTextChanged, refresh timeout. but item is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$7;

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
