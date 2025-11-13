.class Lcom/samsung/aasaservice/AASAServiceManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AASAServiceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/aasaservice/AASAServiceManagerImpl;->bindAfterBootComplete(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/aasaservice/AASAServiceManagerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$1;->this$0:Lcom/samsung/aasaservice/AASAServiceManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "AASAServiceManager"

    const-string/jumbo v1, "receive: ACTION_LAZY_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$1;->this$0:Lcom/samsung/aasaservice/AASAServiceManagerImpl;

    invoke-static {v0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->-$$Nest$mbindService(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
