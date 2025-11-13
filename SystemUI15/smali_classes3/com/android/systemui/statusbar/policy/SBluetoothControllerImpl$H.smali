.class public final Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "SBluetoothControllerImpl"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;->onMusicShareDiscoveryStateChanged(Z)V

    goto :goto_0

    :pswitch_1
    const-string v0, "fireMusicShareStateChanged((CachedBluetoothCastDevice) msg.obj)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;->onMusicShareStateChanged()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;->onBluetoothScanStateChanged(Z)V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(Z)V

    goto :goto_3

    :pswitch_6
    iget-object p1, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, " firePairedDevicesChanged "

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "firePairedDevicesChanged"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDevicesChanged()V

    goto :goto_4

    :cond_0
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
