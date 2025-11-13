.class public final synthetic Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    sget p2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringOffActivity;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stopTethering(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "connect "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothTetheringOffActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->connect()I

    invoke-virtual {p1}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
