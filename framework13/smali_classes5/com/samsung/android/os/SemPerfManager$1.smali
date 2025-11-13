.class Lcom/samsung/android/os/SemPerfManager$1;
.super Landroid/os/Handler;
.source "SemPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 92
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 95
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "value":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/os/SemPerfManager;->-$$Nest$smsendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
