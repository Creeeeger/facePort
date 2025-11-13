.class Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCastTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCastTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.settings.bluetooth.AVAILABLE_DEVICE"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string p1, "count"

    .line 119
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 120
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmAvailableDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 121
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "bluetooth_cast_disallowed_devices"

    if-nez p2, :cond_1

    .line 123
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 125
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fputmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fputmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 130
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 135
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 137
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 142
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 145
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 148
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    if-nez p2, :cond_5

    .line 151
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - state : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    :cond_5
    :goto_2
    return-void
.end method
