.class public final Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action = "

    const-string v1, "BluetoothCastTile"

    const-string v2, "com.samsung.android.settings.bluetooth.AVAILABLE_DEVICE"

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string p1, "count"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object v0, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    const-string v1, "bluetooth_cast_disallowed_devices"

    if-nez v0, :cond_1

    :try_start_0
    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_3
    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.samsung.android.bluetooth.cast.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    if-nez p2, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - state : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    :cond_5
    :goto_3
    return-void
.end method
