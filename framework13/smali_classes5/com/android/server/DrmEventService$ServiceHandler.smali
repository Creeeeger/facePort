.class final Lcom/android/server/DrmEventService$ServiceHandler;
.super Landroid/os/Handler;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/DrmEventService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 109
    iput-object p1, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    .line 110
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    const-string v1, "DrmEventService"

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService : handleMessage msg received"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    if-eqz p1, :cond_2

    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action event :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz v0, :cond_1

    .line 122
    const-string v1, "START_RESOURCE_HELPER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    iget-object v1, v1, Lcom/android/server/DrmEventService;->rchelp:Lcom/android/server/DrmMediaResourceHelper;

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    new-instance v2, Lcom/android/server/DrmMediaResourceHelper;

    invoke-direct {v2}, Lcom/android/server/DrmMediaResourceHelper;-><init>()V

    iput-object v2, v1, Lcom/android/server/DrmEventService;->rchelp:Lcom/android/server/DrmMediaResourceHelper;

    goto :goto_0

    .line 127
    :cond_1
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_2

    const-string v2, "Intent Action is Null :"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
