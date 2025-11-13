.class public final synthetic Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

.field public final synthetic f$1:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;

    iget-object p2, p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e85

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->processCodeDialogButtonClick(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;

    iget-object p2, p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e84

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;->processCodeDialogButtonClick(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSourceItem;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
