.class Lcom/samsung/android/sume/core/service/RemoteService$1;
.super Ljava/util/TimerTask;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/service/RemoteService;->onUnbind(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/service/RemoteService;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/service/RemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/RemoteService$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteService;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/service/RemoteService;->stopSelf()V

    return-void
.end method
