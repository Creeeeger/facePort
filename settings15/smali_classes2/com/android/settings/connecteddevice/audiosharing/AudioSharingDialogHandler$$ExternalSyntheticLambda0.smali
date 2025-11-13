.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;Ljava/util/List;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/Object;[Landroid/util/Pair;I)V
    .locals 0

    iput p6, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "AudioSharingJoinDialog"

    iget v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;->sEventData:[Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->closeOpeningDialogsOtherThan(Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    return-void

    :pswitch_0
    sget-object v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;->sEventData:[Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->closeOpeningDialogsOtherThan(Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;->sEventData:[Landroid/util/Pair;

    const-string v0, "AudioSharingDisconnectDialog"

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->closeOpeningDialogsOtherThan(Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    return-void

    :pswitch_2
    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;->sEventData:[Landroid/util/Pair;

    const-string v0, "AudioSharingStopDialog"

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->closeOpeningDialogsOtherThan(Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
