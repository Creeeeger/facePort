.class Landroid/inputmethodservice/InputMethodService$3;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .line 4423
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4426
    const-string v0, "InputMethodService"

    const-string v1, "onReceive is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.axt9info.close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4428
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4429
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 4432
    :cond_0
    return-void
.end method
