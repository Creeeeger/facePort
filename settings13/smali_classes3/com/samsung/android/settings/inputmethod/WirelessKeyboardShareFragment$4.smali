.class Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "WirelessKeyboardShareFragment.java"


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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 265
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetisBluetoothOn(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fputisBluetoothOn(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Z)V

    .line 274
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareDBUtil(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->gethostlist()[Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetswitchPosition(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetswitchPosition(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    .line 277
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    .line 278
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->remoteDeviceEnabled(Z)V

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$msyncStatus(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$msyncStatus(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    :cond_3
    :goto_0
    return-void
.end method
