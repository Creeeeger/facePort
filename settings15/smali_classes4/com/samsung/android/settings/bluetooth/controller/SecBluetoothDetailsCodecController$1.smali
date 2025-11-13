.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecBluetoothDetailsCodecController"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onReceive : action is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "onReceive : action "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    const-string v2, "com.samsung.bluetooth.a2dp.intent.action.SSC_UHQ_ENABLED_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.samsung.bt.hfp.intent.action.SWB_ENABLED_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSwbStateChangedFromSettings:Z

    if-nez p1, :cond_3

    const-string/jumbo p1, "onReceive : update swb codec enabled status"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->refresh()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSscUhqStateChangedFromSettings:Z

    if-nez p1, :cond_3

    const-string/jumbo p1, "onReceive : update ssc uhq enabled status"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->refresh()V

    :cond_3
    :goto_0
    return-void
.end method
