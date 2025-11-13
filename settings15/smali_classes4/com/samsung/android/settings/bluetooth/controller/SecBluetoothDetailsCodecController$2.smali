.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSwbStateChangedFromSettings:Z

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mIsCalledDestroy:Z

    if-eqz p1, :cond_1

    const-string p0, "SecBluetoothDetailsCodecController"

    const-string p1, "EVENT_LC3_ENABLING :: it doesn\'t need to update view, it is destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->refresh()V

    :goto_0
    return-void
.end method
