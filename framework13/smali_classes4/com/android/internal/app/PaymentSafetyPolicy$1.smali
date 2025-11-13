.class Lcom/android/internal/app/PaymentSafetyPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSafetyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PaymentSafetyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/PaymentSafetyPolicy;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/PaymentSafetyPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PaymentSafetyPolicy;

    .line 220
    iput-object p1, p0, Lcom/android/internal/app/PaymentSafetyPolicy$1;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 225
    .local v1, "userId":I
    const-string v2, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "userid"

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 228
    :cond_0
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 230
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 231
    .local v2, "message":Landroid/os/Message;
    const/16 v4, 0x32

    iput v4, v2, Landroid/os/Message;->what:I

    .line 232
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "action"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 236
    iget-object v3, p0, Lcom/android/internal/app/PaymentSafetyPolicy$1;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-static {v3}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/PaymentSafetyPolicy;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method
