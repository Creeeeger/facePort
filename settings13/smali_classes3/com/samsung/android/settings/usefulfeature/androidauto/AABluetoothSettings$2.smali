.class Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AABluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 538
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AABluetoothSettings"

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    const/16 p1, 0x8

    const/16 v0, 0xc

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 579
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string p2, "AABluetoothSettings"

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCarkit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothUtils;->isCarKitDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    if-eq p2, v0, :cond_9

    const-string p2, "AABluetoothSettings"

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    monitor-enter p0

    .line 588
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "AABluetoothSettings"

    const-string v0, "add device"

    .line 589
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 592
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    const-string v0, "Paired devices"

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    const-string v0, "Available devices"

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AABluetoothSettings"

    .line 594
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expandableListDetail + "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->setData(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    .line 599
    :cond_5
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    const-string p2, "AABluetoothSettings"

    const-string v0, "onReceive: BT scanning start"

    .line 570
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->noDevicesFoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->-$$Nest$mclearAvailableDevices(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    goto/16 :goto_1

    :pswitch_2
    const-string p0, "AABluetoothSettings"

    const-string p1, "onReceive: ACTION_ACL_CONNECTED"

    .line 607
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "android.bluetooth.device.extra.DEVICE"

    .line 608
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :pswitch_3
    const-string p1, "AABluetoothSettings"

    const-string v3, "onReceive: ACTION_STATE_CHANGED"

    .line 542
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    .line 543
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "AABluetoothSettings"

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa

    if-eq p1, p2, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_1

    .line 557
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->-$$Nest$mstartScanning(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    .line 559
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->-$$Nest$mshowListView(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;Z)V

    .line 560
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->-$$Nest$mupdateExpdandableListDetail(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    goto :goto_1

    .line 550
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->-$$Nest$mshowListView(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;Z)V

    goto :goto_1

    :pswitch_4
    const-string p2, "AABluetoothSettings"

    const-string v0, "onReceive: BT scanning finish"

    .line 615
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_8

    .line 620
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->noDevicesFoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 622
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->noDevicesFoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a269925 -> :sswitch_4
        -0x5b36f014 -> :sswitch_3
        -0x11f77b4b -> :sswitch_2
        0x6724d8 -> :sswitch_1
        0x459717c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
