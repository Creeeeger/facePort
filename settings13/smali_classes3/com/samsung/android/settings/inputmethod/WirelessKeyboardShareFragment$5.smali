.class Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;
.super Ljava/lang/Object;
.source "WirelessKeyboardShareFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->syncStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iput p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 396
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-wide/16 v2, 0xbb8

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    return v1

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->setHostRoleWirelessKeyboardShare()V

    .line 415
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    .line 416
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 417
    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 419
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->remoteDeviceEnabled(Z)V

    return v0

    .line 427
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    aget-object v1, v1, v2

    .line 428
    invoke-virtual {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v2

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    aget-object p0, v2, p0

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getIndex()I

    move-result p0

    .line 427
    invoke-virtual {p1, v1, p0}, Landroid/hardware/input/InputManager;->changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V

    return v0

    .line 422
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    aget-object v1, v1, v2

    .line 423
    invoke-virtual {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v2

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    aget-object p0, v2, p0

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getIndex()I

    move-result p0

    .line 422
    invoke-virtual {p1, v1, p0}, Landroid/hardware/input/InputManager;->removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V

    return v0

    .line 398
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 399
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 400
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fputisBluetoothOn(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Z)V

    .line 401
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fputswitchPosition(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V

    return v0

    .line 404
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    aget-object v4, v4, v5

    .line 405
    invoke-virtual {v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->val$finalI:I

    aget-object v5, v5, v6

    .line 406
    invoke-virtual {v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getIndex()I

    move-result v5

    .line 404
    invoke-virtual {p1, v4, v5}, Landroid/hardware/input/InputManager;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    .line 407
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    .line 408
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 409
    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 411
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->remoteDeviceEnabled(Z)V

    return v0
.end method
