.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$1;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mIsWorkingSwitchAnimation:Z

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mNeedUiUpdate:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mIsPaused:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method
