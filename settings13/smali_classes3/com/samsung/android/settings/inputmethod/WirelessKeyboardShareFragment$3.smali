.class Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;
.super Landroid/os/Handler;
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

    .line 240
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 243
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->remoteDeviceEnabled(Z)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$msyncStatus(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    :goto_0
    return-void
.end method
