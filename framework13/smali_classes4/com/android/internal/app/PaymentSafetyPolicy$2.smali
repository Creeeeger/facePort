.class Lcom/android/internal/app/PaymentSafetyPolicy$2;
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

    .line 240
    iput-object p1, p0, Lcom/android/internal/app/PaymentSafetyPolicy$2;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    :cond_0
    const-string v1, "android.intent.extra.UID"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 246
    .local v1, "uid":I
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 247
    .local v2, "isReInstall":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 248
    .local v3, "uri":Landroid/net/Uri;
    if-nez v2, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 252
    .local v4, "message":Landroid/os/Message;
    const/16 v5, 0x28

    iput v5, v4, Landroid/os/Message;->what:I

    .line 253
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "action"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v6, "uid"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pkg_name"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 258
    iget-object v6, p0, Lcom/android/internal/app/PaymentSafetyPolicy$2;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-static {v6}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/PaymentSafetyPolicy;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    .end local v1    # "uid":I
    .end local v2    # "isReInstall":Z
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_2
    return-void

    .line 249
    .restart local v1    # "uid":I
    .restart local v2    # "isReInstall":Z
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    return-void
.end method
