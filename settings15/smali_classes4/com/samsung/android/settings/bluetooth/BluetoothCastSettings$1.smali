.class public final Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string p1, "handleMessage - EVENT_DEVICE_STATE_CHANGED "

    const-string v0, "BluetoothCastSettings"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updateHelpPreferences(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updatePreferences(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "handleMessage - Ignore msg"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
