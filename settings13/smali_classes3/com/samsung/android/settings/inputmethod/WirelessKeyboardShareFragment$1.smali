.class Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;
.super Landroid/database/ContentObserver;
.source "WirelessKeyboardShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->registerWKSObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Landroid/os/Handler;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 146
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareDBUtil(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getChangedType()I

    move-result p1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WirelessKeyboardShareFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x5

    .line 169
    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
