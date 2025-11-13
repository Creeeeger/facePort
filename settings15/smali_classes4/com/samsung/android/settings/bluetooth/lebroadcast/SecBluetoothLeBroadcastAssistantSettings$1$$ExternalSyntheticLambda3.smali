.class public final synthetic Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$2;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    sget v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->getBluetoothBroadcastSourceItem(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;

    iget-object v3, v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->mRecvState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->updateTitleAndSummary()V

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->updateConnectedCardUi(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->isConnected()Z

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->updateMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->updateConnectedCardUi(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;)V

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mSourceListAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantListAdapter;

    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mSourceItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getRssi()I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->-$$Nest$mupdateListItemFromBroadcastMetadata(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
