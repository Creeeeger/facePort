.class Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;
.super Ljava/lang/Object;
.source "BluetoothCastTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->onClick()V
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

    .line 209
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BluetoothCastTile"

    const-string v1, "lock has been released"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetisBluetoothCastOn(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fputisBluetoothCastOn(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Z)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetisBluetoothCastOn(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Z

    move-result p0

    const-string v1, "bluetooth_cast_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
