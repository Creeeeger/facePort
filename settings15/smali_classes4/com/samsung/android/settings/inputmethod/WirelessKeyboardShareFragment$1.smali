.class public final Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

.field public final synthetic val$finalI:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iput p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->val$finalI:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->val$finalI:I

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIsBluetoothOn:Z

    iput p0, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSwitchPosition:I

    return v2

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getHostList()[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->addDeviceWirelessKeyboardShare(I)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->sendMessageSwitchUpdate()V

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->remoteDeviceEnabled(Z)V

    :cond_3
    :goto_0
    return v2
.end method
