.class public final Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$onChange:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$3;->val$onChange:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$3;->val$onChange:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
