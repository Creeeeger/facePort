.class Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;
.super Ljava/lang/Object;
.source "WirelessKeyboardShareFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->updateWirelessKeyboardShare()V
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

    .line 204
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iput p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 207
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fputisBluetoothOn(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Z)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fputswitchPosition(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V

    return v0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareDBUtil(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->gethostlist()[Ljava/lang/String;

    move-result-object p1

    .line 216
    iget v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    sub-int/2addr v1, v0

    .line 217
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x2

    .line 220
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 221
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    invoke-virtual {p1, v1}, Landroid/hardware/input/InputManager;->addDeviceWirelessKeyboardShare(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 224
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;

    move-result-object v2

    aget-object p1, p1, v1

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->val$finalI:I

    invoke-virtual {v2, p1, v1}, Landroid/hardware/input/InputManager;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    .line 229
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->remoteDeviceEnabled(Z)V

    :cond_3
    :goto_0
    return v0
.end method
