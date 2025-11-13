.class Lcom/sec/android/iaft/IAFDServiceImpl$2;
.super Ljava/lang/Object;
.source "IAFDServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iaft/IAFDServiceImpl;->showSystemAppDiaglog(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

.field final synthetic blacklist val$bundle:Landroid/os/Bundle;

.field final synthetic blacklist val$trigApp:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/sec/android/iaft/IAFDServiceImpl;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/iaft/IAFDServiceImpl;

    .line 192
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    iput-object p2, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->val$trigApp:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 195
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->val$trigApp:Ljava/lang/String;

    const-string v1, "SmartMApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_START_THIRD_APP_ERROR_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sm_cn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 201
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 203
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 204
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$2;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmHandler(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method
