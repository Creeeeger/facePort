.class public final Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "BluetoothCastTile"

    const-string v1, "lock has been released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    const-string v1, "bluetooth_cast_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
