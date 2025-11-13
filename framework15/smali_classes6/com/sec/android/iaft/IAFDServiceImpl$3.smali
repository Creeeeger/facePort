.class Lcom/sec/android/iaft/IAFDServiceImpl$3;
.super Ljava/lang/Object;
.source "IAFDServiceImpl.java"

# interfaces
.implements Lcom/sec/android/iaft/SmLib_CheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iaft/IAFDServiceImpl;->checkUpdate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

.field final synthetic blacklist val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    iput-object p2, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->val$bundle:Landroid/os/Bundle;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "hasUpdate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmHandler(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
