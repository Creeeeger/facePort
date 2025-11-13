.class Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothCastProfileManager.java"

# interfaces
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    return-void
.end method

.method private getTextType(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    .line 203
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)V
    .locals 8

    const-string v0, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, ", new state : "

    const-string v3, "Profiles StateChangedHandler device : "

    const-string v4, "com.samsung.android.bluetooth.cast.extra.STATE"

    const-string v5, "StateChangedHandler :: mBluetoothCastProfile is null"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v0, v6, :cond_a

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-nez v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->findCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object p3

    if-nez p3, :cond_1

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StateChangedHandler :: Can\'t add castdevice"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_1
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "com.samsung.android.bluetooth.cast.extra.PREV_STATE"

    .line 130
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "com.samsung.android.bluetooth.cast.extra.ERROR"

    .line 131
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mProfile : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", old state : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_9

    if-ne v4, v7, :cond_9

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->getTextType(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v7, :cond_2

    if-ne v1, v6, :cond_9

    :cond_2
    if-ne v1, v7, :cond_3

    .line 143
    sget v2, Lcom/android/settingslib/R$string;->sec_bluetooth_cast_error_summary_wrong:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 144
    :cond_3
    sget v2, Lcom/android/settingslib/R$string;->sec_bluetooth_cast_error_wrong:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x5

    if-eq p2, v3, :cond_6

    const/16 v3, 0xb

    if-eq p2, v3, :cond_4

    goto :goto_2

    :cond_4
    if-ne v1, v7, :cond_5

    .line 148
    sget p2, Lcom/android/settingslib/R$string;->sec_bluetooth_cast_error_summary_deny:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 149
    :cond_5
    sget p2, Lcom/android/settingslib/R$string;->sec_bluetooth_cast_error_deny:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v2, p2

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    .line 152
    sget p2, Lcom/android/settingslib/R$string;->sec_bluetooth_cast_error_summary_not_respond:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 153
    :cond_7
    sget p2, Lcom/android/settingslib/R$string;->sec_bluetooth_cast_error_not_respond:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :goto_2
    if-ne v1, v7, :cond_8

    .line 160
    invoke-virtual {p3, v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 162
    :cond_8
    invoke-static {p1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;I)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetmCastEventManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    invoke-virtual {p1, p3, p0, v0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->dispatchCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;II)V

    goto/16 :goto_4

    :cond_a
    if-ne v0, v7, :cond_f

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-nez v0, :cond_b

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 175
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_c

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StateChangedHandler :: Can\'t get bluetoothdevice"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_c
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 185
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-nez p1, :cond_d

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StateChangedHandler :: Can\'t get localBtManager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_d
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_e

    .line 193
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StateChangedHandler :: Can\'t get cacheddevice"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;->mBluetoothCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    instance-of p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-eqz p0, :cond_f

    .line 197
    invoke-virtual {p1, p3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onCastProfileStateChanged(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;I)V

    :cond_f
    :goto_4
    return-void
.end method
