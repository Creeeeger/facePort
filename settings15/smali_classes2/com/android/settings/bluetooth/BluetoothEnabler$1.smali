.class public final Lcom/android/settings/bluetooth/BluetoothEnabler$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mIsProfileReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    add-int/2addr p1, v1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setBluetoothSummary()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_bluetooth_on"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method
